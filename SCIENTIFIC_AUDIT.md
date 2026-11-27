# Wildlands (Tonto Basin Alpha) — Full 52-Card Scientific Audit

Audit of **[Tearran/wildlands](https://github.com/Tearran/wildlands)** based on [`data/tonto_basin_alpha.json`](./data/tonto_basin_alpha.json) (52 cards, synced with `main` at `cfb5fdf`), [`data/cards.json`](./data/cards.json), and the design rules in [`README.md`](./README.md).

---

## 1. Executive Summary: How Well Does the Science Hold Up?

Wildlands maps a 52-card poker deck onto a **4-suit ecological loop** across a **13-rank track** (`2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A`), with the core hypothesis that ecologically linked cards in neighboring suits land at the same rank ($n$) or within one step ($n \pm 1$):

```mermaid
flowchart LR
    D["Dynamics (♦)<br/>Weather, Geology, Disruption"] -->|"Mixed (6/13 strong)<br/>Several habitat-event offsets"| S["Foundations (♠)<br/>Habitats & Biomes (currently mixed with landforms/dams)"]
    S -->|"Mixed (7/13 strong)<br/>Wet/dry inversions at 6♠ & 9♠"| C["Resources (♣)<br/>Biomass & Prey"]
    C -->|"Very Strong (11/13 strong)<br/>Clean trophic progression"| H["Consumers (♥)<br/>Fauna (Herbivores → Apex)"]
    H -->|"Weakest (~4/13 specific)<br/>Mostly indirect or generic"| D
```

### Core Structural Discovery
The deck's **hidden engine is a trophic gradient running from `2` to `A` in Clubs (`♣`) and Hearts (`♥`)**:
* **Resources (`♣`)** ascend cleanly from **plant biomass** (`2–6`) → **invertebrates, eggs, small reptiles** (`7–9`) → **small-to-medium vertebrate prey** (`10–A`).
* **Consumers (`♥`)** ascend cleanly from **herbivores/granivores** (`2–6`) → **omnivores, insectivores, and nest-raiders** (`7–J`) → **mesopredators and apex predators** (`Q–A`).
* **Intentional double-trophic mirroring**: Four prey groups appear twice—first as **Consumers (`♥`)** eating plants at low ranks, and again as **Resources (`♣`)** eaten by predators at high ranks:
  * `2♥` Kangaroo Rat → `J♣` Seed Mice (*Heteromyidae*)
  * `6♥` Ground Squirrel → `Q♣` Ground Squirrels
  * `3♥` Cottontail & `4♥` Jackrabbit → `K♣` *Leporidae*

**Why mismatches occur:** While **Resources (`♣`) → Consumers (`♥`)** follows a coherent ecological gradient, **Foundations (`♠`)** and **Dynamics (`♦`)** do **not** yet follow a matching environmental axis (such as arid lowland → foothill/chaparral → riparian/aquatic). Instead, wet riparian/reservoir foundations (`6♠`, `9♠`, `K♠`, `A♠`) and dry upland foundations (`2♠`, `8♠`, `Q♠`) are interleaved—and several `♠` cards are currently abiotic landforms or dams rather than biotic habitats/biomes—causing sharp ecological collisions (e.g., xerophytic cacti and jojoba next to permanent-water sycamore forest at `6♠`, and terrestrial lizards next to Roosevelt Lake Dam at `9♠`).

### Evidence Rubric (matching [`README.md`](./README.md))
* **Consensus**: Well-established across independent published studies in the Sonoran Desert / Southwest.
* **Supported (Secondary)**: Documented in the literature, though minor, seasonal, or opportunistic.
* **Divergent**: Literature shows strong species-, site-, or condition-dependent contradictions.
* **Limited**: Sparse direct field documentation or missing local verification.
* **Mismatch**: Ecologically contradicted or functionally unrelated at that rank window.

---

## 2. Complete 52-Card Roster & Scientific Identity

| Rank | Dynamics (`♦`) | Foundations (`♠`) | Resources (`♣`) | Consumers (`♥`) |
|---|---|---|---|---|
| **2** | Climate Shift *(macro-climatic forcing)* | Sonoran Desert Scrub *(Arizona Upland / Lower Colorado scrub)* | Desert Grass *(native Poaceae: Bouteloua, Pleuraphis, etc.)* | Kangaroo Rat (*Dipodomys merriami*) |
| **3** | Flash Flood *(ephemeral convective runoff)* | Semidesert Grassland *(desert-grassland ecotone)* | Bermuda Grass (*Cynodon dactylon* — **non-native**) | Cottontail (*Sylvilagus audubonii*) |
| **4** | Monsoon *(North American Monsoon, Jul–Sep)* | Mesquite Bosque (*Prosopis velutina* floodplain woodland) | Mesquite Beans (*Prosopis velutina* pods/seeds) | Jackrabbit (*Lepus californicus*) |
| **5** | Landslide *(slope failure / debris flow)* | Interior Chaparral *(evergreen sclerophyllous shrubland)* | Prickly Pear (*Opuntia engelmannii / O. phaeacantha*) | Javelina (*Pecari tajacu*) |
| **6** | Wild Fires *(unplanned vegetation combustion)* | Riparian Deciduous Forest *(Cave Creek Canyon spring oasis)* | Jojoba Nut (*Simmondsia chinensis* seeds/browse) | Ground Squirrel (*Xerospermophilus tereticaudus*) |
| **7** | Drought *(multi-season precipitation deficit)* | Open Desert Wash Systems *(ephemeral arroyos)* | Insects *(Class Insecta; 340+ invertebrate spp. at Tonto)* | Striped Skunk (*Mephitis mephitis*) |
| **8** | Population Boom *(biotic irruption)* | Desert Slope *(aspect-driven microclimate)* | Bird Eggs *(avian clutches; labeled "fowl Biomass")* | Gila Monster (*Heloderma suspectum*) |
| **9** | Desert Rain *(bimodal winter + monsoon precip.)* | Roosevelt Lake Dam *(anthropogenic reservoir, 1911)* | Lizards *(Squamata: Phrynosomatidae, Teiidae, etc.)* | Ringtail (*Bassariscus astutus*) |
| **10** | Floral Blooms *(ephemeral wildflower pulses)* | Mountain Crags *(high-elevation Mazatzal / Sierra Ancha)* | Desert Mice (*Peromyscus eremicus, P. boylii, P. maniculatus*) | Roadrunner (*Geococcyx californianus*) |
| **J** | Morning Frost *(radiative / advective freezes)* | Rocky Canyons *(incised sedimentary canyons)* | Seed Mice (*Heteromyidae*: *Chaetodipus*, *Dipodomys*) | Gray Fox (*Urocyon cinereoargenteus*) |
| **Q** | Dust Devil *(fair-weather convective vortex)* | Saguaro Cactus Forest (*Carnegiea gigantea* bajadas) | Ground Squirrels (*Sciuridae*: *Otospermophilus*, *Ammospermophilus*, *Xerospermophilus*) | Bobcat (*Lynx rufus*) |
| **K** | Dust Storm *(monsoon outflow haboob)* | Desert Riparian Scrub *(wash-bottom mesquite/acacia)* | Leporidae (*Sylvilagus audubonii*, *Lepus californicus*) | Coyote (*Canis latrans*) |
| **A** | Arundo Invasion (*Arundo donax* — **non-native**) | Diversion Dam *(managed Salt/Verde riparian corridor)* | Ground Birds (*Callipepla gambelii*, Gambel's quail) | Desert Bald Eagle (*Haliaeetus leucocephalus*) |

---

## 3. Rank-by-Rank Scientific Evaluation (`2` through `A`)

Each rank below tests the **same-rank ($n$) and $\pm 1$ neighbor links** across all four suit boundaries:
1. **`♣ → ♥`**: Does Consumer $n$ eat Resources $\{n-1, n, n+1\}$?
2. **`♠ → ♣`**: Does Resource $n$ live/grow in Foundations $\{n-1, n, n+1\}$?
3. **`♦ → ♠`**: Does Dynamic $n$ directly act on Foundations $\{n-1, n, n+1\}$?
4. **`♥ → ♦`**: Does Consumer $n$ directly respond to or interact with Dynamics $\{n-1, n, n+1\}$?

### Rank `2` — Climate Shift (`♦`) · Sonoran Desert Scrub (`♠`) · Desert Grass (`♣`) · Kangaroo Rat (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `2♥` Kangaroo Rat ← `2♣` Desert Grass, `3♣` Bermuda Grass | `2♣` **Consensus** · `3♣` **Mismatch** | *Dipodomys merriami* is a specialist granivore relying heavily on native desert grass and forb seeds.[^bradley1971] However, kangaroo rats require open, sparse desert ground and avoid dense sod-forming riparian turf like Bermuda grass (`3♣`). |
| **♠ → ♣** | `2♣` Desert Grass ← `2♠` Sonoran Scrub, `3♠` Semidesert Grassland | `2♠` **Consensus** · `3♠` **Consensus** | One of the cleanest habitat matches in the deck: native grasses (*Bouteloua*, *Pleuraphis*, *Aristida*) are diagnostic dominants in semidesert grassland (`3♠`) and important understory cover in Sonoran scrub (`2♠`).[^brown-lowe][^asdm-grasses] |
| **♦ → ♠** | `2♦` Climate Shift → `2♠` Sonoran Scrub, `3♠` Semidesert Grassland | **Consensus** *(very broad)* | Warming and aridification actively shift desert-grassland boundaries (woody shrub encroachment and reduced saguaro recruitment), though climate shift is a deck-wide macro forcing rather than specific to ranks 2–3. |
| **♥ → ♦** | `2♥` Kangaroo Rat → `2♦` Climate Shift, `3♦` Flash Flood | **Supported** *(indirect)* | Climate-driven precipitation shifts control seed crops; flash floods can inundate low-lying burrows. |

### Rank `3` — Flash Flood (`♦`) · Semidesert Grassland (`♠`) · Bermuda Grass (`♣`) · Cottontail (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `3♥` Cottontail ← `2♣` Desert Grass, `3♣` Bermuda Grass, `4♣` Mesquite Beans | `2♣` **Consensus** · `3♣` **Supported** · `4♣` **Consensus** | *Sylvilagus audubonii* eats 32–51% grasses by volume in AZ/TX studies, grazes Bermuda grass where moisture supports it, and consumes mesquite pods/twigs in dry seasons.[^ecotox-cottontail] |
| **♠ → ♣** | `3♣` Bermuda Grass ← `2♠` Sonoran Scrub, `3♠` Semidesert Grassland, `4♠` Mesquite Bosque | `2♠` **Mismatch** · `3♠` **Mismatch** · `4♠` **Supported** | *Cynodon dactylon* is an **introduced, moisture-dependent** warm-season sod grass. It cannot persist in dry upland desert scrub (`2♠`) or intact semidesert bunchgrass (`3♠`), though it readily invades moist floodplain soils beneath mesquite bosques (`4♠`). |
| **♦ → ♠** | `3♦` Flash Flood → `2♠` Sonoran Scrub, `3♠` Semidesert Grassland, `4♠` Mesquite Bosque | `4♠` **Consensus** · `2♠/3♠` **Weak** | Flash floods scour and recharge floodplain **Mesquite Bosques (`4♠`)**. However, `3♦`'s own text centers on **dry desert washes**—which sit four ranks away at `7♠` (`Open Desert Wash Systems`). |
| **♥ → ♦** | `3♥` Cottontail → `2♦` Climate Shift, `3♦` Flash Flood, `4♦` Monsoon | `4♦` **Consensus** · `3♦` **Supported** | Summer monsoon green-up (`4♦`) directly fuels cottontail reproduction and forage hydration; flash floods disrupt wash-margin burrows. |

### Rank `4` — Monsoon (`♦`) · Mesquite Bosque (`♠`) · Mesquite Beans (`♣`) · Jackrabbit (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `4♥` Jackrabbit ← `3♣` Bermuda Grass, `4♣` Mesquite Beans, `5♣` Prickly Pear | `3♣` **Supported** · `4♣` **Consensus** · `5♣` **Consensus** | *Lepus californicus* shifts from spring grasses to heavy browse on velvet mesquite pods/twigs (`4♣`) and prickly pear pads/fruit (`5♣`) for dry-season water and calories.[^jackrabbit-diet] |
| **♠ → ♣** | `4♣` Mesquite Beans ← `3♠` Semidesert Grassland, `4♠` Mesquite Bosque, `5♠` Interior Chaparral | `3♠` **Consensus** · `4♠` **Consensus** · `5♠` **Limited** | Exact namesake match at `4♠`, plus strong overlap in `3♠` (velvet mesquite regularly occurs/encroaches in semidesert grassland). Minimal presence in higher-elevation evergreen interior chaparral (`5♠`). |
| **♦ → ♠** | `4♦` Monsoon → `3♠` Semidesert Grassland, `4♠` Mesquite Bosque, `5♠` Interior Chaparral | **Consensus** *(all 3)* | Strong hydro-climatic triad: summer monsoon drives C4 warm-season grasses in `3♠`, recharges alluvial water tables for `4♠`, and delivers summer storms and lightning to `5♠`. (Note: card text again points to washes at `7♠`.) |
| **♥ → ♦** | `4♥` Jackrabbit → `3♦` Flash Flood, `4♦` Monsoon, `5♦` Landslide | `4♦` **Consensus** · `5♦` **Mismatch** | Monsoon green-up drives forage availability; open-flat jackrabbits have essentially no ecological relationship to steep-slope landslides (`5♦`). |

### Rank `5` — Landslide (`♦`) · Interior Chaparral (`♠`) · Prickly Pear (`♣`) · Javelina (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `5♥` Javelina ← `4♣` Mesquite Beans, `5♣` Prickly Pear, `6♣` Jojoba Nut | `4♣` **Consensus** · `5♣` **Consensus** · `6♣` **Divergent** *(browse vs. nut)* | **Top-tier consumer triad.** Prickly pear (`5♣`) is the #1 defining staple of Arizona *Pecari tajacu* (often 50–80% of diet, with specialized renal tolerance for oxalic acid); mesquite pods (`4♣`) are key seasonal mast.[^eddy1961] On `6♣`, Tonto/Three Bar studies confirm javelina eat jojoba **foliage/browse** (and occasionally mast), though mature seeds contain simmondsin.[^jojoba-asdm] |
| **♠ → ♣** | `5♣` Prickly Pear ← `4♠` Mesquite Bosque, `5♠` Interior Chaparral, `6♠` Riparian Deciduous Forest | `4♠` **Supported** · `5♠` **Consensus** · `6♠` **Mismatch** | *Opuntia engelmannii* and *O. phaeacantha* thrive in interior chaparral (`5♠`) and bosque edges (`4♠`), but **do not grow inside shaded, permanent-water sycamore-ash-walnut riparian forest (`6♠`)**. Meanwhile, their core habitats (`2♠` Scrub, `8♠` Slope, `Q♠` Saguaro Forest) are far away. |
| **♦ → ♠** | `5♦` Landslide → `4♠` Mesquite Bosque, `5♠` Interior Chaparral, `6♠` Riparian Deciduous Forest | `5♠` **Consensus** · `6♠` **Consensus** · `4♠` **Mismatch** | Steep interior chaparral foothills (`5♠`) and steep-walled Cave Creek Canyon (`6♠`) experience monsoon and post-fire debris flows. Flat alluvial mesquite bosques (`4♠`) are depositional floodplains, not landslide terrain. |
| **♥ → ♦** | `5♥` Javelina → `4♦` Monsoon, `5♦` Landslide, `6♦` Wild Fires | `6♦` **Consensus** · `4♦` **Supported** · `5♦` **Mismatch** | Wildfires (`6♦`) severely impact Tonto Basin javelina by burning prickly pear stands and thermal cover; landslides (`5♦`) have no specialized link. |

### Rank `6` — Wild Fires (`♦`) · Riparian Deciduous Forest (`♠`) · Jojoba Nut (`♣`) · Ground Squirrel (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `6♥` Ground Squirrel ← `5♣` Prickly Pear, `6♣` Jojoba Nut, `7♣` Insects | `5♣` **Supported** · `6♣` **Divergent / Mismatch** · `7♣` **Consensus** | **Major scientific catch.** *Xerospermophilus tereticaudus* eats ~80% high-moisture green shoots/succulents (including cactus pulp `5♣`), ~15% seeds, and ~5–15% insects (`7♣`). However, **jojoba seeds (`6♣`) contain simmondsin and liquid wax esters** that deter or cause severe weight loss in nearly all rodents—**Bailey's pocket mouse (*Chaetodipus baileyi*) is the famous specialist exception** (`J♣` Heteromyidae), NOT round-tailed ground squirrels.[^sherbrooke1976] |
| **♠ → ♣** | `6♣` Jojoba Nut ← `5♠` Interior Chaparral, `6♠` Riparian Deciduous Forest, `7♠` Open Desert Wash | `5♠` **Consensus** · `6♠` **Mismatch** · `7♠` **Consensus** | **Sharpest exact-rank habitat collision in the deck.** Jojoba (*Simmondsia chinensis*) is a xerophytic shrub of rocky bajadas, lower chaparral (`5♠`), and wash margins (`7♠`)—its own card text places it in *Sonoran Desert scrub*, directly contradicting permanent-water deciduous forest at `6♠`. |
| **♦ → ♠** | `6♦` Wild Fires → `5♠` Interior Chaparral, `6♠` Riparian Deciduous Forest, `7♠` Open Desert Wash | `5♠` **Consensus** · `6♠` **Divergent** · `7♠` **Weak** | Interior chaparral (`5♠`) is a classic crown-fire ecosystem. Wet riparian forest (`6♠`) historically acted as a firebreak (though drought/invasive fuels now carry devastating fires into canyons). Notably, `6♦`'s text warns about **cacti/Sonoran Desert scrub** (`2♠`, `Q♠`), which sit 4–6 ranks away. |
| **♥ → ♦** | `6♥` Ground Squirrel → `5♦` Landslide, `6♦` Wild Fires, `7♦` Drought | `7♦` **Consensus** · `5♦` **Mismatch** | `6♥` → `7♦` is a **textbook physiological match**: round-tailed ground squirrels enter summer **aestivation** specifically to survive dry-season heat and drought.[^adw-rtgs] Conversely, flat sandy-basin squirrels never interact with steep-slope landslides (`5♦`). |

### Rank `7` — Drought (`♦`) · Open Desert Wash Systems (`♠`) · Insects (`♣`) · Striped Skunk (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `7♥` Striped Skunk ← `6♣` Jojoba Nut, `7♣` Insects, `8♣` Bird Eggs | `6♣` **Mismatch** · `7♣` **Consensus** · `8♣` **Consensus** | Insects (`7♣`, 50–70%+ of diet) and ground-nesting bird eggs (`8♣`) are textbook striped skunk foods.[^adw-skunk] Skunks do not consume toxic jojoba seeds (`6♣`). *(Note: `7♥`'s card text oddly omits insects altogether!)* |
| **♠ → ♣** | `7♣` Insects ← `6♠` Riparian Forest, `7♠` Open Desert Wash, `8♠` Desert Slope | **Consensus** *(all 3)* | High terrestrial arthropod diversity across all three foundations (especially riparian woodland and washes), though "Insects" is broad enough to fit any terrestrial rank. |
| **♦ → ♠** | `7♦` Drought → `6♠` Riparian Forest, `7♠` Open Desert Wash, `8♠` Desert Slope | **Consensus** *(all 3)* | Strong triad: prolonged drought dewaters Cave Creek's spring-fed riparian forest (`6♠`), suppresses wash moisture/vegetation (`7♠`), and induces severe plant die-back on exposed slopes (`8♠`). |
| **♥ → ♦** | `7♥` Striped Skunk → `6♦` Wild Fires, `7♦` Drought, `8♦` Population Boom | `7♦` **Supported** · `8♦` **Supported** | In arid Arizona, *Mephitis mephitis* avoids hyper-arid flats and concentrates along watered drainages during drought (`7♦`); it opportunistically exploits insect/rodent booms (`8♦`). |

### Rank `8` — Population Boom (`♦`) · Desert Slope (`♠`) · Bird Eggs (`♣`) · Gila Monster (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `8♥` Gila Monster ← `7♣` Insects, `8♣` Bird Eggs, `9♣` Lizards | `7♣` **Limited/Rare** · `8♣` **Consensus** · `9♣` **Divergent** | **Exact match `8♣ = 8♥` is textbook**: *Heloderma suspectum* is a specialized nest-raider of ground-nesting bird eggs (`8♣`), reptile eggs, and neonate mammals.[^beck2005] Adult active lizards (`9♣`) and insects (`7♣`) are rare/incidental—the reptile component of its diet is predominantly **reptile eggs**, not fast-moving adult lizards. |
| **♠ → ♣** | `8♣` Bird Eggs ← `7♠` Open Desert Wash, `8♠` Desert Slope, `9♠` Roosevelt Lake Dam | `7♠` **Consensus** · `8♠` **Consensus** · `9♠` **Supported** | Washes (`7♠`) and desert slopes (`8♠`) host abundant ground- and shrub-nesting birds (quail, doves, thrashers, cactus wrens). Lake Roosevelt's fluctuating riparian shoreline (`9♠`) hosts marsh/riparian nesters (including Southwestern Willow Flycatcher), though not the concrete dam itself. |
| **♦ → ♠** | `8♦` Population Boom → `7♠` Desert Wash, `8♠` Desert Slope, `9♠` Roosevelt Lake Dam | **Mismatch / Category tension** | Population booms are **biotic demographic phenomena** that act on **Resources (`♣`) and Consumers (`♥`)**, not directly on landforms (`8♠`) or concrete dams (`9♠`). |
| **♥ → ♦** | `8♥` Gila Monster → `7♦` Drought, `8♦` Population Boom, `9♦` Desert Rain | `8♦` **Divergent** · `9♦` **Consensus** | Gila monsters themselves are slow-reproducing, K-selected reptiles that **do not boom**, though they feast on prey nests during spring prey booms (`8♦`). Surface activity and foraging strongly track **summer desert rains (`9♦`)**. |

### Rank `9` — Desert Rain (`♦`) · Roosevelt Lake Dam (`♠`) · Lizards (`♣`) · Ringtail (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `9♥` Ringtail ← `8♣` Bird Eggs, `9♣` Lizards, `10♣` Desert Mice | `8♣` **Supported** · `9♣` **Consensus** · `10♣` **Consensus** | *Bassariscus astutus* is a nocturnal canyon omnivore-predator taking *Peromyscus* mice (`10♣`), crevice lizards (`9♣`), and raided bird nests/eggs (`8♣`), alongside insects (`7♣`) and canyon fruits (hackberry/prickly pear).[^adw-ringtail] |
| **♠ → ♣** | `9♣` Lizards ← `8♠` Desert Slope, `9♠` Roosevelt Lake Dam, `10♠` Mountain Crags | `8♠` **Consensus** · `9♠` **Mismatch** · `10♠` **Supported** | **Major exact-rank dislocation.** Sun-warmed rocky slopes (`8♠`) and lower rocky crags (`10♠`) are classic lizard habitats, but **Roosevelt Lake Dam (`9♠`)** is an open-water reservoir—an aquatic foundation paired with terrestrial lizards (`9♣`) and a dry-canyon climber (`9♥`). |
| **♦ → ♠** | `9♦` Desert Rain → `8♠` Desert Slope, `9♠` Roosevelt Lake Dam, `10♠` Mountain Crags | **Consensus** *(all 3)* | **Very strong hydro-meteorological triad**: bimodal winter + monsoon rain (`9♦`) is amplified by orographic lift on the Mazatzal/Sierra Ancha crags (`10♠`), partitions into runoff/infiltration by slope aspect (`8♠`), and directly drives Lake Roosevelt inflows and shoreline fluctuations (`9♠`). |
| **♥ → ♦** | `9♥` Ringtail → `8♦` Population Boom, `9♦` Desert Rain, `10♦` Floral Blooms | `8♦` **Supported** · `9♦/10♦` **Indirect** | Ringtails respond numerically/dietarily to rodent booms (`8♦`), while rain and blooms drive their prey base indirectly. |

### Rank `10` — Floral Blooms (`♦`) · Mountain Crags (`♠`) · Desert Mice (`♣`) · Roadrunner (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `10♥` Roadrunner ← `9♣` Lizards, `10♣` Desert Mice, `J♣` Seed Mice | **Consensus** *(all 3)* | **Textbook predator-prey triad.** *Geococcyx californianus* relies heavily on lizards (`9♣`) plus snakes, large insects, *Peromyscus* mice (`10♣`), and heteromyid rodents (`J♣`).[^adw-roadrunner] |
| **♠ → ♣** | `10♣` Desert Mice (*Peromyscus*) ← `9♠` Roosevelt Lake Dam, `10♠` Mountain Crags, `J♠` Rocky Canyons | `9♠` **Weak** · `10♠` **Consensus** · `J♠` **Consensus** | Brush mice (*P. boylii*), cactus mice (*P. eremicus*), and deer mice (*P. maniculatus*) are dominant rodents of rocky canyons (`J♠`) and montane crags (`10♠`); weak connection to an aquatic reservoir (`9♠`). |
| **♦ → ♠** | `10♦` Floral Blooms → `9♠` Roosevelt Lake Dam, `10♠` Mountain Crags, `J♠` Rocky Canyons | `9♠` **Mismatch** · `10♠` **Mismatch** · `J♠` **Limited** | **Habitat mismatch.** Classic Sonoran Desert superblooms (from decade-dormant annual seed banks, as described on `10♦`) happen on **low desert basins/bajadas (`2♠`, `8♠`, `Q♠`)**, not high-elevation barren mountain crags (`10♠`) or concrete dams (`9♠`). |
| **♥ → ♦** | `10♥` Roadrunner → `9♦` Desert Rain, `10♦` Floral Blooms, `J♦` Morning Frost | `J♦` **Consensus** · `9♦/10♦` **Indirect** | **Hidden physiological gem**: `10♥` → `J♦` reflects the famous Ohmart & Lasiewski (1971) discovery that roadrunners survive cold desert **morning frosts** via regulated nocturnal hypothermia followed by black-skin solar basking.[^ohmart1971] |

### Rank `J` — Morning Frost (`♦`) · Rocky Canyons (`♠`) · Seed Mice (`♣`) · Gray Fox (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `J♥` Gray Fox ← `10♣` Desert Mice, `J♣` Seed Mice, `Q♣` Ground Squirrels | **Consensus** *(all 3)* | **Textbook triad.** *Urocyon cinereoargenteus* preys across *Peromyscus* (`10♣`), heteromyids (`J♣`), and rock/antelope ground squirrels (`Q♣`), supplemented heavily by desert fruits (hackberry, juniper, prickly pear) and lagomorphs.[^usda-grayfox] |
| **♠ → ♣** | `J♣` Seed Mice (*Heteromyidae*) ← `10♠` Mountain Crags, `J♠` Rocky Canyons, `Q♠` Saguaro Cactus Forest | `10♠` **Mismatch** · `J♠` **Divergent** · `Q♠` **Consensus** | **Genus-split nuance**: Bailey's pocket mouse (*Chaetodipus baileyi*) and kangaroo rats (*Dipodomys*) thrive in saguaro bajadas/basins (`Q♠`), and rock pocket mouse (*C. intermedius*) thrives in rocky canyons (`J♠`), but heteromyids are low-elevation desert rodents that do **not** occupy high montane crags (`10♠`), and *Dipodomys* avoids rocky canyons. |
| **♦ → ♠** | `J♦` Morning Frost → `10♠` Mountain Crags, `J♠` Rocky Canyons, `Q♠` Saguaro Cactus Forest | **Consensus** *(all 3)* | **Arguably the single best Dynamics → Foundations triad in the deck.** High-elevation cold (`10♠`), canyon cold-air drainage (`J♠`), and catastrophic freeze limits on **Saguaro Cactus Forests (`Q♠`)** are landmark Sonoran Desert bioclimatology (Steenbergh & Lowe 1977).[^steenbergh1977] |
| **♥ → ♦** | `J♥` Gray Fox → `10♦` Floral Blooms, `J♦` Morning Frost, `Q♦` Dust Devil | **Weak / Generic** | Gray foxes are broad-niche mesocarnivores with no specialized ecological coupling to frost, blooms, or midday dust devils. |

### Rank `Q` — Dust Devil (`♦`) · Saguaro Cactus Forest (`♠`) · Ground Squirrels (`♣`) · Bobcat (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `Q♥` Bobcat ← `J♣` Seed Mice, `Q♣` Ground Squirrels, `K♣` Leporidae | **Consensus** *(all 3)* | **Textbook triad.** Central Arizona diet studies confirm *Lynx rufus* depends on rodents (heteromyids `J♣`, woodrats, ground squirrels `Q♣`) and lagomorphs (`K♣`).[^mckinney2007] |
| **♠ → ♣** | `Q♣` Ground Squirrels ← `J♠` Rocky Canyons, `Q♠` Saguaro Cactus Forest, `K♠` Desert Riparian Scrub | **Consensus** *(all 3)* | **Excellent family-level fit**: rock squirrels (*Otospermophilus variegatus*) dominate `J♠` and `K♠`, while Harris's antelope squirrels (*Ammospermophilus harrisii*) and round-tailed ground squirrels (*X. tereticaudus*) occupy `Q♠` and desert basins. |
| **♦ → ♠** | `Q♦` Dust Devil → `J♠` Rocky Canyons, `Q♠` Saguaro Cactus Forest, `K♠` Desert Riparian Scrub | `Q♠` **Supported** *(basins)* · `J♠/K♠` **Mismatch** | Dust devils require intense daytime heating over flat, open alluvial basins (matching `Q♠`'s subtitle *"Low Desert Basins"*), whereas shaded canyons (`J♠`) and cooler vegetated riparian scrub (`K♠`) suppress convective vortices. |
| **♥ → ♦** | `Q♥` Bobcat → `J♦` Morning Frost, `Q♦` Dust Devil, `K♦` Dust Storm | **Mismatch** | Bobcats are primarily nocturnal/crepuscular; dust devils are strictly midday fair-weather thermals—virtually zero ecological overlap. |

### Rank `K` — Dust Storm (`♦`) · Desert Riparian Scrub (`♠`) · Leporidae (`♣`) · Coyote (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `K♥` Coyote ← `Q♣` Ground Squirrels, `K♣` Leporidae, `A♣` Ground Birds | `Q♣` **Consensus** · `K♣` **Consensus** · `A♣` **Supported** | *Canis latrans* is the premier predator of lagomorphs (`K♣`, more so than bobcats in central AZ) and ground squirrels (`Q♣`), and opportunistically takes Gambel's quail (`A♣`) alongside cactus/mesquite fruit and carrion.[^mckinney2007] |
| **♠ → ♣** | `K♣` Leporidae ← `Q♠` Saguaro Cactus Forest, `K♠` Desert Riparian Scrub, `A♠` Diversion Dam | `Q♠` **Consensus** · `K♠` **Consensus** · `A♠` **Weak** | Both desert cottontails and jackrabbits thrive in saguaro bajadas (`Q♠`), and cottontails depend heavily on dense desert riparian scrub (`K♠`). Minimal direct coupling to an aquatic diversion dam (`A♠`). |
| **♦ → ♠** | `K♦` Dust Storm → `Q♠` Saguaro Cactus Forest, `K♠` Desert Riparian Scrub, `A♠` Diversion Dam | `Q♠` **Supported** · `K♠` **Supported** · `A♠` **Weak** | Monsoon outflow storms/haboobs sweep low desert basins (`Q♠`, toppling old saguaros and redistributing eolian dust) and deposit dust trapped by riparian scrub canopies (`K♠`), though haboobs originate primarily on dry disturbed flats/playas rather than wet corridors. |
| **♥ → ♦** | `K♥` Coyote → `Q♦` Dust Devil, `K♦` Dust Storm, `A♦` Arundo Invasion | **Weak / Generic** | Coyotes shelter during storms and travel river corridors, but none of these three dynamics specifically governs coyote ecology. |

### Rank `A` — Arundo Invasion (`♦`) · Diversion Dam (`♠`) · Ground Birds (`♣`) · Desert Bald Eagle (`♥`)
| Axis | Window Tested | Evidence Status | Scientific Assessment |
|---|---|---|---|
| **♣ → ♥** | `A♥` Desert Bald Eagle ← `K♣` Leporidae, `A♣` Ground Birds (Gambel's Quail) | `K♣` **Consensus** *(secondary / seasonal staple)* · `A♣` **Supported (Minor)** | Grubb (1995, Table 1) recorded 1,471 identified prey items across 14 central Arizona nests: **76% fish (1,118)**, **18% mammals (263)**, **4% birds (59)**, and **2% reptiles/amphibians (31)**.[^grubb1995] Crucially, **Leporidae dominated identified mammalian prey (71 of 105 = 67.6%: 50 desert cottontails, 7 black-tailed jackrabbits, 14 unidentified lagomorphs)**, rising to **28% of all prey in February** (turbid spring runoff) and **30%–49% at Salt River/Tonto-area sites** (`76` and `Pinal`). Birds totaled 4%–12% across Arizona studies (22 waterfowl + 37 other birds in Grubb 1995, with **Gambel's Quail** explicitly confirmed in Table 1 footnote *d*). Within the deck's **no-fish terrestrial constraint**, `K♣ Leporidae` is the #1 scientifically supported prey link for `A♥`, while `A♣` is accurate as a minor/opportunistic link (waterfowl would be stronger if aquatic birds are allowed). |
| **♠ → ♣** | `A♣` Ground Birds (Gambel's Quail) ← `K♠` Desert Riparian Scrub, `A♠` Diversion Dam | `K♠` **Consensus** · `A♠` **Weak / Mismatch** | *Callipepla gambelii* relies heavily on desert riparian scrub (`K♠`, mesquite/catclaw washes) for shade, roosting, and moisture, but is an arid-scrub terrestrial gamebird, not an aquatic diversion-dam bird. |
| **♦ → ♠** | `A♦` Arundo Invasion → `K♠` Desert Riparian Scrub, `A♠` Diversion Dam | **Consensus** *(both)* | **10/10 Tonto / Salt & Verde River realism.** Giant reed (*Arundo donax*) explosively colonizes flow-altered riverbanks below diversion dams (`A♠`) and displaces native desert riparian scrub (`K♠`) via flood-dispersed rhizome fragments. |
| **♥ → ♦** | `A♥` Desert Bald Eagle → `K♦` Dust Storm, `A♦` Arundo Invasion | `A♦` **Consensus** *(conservation threat)* | **Strong real-world conservation link**: dense *Arundo donax* monocultures along the Salt and Verde Rivers choke native cottonwood-willow nest/perch trees, alter aquatic foraging margins, and fuel high-intensity riparian wildfires that destroy Bald Eagle nesting habitat. |

---

## 4. Suit-Level Scientific, Taxonomic & Data Integrity Findings

> [!WARNING]
> Beyond rank adjacency, six scientific or structural inconsistencies appear inside the card definitions themselves ([`data/tonto_basin_alpha.json`](./data/tonto_basin_alpha.json) and [`data/cards.json`](./data/cards.json)).

1. **Non-Native Species Split Across Suits (`3♣` vs. `A♦`)**
   * **Bermuda Grass (`3♣`, *Cynodon dactylon*)** is an **introduced, invasive Eurasian/African grass** treated as a standard Resource (`♣`), while **Arundo Invasion (`A♦`, *Arundo donax*)** is another introduced invasive riparian grass treated as a Dynamic (`♦`). Replacing `3♣` with a native forage plant (e.g., **Desert Forbs / Globemallow** or **Catclaw Acacia / Saltbush**) keeps all `♣` cards native AND upgrades `2♠`/`3♠` habitat compatibility from Mismatch to Consensus.
2. **Jojoba Toxicity Inaccuracy (`6♣`)**
   * `6♣ Jojoba Nut` claims *"Its nuts are eaten by ground squirrels, mice, rabbits, birds, and other mammals."* Scientifically, mature jojoba seeds contain **simmondsin** and liquid wax esters toxic/deterrent to most rodents; **Bailey's pocket mouse (*Chaetodipus baileyi*)** is the iconic specialist consumer, while mule deer and javelina mainly browse jojoba **foliage/twigs**.[^sherbrooke1976]
3. **Missing Primary Diet on Card Text (`7♥` Striped Skunk)**
   * `7♥`'s fact text says *"eat seeds, roots, berries, and small mammals"*, completely omitting **insects** (its #1 food and its exact rank partner `7♣`) and **bird eggs** (`8♣`).
4. **Local Biogeography Nuance (`6♥` Round-tailed Ground Squirrel)**
   * `6♥` uses `consumers_round_tailed_ground_squirrel.svg` (*Xerospermophilus tereticaudus*), which favors low, flat sandy desert basins. On the rocky slopes of Tonto National Monument itself, **Harris's antelope squirrel (*Ammospermophilus harrisii*)** and **Rock squirrel (*Otospermophilus variegatus*)** are the primary resident ground squirrels (though *X. tereticaudus* occurs in lower sandy Arizona desert basins).
5. **Foundations (`♠`) & Dynamics (`♦`) Category Mixing**
   * **Foundations (`♠`)** are intended to represent **habitats and biomes** where consumed resources live or grow—not landforms or dams. Currently the suit mixes 7 true biotic communities (`2♠–6♠`, `Q♠`, `K♠`) with 4 abiotic landforms (`7♠`, `8♠`, `10♠`, `J♠`) and 2 man-made dams (`9♠`, `A♠`). Reframing those 6 slots as true Tonto Basin habitats/biomes (e.g., *Desert Wash Woodland*, *Arizona Upland Foothill Scrub*, *Reservoir Shoreline Marsh*, *Pinyon-Juniper Woodland*, *Canyon Woodland*, *Cottonwood-Willow Gallery Forest*) will unify the entire suit cleanly.
   * **Dynamics (`♦`)** mixes abiotic climate/weather/geomorphology (10 cards), a biotic demographic event (`8♦ Population Boom`), a botanical phenology pulse (`10♦ Floral Blooms`), and a biological invasion (`A♦ Arundo Invasion`). Also note `8♦` is subtitled *"Ecosystem reset"* while `J♦` Morning Frost, `Q♦` Dust Devil, and `K♦` Dust Storm are subtitled *"Ecosystem refresh"*.
6. **JSON Naming & Asset Bugs Spotted**
   * **Inconsistent taxonomy/casing**: Only 4 of 13 Consumers include Latin binomials in `card_secondary_name` (`3♥`, `J♥`, `Q♥`, `K♥`); `K♣` uses a Latin family (`Leporidae`) as its primary name while all other Clubs use common names; `8♣ Bird eggs` is labeled `"fowl Biomass"` instead of `"Avian Biomass"`.
   * **Data defects**: `2♠ Sonoran Desert Scrub` has empty `fact_paragraph` and `abilities_paragraph` in both JSON files (only the line-split fields are populated); `9♣ Lizards` has an empty `card_primary_name` in [`data/cards.json`](./data/cards.json); `2♦ Climate Shift` and `7♦ Drought` share the same SVG (`disturbances_mega_drought.svg`) while `disturbances_extreme_heat.svg` and `foundations_desert_senna.svg` go unused; `10♦ Floral Blooms` references misspelled `assets/svg/disterbances_bloom.svg` even though `disturbances_bloom.svg` exists.

---

## 5. High-Impact Scientific Realignment Opportunities

Without redesigning the 52-card system (and honoring the **no-fish** constraint and **habitats/biomes-only Foundations** rule), **6 targeted moves** would raise scientific alignment dramatically across all four axes:

| Priority | Current Issue | Suggested Scientific Fix | Ecological Gain |
|---|---|---|---|
| **1 (Highest)** | **Foundations (`♠`)** currently include 4 landforms (`7♠`, `8♠`, `10♠`, `J♠`) and 2 dams (`9♠`, `A♠`), and wet/dry habitats collide (`6♠` Riparian Forest vs. `5♣/6♣` Cactus/Jojoba; `9♠` Dam vs. `9♣` Lizards). | Reframe all 13 `♠` cards strictly as **habitats/biomes**, cluster the **riparian/wetland biomes** at one end of the track (e.g., `K♠–A♠`), and place **xerophytic upland scrub/bajada habitats** in the `5♠–6♠` cactus/jojoba band. | Aligns every `♠` card to the habitats/biomes rule and fixes the deck's two worst exact-rank habitat collisions (`6♠`/`6♣` and `9♠`/`9♣`) simultaneously. |
| **2 (High)** | Under the **no-fish constraint**, `K♣ Leporidae` is a proven Bald Eagle secondary/seasonal staple (`67.6%` of identified mammals in Grubb 1995), while `A♣` **Gambel's Quail** is only a minor prey item and mismatches riparian `A♠`. | Keep `K♣ Leporidae` adjacent to `A♥`, and optionally broaden `A♣` to **Waterfowl & Ground Birds** (e.g., *Coots, Ducks & Quail*)—still zero fish, while matching Grubb (1995)'s avian records and riparian `A♠`. | Locks `A♦` Arundo Invasion → `A♠` Riparian Corridor → `A♣` Waterfowl/Birds → `A♥` Desert Bald Eagle into a strong **4-suit loop** without adding fish. |
| **3 (High)** | `3♣` Bermuda Grass is **non-native** and fails in dry `2♠`/`3♠` habitats. | Swap `3♣` to a native forage guild (e.g., **Desert Forbs / Wildflowers** or **Saltbush / Shrub Browse**). | Keeps all `♣` resources native and aligns `2♠/3♠` → `3♣` → `2♥/3♥/4♥`. |
| **4 (Medium)** | `6♣` Jojoba Nut toxicity contradicts `6♥` Ground Squirrel and `7♥` Striped Skunk. | Either (a) reframe `6♣` as **Desert Shrub Browse / Catclaw & Jojoba** (accurately reflecting javelina/deer browse + Bailey's pocket mouse seed specialist) or (b) swap `6♣` to **Desert Seeds / Cactus Fruit** while moving Jojoba near `J♣` (*Heteromyidae* / Bailey's pocket mouse). | Aligns chemical ecology with Sherbrooke (1976) and removes the skunk–jojoba mismatch. |
| **5 (Medium)** | `3♦` Flash Flood (`7♠` Wash) and `6♦` Wild Fires (`2♠`/`5♠`/`Q♠`) sit far from the habitats named in their own card text; `10♦` Floral Blooms sits on `10♠` Mountain Crags. | Move **Flash Flood** adjacent to wash habitat, **Floral Blooms** adjacent to `Sonoran Desert Scrub` / upland desert, and keep **Wild Fires** adjacent to `Interior Chaparral` + `Saguaro / Desert Scrub`. | Makes `♦ → ♠` card text and track position agree directly. |
| **6 (Easy Text Fix)** | `7♥` Striped Skunk omits insects; `K♣` uses Latin name; `8♣` says `"fowl Biomass"`; `2♠` missing paragraph fields; `10♦` SVG filename typo. | Update card copy & JSON consistency in [`data/tonto_basin_alpha.json`](./data/tonto_basin_alpha.json) and sync [`data/cards.json`](./data/cards.json). | Immediate scientific accuracy and data-hygiene upgrade with zero mechanical change. |

---

## 6. Key Scientific References

[^bradley1971]: Bradley, W. G. & Mauer, R. A. (1971). Reproduction and food habits of Merriam's kangaroo rat, *Dipodomys merriami*. *Journal of Mammalogy* 52(3): 497–507.
[^brown-lowe]: Brown, D. E. & Lowe, C. H. (1980 / 1994). *Biotic Communities: Southwestern United States and Northwestern Mexico*. University of Utah Press.
[^asdm-grasses]: Van Devender, T. R. & Dimmitt, M. A. "Desert Grasses." *A Natural History of the Sonoran Desert*, Arizona-Sonora Desert Museum.
[^ecotox-cottontail]: Turkowski, F. J. (1975). Dietary adaptability of the desert cottontail (*Sylvilagus audubonii*). *Journal of Wildlife Management* 39(4): 748–756.
[^jackrabbit-diet]: Hayden, P. (1966) & Arizona-Sonora Desert Museum species account for Black-tailed Jackrabbit (*Lepus californicus*); USDA Forest Service FEIS (*Lepus californicus*).
[^eddy1961]: Eddy, T. A. (1961). Foods and feeding patterns of the collared peccary in southern Arizona. *Journal of Wildlife Management* 25(3): 248–257; Three Bar Wildlife Area / Tonto National Forest peccary forage studies.
[^jojoba-asdm]: Arizona-Sonora Desert Museum & USDA Forest Service FEIS accounts for Jojoba (*Simmondsia chinensis*).
[^sherbrooke1976]: Sherbrooke, W. C. (1976). Differential acceptance of toxic jojoba seed (*Simmondsia chinensis*) by four Sonoran Desert heteromyid rodents. *Ecology* 57(3): 596–602.
[^adw-rtgs]: Ernest, K. A. & Mares, M. A. (1987). *Spermophilus tereticaudus*. *Mammalian Species* 274: 1–9; Animal Diversity Web (*Xerospermophilus tereticaudus*).
[^adw-skunk]: Wade-Smith, J. & Verts, B. J. (1982). *Mephitis mephitis*. *Mammalian Species* 173: 1–7; Animal Diversity Web.
[^beck2005]: Beck, D. D. (2005). *Biology of Gila Monsters and Beaded Lizards*. University of California Press.
[^adw-ringtail]: Poglayen-Neuwall, I. & Toweill, D. E. (1988). *Bassariscus astutus*. *Mammalian Species* 327: 1–8; Trapp, G. R. (1978), comparative behavioral ecology of the ringtail and gray fox.
[^adw-roadrunner]: Hughes, J. M. (1996). Greater Roadrunner (*Geococcyx californianus*). *Birds of the World*, Cornell Lab of Ornithology.
[^ohmart1971]: Ohmart, R. D. & Lasiewski, R. C. (1971). Roadrunners: Energy conservation by hypothermia and absorption of sunlight. *Science* 172(3978): 67–69.
[^usda-grayfox]: Fritzell, E. K. & Haroldson, K. J. (1982). *Urocyon cinereoargenteus*. *Mammalian Species* 189: 1–8; USDA FEIS.
[^steenbergh1977]: Steenbergh, W. F. & Lowe, C. H. (1977). *Ecology of the Saguaro: II. Reproduction, Germination, Establishment, Growth, and Survival of the Young Plant*. National Park Service Scientific Monograph Series No. 8.
[^mckinney2007]: McKinney, T. & Smith, T. W. (2007). Diets of sympatric bobcats and coyotes during years of varying rainfall in central Arizona. *Western North American Naturalist* 67(1): 8–15.
[^grubb1995]: Grubb, T. G. (1995). Food habits of Bald Eagles breeding in the Arizona desert. *The Wilson Bulletin* 107(2): 258–274.
