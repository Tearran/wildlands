# Wildlands

## Collect the World's Wildlands. Discover Nature's Connections.

**Wildlands** is a card project based on real landscapes, ecological species, and natural processes. The initial expansion covers the **Tonto Basin Ranger District** of the **Tonto National Forest** in Arizona, USA. Every card in the 52-card core deck represents a real species, habitat, resource, or environmental dynamic of that ecosystem.

---

## Playable 2-Player Prototype (`play.html`)

This repository includes a standalone **2-player vs. NPC tabletop prototype** in [`play.html`](./play.html) built with all 52 Tonto Basin Alpha cards, SVG artwork, a live **Field Guide Inspector**, and a **Classic Poker** card-face toggle.

### How to Run It
* **Quickest:** Download or clone the repo and double-click **`play.html`** in your browser (works directly via `file://` with no build step or server required).
* **Local server:**
  ```bash
  python -m http.server 8765
  ```
  Then open `http://localhost:8765/play.html` (or `http://localhost:8765/index.html` for the full SVG card deck viewer).
* **With a regular deck of cards:** Every rule in `play.html` maps 1-to-1 to a standard 52-card poker deck (plus 2 Jokers for the optional Wild cards).

---

## Deck Architecture

The core system uses the physical and mathematical layout of a standard **52-card poker deck** — **4 suits × 13 cards per suit** — plus **2 optional Myth-vs-Science Jokers**.

