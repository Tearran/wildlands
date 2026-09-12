# Wildlands

## Collect the World's Wildlands. Discover Nature's Connections.

**Wildlands** is a card project based on real landscapes, ecological species, and natural features. The initial expansion covers the **Tonto Basin Ranger District** of the **Tonto National Forest** in Arizona, USA. Every card represents a specific species, habitat, or environmental element native to that ecosystem.

---

## Deck Architecture

The system uses the physical and mathematical model of a standard 52-card poker deck. The layout consists of **4 suits with 13 cards per suit**.

### System Components

* **The 4 Suits:** 
  * **Dynamics** map to **Diamonds** (♦️) — Events, environmental changes, or natural processes that alter the state of the ecosystem.
  * **Foundations** map to **Spades** (♠️) — Physical structures, terrain types, or persistent habitats forming the base of an ecosystem.
  * **Biomass / Resources** *(tentative)* map to **Clubs** (♣️) — Materials, food, or energy sources sustaining the landscape.
  * **Consumers** map to **Hearts** (♥️) — Living organisms within the ecosystem.
* **The 13 Cards Per Suit:** 
  * **Numbers 2 through 10**, followed by the **Jack (J), Queen (Q), King (K), and Ace (A)**.

### Traditional Game Compatibility
Because the system maps card-for-card to a 52-card layout, the physical deck can be used to play conventional card games (such as poker, rummy, or Go Fish). Conventional card-game rules are independent of Wildlands design rules.

---

## Mathematical Design Rules

Card values do not represent a vertical ranking, power level, or hierarchy. Instead, a card's value acts as a numeric index establishing direct compatibility with elements in neighboring suits. 

Two components are structurally compatible if their values match exactly ($n$) or sit within a $\pm1$ offset ($n-1$ or $n+1$) on a standard sequential track:

`Track: [ 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A ]`

```ascii
         ┌──► [ Dynamics (♦) ] ──┐
         │                       ▼
   [ Consumers (♥) ]          [ Foundations (♠) ]
         ▲                       │
         │                       ▼
         └─── [ Resources (♣) ] ◄┘
```


---

---

## The Suit-Neighbor Architecture

The loop sequence is intentionally mapped so that adjacent suits reflect direct real-world ecological dependencies. When any card is examined alongside its neighboring suits on the track, the text elements transition logically between geography, meteorology, botany, and biology.

```text
┌──► [ Dynamics (♦) ] ──┐
         │                       ▼
   [ Fauna (♥) ]          [ Foundations (♠) ]
         ▲                       │
         │                       ▼
         └─── [ Resources (♣) ] ◄┘
```
---



