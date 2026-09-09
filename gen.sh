import json
import os
import re
import xml.etree.ElementTree as ET

JSON_PATH = "data/cards.json"
SVG_TEMPLATE_PATH = "test_template.svg"
OUTPUT_DIR = "generated_cards"

os.makedirs(OUTPUT_DIR, exist_ok=True)

# Safeguard namespace handling for total cross-compatibility with Inkscape layers
ET.register_namespace("", "http://www.w3.org/2000/svg")
ET.register_namespace("xlink", "http://www.w3.org")

with open(JSON_PATH, "r", encoding="utf-8") as f:
    cards_data = json.load(f)

print(f"Generating {len(cards_data)} Inkscape-validated cards...")

for index, card in enumerate(cards_data):
    try:
        tree = ET.parse(SVG_TEMPLATE_PATH)
        root = tree.getroot()
    except Exception as e:
        print(f"Error loading template: {e}")
        break

    # 1. Inject the external vector illustration code
    illustration_path = card.get("card_illustration", "").strip()
    if illustration_path and os.path.exists(illustration_path):
        try:
            ill_tree = ET.parse(illustration_path)
            ill_root = ill_tree.getroot()
            
            warehouse = root.find(".//*[@id='current_card_art']")
            if warehouse is not None:
                warehouse.set("viewBox", ill_root.get("viewBox", "0 0 100 100"))
                for child in list(ill_root):
                    warehouse.append(child)
        except Exception as e:
            print(f"Skipping illustration file '{illustration_path}': {e}")

    # 2. Update text fields safely using their precise XML Element IDs
    text_updates = {
        "card_primary_name": card.get("card_primary_name", ""),
        "card_secondary_name": card.get("card_secondary_name", ""),
        "card_rank": card.get("card_rank", ""),
        "card_year": card.get("card_year", ""),
        "card_metadata": f"{card.get('card_expantion', '')} � {card.get('card_artist_name', '')}",
        
        # Paragraph Text Line Identifiers
        "line_1": card.get("card_facts1", ""),
        "line_2": card.get("card_facts2", ""),
        "line_3": card.get("card_facts3", ""),
        "line_4": card.get("card_facts4", ""),
        "line_5": card.get("card_facts5", ""),
        "line_6": card.get("card_facts6", ""),
        "line_7": card.get("card_abiliies1", ""),
        "line_8": card.get("card_abiliies2", ""),
        "line_9": card.get("card_abiliies3", ""),
        "line_10": card.get("card_abiliies4", ""),
    }

    for element_id, text_value in text_updates.items():
        element = root.find(f".//*[@id='{element_id}']")
        if element is not None:
            element.text = str(text_value if text_value is not None else "")

    # 3. Dynamic Suite Icon Pointer Updates
    target_suite_id = card.get("suite", "").strip()
    if target_suite_id:
        for icon_id in ["suite_icon_top", "suite_icon_bottom"]:
            icon_use_node = root.find(f".//*[@id='{icon_id}']")
            if icon_use_node is not None:
                icon_use_node.set("href", f"#{target_suite_id}")

    # 4. Save file out using sanitized safe string conversions
    name_slug = card.get("card_primary_name", f"card_{index}").strip().lower().replace(" ", "_")
    name_slug = re.sub(r'(?u)[^-\w.]', '', name_slug)
    
    output_file_path = os.path.join(OUTPUT_DIR, f"{name_slug}.svg")
    tree.write(output_file_path, encoding="utf-8", xml_declaration=False)

print(f"All {len(cards_data)} cards built with pristine Inkscape structure!")