### The 4 Suits
* **Dynamics / Disturbances** → **Diamonds (`♦`)** — Cross-landscape weather events, climate shifts, and ecological disturbances that act across habitats, biomass, and wildlife.
* **Foundations** → **Spades (`♠`)** — Habitats and biomes where resources live or grow, forming the ecological base of the landscape.
* **Resources / Biomass** → **Clubs (`♣`)** — Forage plants and **prey guilds / taxonomic families** (e.g., *Leporidae*, *Seed Mice / Heteromyidae*, *Ground Squirrels*, *Lizards*, *Insects*) sustaining the ecosystem.
* **Consumers** → **Hearts (`♥`)** — **Individual wildlife species** (e.g., *Desert Cottontail*, *Black-tailed Jackrabbit*, *Merriam's Kangaroo Rat*, *Bobcat*) feeding across the food web.

### The 13 Cards Per Suit
Numbers **2 through 10**, followed by **Jack (`J`)**, **Queen (`Q`)**, **King (`K`)**, and **Ace (`A`)**.

### Optional Jokers: Myth vs. Real Science
To keep the **52-card core deck 100% real ecology** while still supporting fun "Jokers Wild" gameplay, folklore lives strictly on the **2 Jokers** — with the real biology or physics behind each legend on the card:
* **Jackalope** — Inspired by wild North American rabbits infected with **Shope papillomavirus (CRPV)**, discovered in 1933 by Dr. Richard Shope; CRPV causes horn-like keratin growths and was the first DNA virus proven to cause cancer in mammals, helping launch modern HPV research.
* **Desert Mirage** — Inferior optical mirages caused by steep desert ground-to-air temperature gradients bending sky light upward into phantom lakes.

Pure-science / classroom play can pull the 2 Jokers out cleanly; game play leaves them in.

### Traditional Game Compatibility
Because the system maps card-for-card to a 52-card layout, the physical deck can also be used to play conventional card games (poker, rummy, Go Fish, etc.) independently of Wildlands rules.

---

## 2-Player Game Rules (Default Prototype Rules)

*Playable in [`play.html`](./play.html) against a Tactical or Casual NPC, or at the table with a standard 52/54-card deck.*

### Objective
Be the **first player to complete 2 full Ecosystem Sets** (configurable to *1 Set Instant Win* or *1 Set Survive 1 Round* in **Rules / New Game**).

### Setup
1. **Core Deck:** Shuffle the 52 ecosystem & disturbance cards (`♠`, `♣`, `♥`, `♦`).
2. **Hands:** Deal **3 cards** to each player (hand limit = **3**).
3. **2-Card Playable Discard Market:** Flip **2** `♠/♣/♥` cards face-up in the center to seed **Discard Pile A** and **Discard Pile B**. *(These 2 piles act as your open market fed by discards!)*
4. **Personal Wild (Symmetric Default):** Set **1 Jackalope Joker** face-up beside each player as a once-per-game **True Wild** (zero Joker draw luck, keeping the 52-card draw deck pure science).

### Turn Phases: Draw → Play → Discard
1. **Draw Phase (`Draw 2`):**
   * Draw **2 cards** total — each draw can come from the **Draw Deck** *or* the top `♠/♣/♥/★` card of **Discard Pile A** or **Discard Pile B**.
2. **Play Phase (`Choose 1 Action`):**
   * **Build / Overwrite an Ecosystem Slot:** Your board has **3 unlocked slots** (`♠ Foundation`, `♣ Resource`, `♥ Consumer`). Play any `♠`, `♣`, or `♥` card from your **Hand** *or directly from **Discard Pile A / B*** onto its matching slot — empty **or right on top of an old card** (sending the replaced card face-up to Discard A/B).
   * **Disturb Opponent (`♦`):** Play any **Diamond (`♦`)** from your hand to **discard 1 played card** from your opponent's active board (or switch to `♦ ±1 Rank Only` in Rules).
   * **Refresh (`♦` — "Weather Passes"):** Instead of attacking, discard any `♦` from your hand to **immediately Draw 2 cards** from the Deck, so Diamonds are never dead bricks in hand.
   * **Play Jackalope True Wild (`★`):** Play your Wild as **ANY card** — place it into *any* of your 3 Ecosystem slots (even overwriting an old card), play it as a Wild Disturbance to discard any opponent card on the board, or Refresh (Draw 2).
3. **Discard Phase:**
   * Discard down to **3 cards** in hand. Every discard lands visibly face-up onto **Discard Pile A** or **Discard Pile B** (alternating so the 2 most recent discards remain face-up).

### Completing a Set
* **Wildlands `±1` Ecosystem (Default):** All 3 slots filled (`1♠ + 1♣ + 1♥`) where `♠` is within `±1` rank of `♣` and `♣` is within `±1` rank of `♥` (e.g., `5♠-5♣-5♥`, `4♠-5♣-6♥`, or `5♠-5♣-6♥`).
* **Flexible Rummy (Optional in Rules):** Any 3-of-a-kind across `♠♣♥`, or any 3-card consecutive run (`2-3-4`, `6-7-8`, etc.) across your 3 slots.

When all 3 slots form a valid set, it scores as **1 Completed Set**, clears your active slots, and play continues until one player reaches **2 Completed Sets**.

*(Inside `play.html`, click **Rules / New Game** to live-test variants: `2-Card Discard Market` vs. `4-Card Open Market`, `Any ♦` vs. `♦ ±1`, `1 Jackalope Each` vs. `2 True Wilds in Deck` vs. `Pure 52`, `First to 2` vs. `1 Set Instant` vs. `Survive 1 Round`, and Hand Limit `3` vs. `4`.)*

---

## Card Values: A Natural Effect

Card values do not represent a vertical ranking, power level, or hierarchy. A card's value is its place on a standard sequential track:

`Track: [ 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A ]`

The deck's design goal is to ground every card in reality — the documented scientific consensus on how the species, resources, habitats, and disturbances of the ecosystem actually relate — so real ecological dependencies land close together on the track:

1. **The `±1` Ecosystem Dependency Chain (`♥ → ♣ → ♠`):** In the target architecture, related cards in adjacent ecosystem suits share the same value ($n$) or sit one step apart ($n-1$ or $n+1$):
   * What an individual **Consumer species (`♥`)** eats is aimed within $\pm1$ of it among the **Resources (`♣`)**.
   * Where that **Resource (`♣`)** lives or grows is aimed within $\pm1$ of it among the **Foundations (`♠`)**, the habitats and biomes.
2. **Individual Species (`♥`) vs. Prey Families / Guilds (`♣`):** Consumers (`♥`) represent **individual species** (such as `3♥` Desert Cottontail and `4♥` Black-tailed Jackrabbit), whereas animal Resources (`♣`) intentionally represent **taxonomic families or prey guilds** (such as `K♣` *Leporidae*, `J♣` *Heteromyidae*, and `Q♣` *Ground Squirrels*). That lets the same animals appear individually as herbivores at low ranks and collectively as prey guilds for predators (`Q♥`, `K♥`, `A♥`) at high ranks.
3. **Cross-Landscape Disturbances (`♠ ← ♦ → ♥` and `♣`):** Dynamics/Disturbances (`♦`) sit on the track near habitats where they commonly occur, **not** as strict $\pm1$-only locks. In real ecology—and especially under modern climate change (such as wildfire jumping from chaparral into Sonoran Desert scrub during Tonto National Forest's 2020 Bush Fire)—disturbances are cross-cutting and interchangeable across habitats, acting *into* Foundations (`♠`), Consumers (`♥`), and Resources (`♣`) across the whole basin.

*(Note: Tonto Basin Alpha is an active work-in-progress dataset — not every game-valid $\pm1$ set is yet a verified ecological relationship. See [`SCIENTIFIC_AUDIT.md`](./SCIENTIFIC_AUDIT.md) for the full 52-card verification table and known Alpha exceptions such as `6♣`–`6♠` and `9♣`–`9♠`.)*

```text
   [ Consumers (♥) ] ──eats──► [ Resources (♣) ] ──lives in──► [ Foundations (♠) ]
  (individual species)        (forage/prey guilds)              (habitats & biomes)
          ▲                           ▲                                  ▲
          └─────────── [ Dynamics / Disturbances (♦) ] ──────────────────┘
                 (cross-landscape forces acting across the whole chain)
```

### The Suit-Dependency Architecture

The dependency chain (`♥ → ♣ → ♠`) links individual wildlife species to the forage/prey guilds they consume and the habitats/biomes that sustain them, while **Dynamics (`♦`)** act across the entire chain as landscape-scale weather, climate, and disturbance forces.

### Examples and Evidence

Each example is checked against published sources and labelled by the state of the science:

* **Consensus**: independent studies agree.
* **Divergent**: studies report different results.
* **Limited**: few direct records so far.

| Link | Status | What the sources show |
|---|---|---|
| Kangaroo Rat (2♥) eats Desert Grass seed (2♣) | **Consensus**; the share varies by site | Merriam's kangaroo rat is a granivore that lives almost entirely on seeds, with grama grass seed among its main foods. Grass seed made up 4.5% of the diet in one Texas study and appeared in 74% of cheek pouches near Las Vegas.[^adw-krat][^bradley1971] |
| Cottontail (3♥) eats Desert Grass greens (2♣) | **Consensus**; the share varies by site | Green grass is a major food wherever the diet has been studied. In Maricopa County, Arizona, stomachs held 38% grasses, 41% forbs and 21% shrubs by volume; Texas studies found 32–51% grasses.[^ecotox-cottontail] |
| Desert Grass (2♣) grows in Semidesert Grassland (3♠) | **Consensus** | Black grama and tobosa are the two diagnostic dominant grasses of this community.[^brown-lowe] |
| Desert Grass (2♣) grows in Sonoran Desert Scrub (2♠) | **Consensus** | Grasses are numerous and ecologically important here, beneath the more conspicuous trees and cacti.[^asdm-grasses] |
| Bobcat (Q♥) takes rabbits and hares (K♣) | **Consensus** | In central Arizona's Sonoran Desert, bobcats eat both lagomorphs and rodents, taking more rodents and fewer lagomorphs than coyotes.[^mckinney2007] |
| Coyote (K♥) takes rabbits and hares (K♣) | **Consensus** | In the same study, coyotes ate more lagomorphs than bobcats did, most of all in the wetter winter–spring seasons.[^mckinney2007] |
| Bald Eagle (A♥) takes rabbits and hares (K♣) | **Consensus** *(secondary / seasonal staple)* | Across 1,471 identified prey records at 14 central Arizona nest sites, Bald Eagles took 76% fish and 18% mammals (263 records). Of the 105 mammals identified below class, **71 (67.6%) were Leporidae** (50 desert cottontails, 7 black-tailed jackrabbits, 14 unidentified lagomorphs). Mammals rose to **28%** of total diet in February during turbid runoff and reached **30%–49%** at Salt River breeding areas.[^grubb1995] |

Each card's facts come first, and its place on the track follows from them.

---

## Project Structure

* [`play.html`](./play.html) — Standalone 2-player vs. NPC playable tabletop prototype.
* [`trailer.html`](./trailer.html) — 100% procedural 7-Act motion-graphics trailer with animated desert wildlife, real Wildlands SVG card showcases, live Web Audio orchestral score & SFX, and 1-click `.webm` video export.
* [`SCIENTIFIC_AUDIT.md`](./SCIENTIFIC_AUDIT.md) — Full 52-card scientific audit across the `♥ → ♣ → ♠` dependency chain and cross-landscape `♦` disturbances (`2` through `A`), data-integrity notes, and realignment recommendations.
* [`index.html`](./index.html) — Interactive SVG deck viewer & card downloader.
* [`data/tonto_basin_alpha.json`](./data/tonto_basin_alpha.json) — 52-card Tonto Basin Alpha deck dataset.
* [`card_template.svg`](./card_template.svg) — Master SVG card layout template.
* [`assets/svg/`](./assets/svg/) — Card illustrations and suit icons.

---

[^adw-krat]: Lancaster, E. (2000). *Dipodomys merriami*, Merriam's kangaroo rat. Animal Diversity Web. <https://animaldiversity.org/accounts/Dipodomys_merriami/>
[^bradley1971]: Bradley, W. G. & Mauer, R. A. (1971). Reproduction and food habits of Merriam's kangaroo rat, *Dipodomys merriami*. Data via CalEcotox: <https://ecotox.oehha.ca.gov/citation/reproduction-and-food-habits-merriams-kangaroo-rat-dipodomys-merriami>
[^ecotox-cottontail]: CalEcotox, Audubon's Cottontail (*Sylvilagus audubonii*), citing Turkowski, F. J. (1975), *Dietary adaptability of the desert cottontail*, and Scribner, K. T. & Krysl, L. J. (1982), *Summer foods of the Audubon's cottontail*. <https://ecotox.oehha.ca.gov/species/mammals/rabbits-and-hares-lagomorpha/audubons-cottontail-sylvilagus-audubonii>
[^brown-lowe]: Brown, D. E. & Lowe, C. H. *Biotic Communities of the Southwest* (1980; University of Utah Press, 1994), summarized at <https://saguaro-juniper.com/i_and_i/san_pedro/ecoregions/biotic_comm_cascabel.html>
[^asdm-grasses]: Van Devender, T. R. & Dimmitt, M. A. "Desert Grasses." *A Natural History of the Sonoran Desert*, Arizona-Sonora Desert Museum. <https://www.desertmuseum.org/books/nhsd_grasses.php>
[^mckinney2007]: McKinney, T. & Smith, T. W. (2007). Diets of sympatric bobcats and coyotes during years of varying rainfall in central Arizona. *Western North American Naturalist* 67(1). <https://scholarsarchive.byu.edu/wnan/vol67/iss1/2>
[^grubb1995]: Grubb, T. G. (1995). Food habits of Bald Eagles breeding in the Arizona desert. *Wilson Bulletin* 107(2): 258–274. <https://research.fs.usda.gov/treesearch/20541>
