# Playing_cards

## Collect the World's Wildlands. Discover Nature's Connections.
Each expansion explores a real landscape, beginning with the **Tonto Basin Ranger District** of **Tonto National Forest** in Arizona, USA. Every card represents a real species, habitat, or natural feature.

## Usage Requirements

The card viewer (`card_viewer.html`) must be served through a local HTTP server because its relative fetch requests do not work when opened directly from disk (file:// protocol). You can use any local web server such as:
- Python: `python -m http.server` or `python3 -m http.server`
- Node.js: `npx http-server`
- PHP: `php -S localhost:8000`

### Standard Deck

This section defines the structural and architectural model of the standard deck.

Structurally, the standard deck model is **4 suits by 13 ranks**, producing **52 cards**. Suit is part of a card's identity and organization, alongside rank.

The four suits are:

| Suit | Definition |
|------|------------|
| Resources | Materials, food, energy sources, or other resources that can support an ecosystem. |
| Foundations | Physical or ecological structures that form the base of an ecosystem, such as habitat, terrain, shelter, or persistent structures. |
| Organisms | Living things within the ecosystem, including plants, animals, insects, fungi, and other organisms. |
| Dynamics | Events, environmental changes, natural processes, weather, or other conditions that alter the state of the ecosystem. |

A complete deck has one card for every suit/rank combination, for a total of 52 cards.

The shared 52-card architecture can optionally support conventional card games such as poker, rummy, or Go Fish, independently of Into the Wild rules. This does not mean that conventional card-game rules are Into the Wild rules.

---

# Keyword Reference

### Suit

The four-suit taxonomy classification of a card, used for card identity and organization.

The four suits are:

- Resources
- Foundations
- Organisms
- Dynamics

---

### Type

The four-suit taxonomy classification of a card.

---

### Standard Deck Composition

A standard deck contains exactly **52 cards**: 4 suits by 13 ranks.

| Suit | Cards |
|------|------:|
| Resources | 13 |
| Foundations | 13 |
| Organisms | 13 |
| Dynamics | 13 |

Total: **52 cards**

---

### Rank Distribution

Each suit contains exactly one card of every rank, 1 through 13.

| Rank | Resources | Foundations | Organisms | Dynamics |
|-----:|:---------:|:-----------:|:---------:|:--------:|
| 1 | x | x | x | x |
| 2 | x | x | x | x |
| 3 | x | x | x | x |
| 4 | x | x | x | x |
| 5 | x | x | x | x |
| 6 | x | x | x | x |
| 7 | x | x | x | x |
| 8 | x | x | x | x |
| 9 | x | x | x | x |
| 10 | x | x | x | x |
| 11 | x | x | x | x |
| 12 | x | x | x | x |
| 13 | x | x | x | x |

---

# Wildlands Basic Rules

## Setup

- Shuffle the deck.
- Each player draws **5 cards**.
- Place the remaining cards face down as the **Draw Pile**.
- Start an empty face-up **Discard Pile**.
- If the **Draw Pile** runs out during the game, shuffle the **Discard Pile** (except its top card) to form a new **Draw Pile**.

## Turn

On your turn:

1. **Draw** one card.
   - Draw from the **Draw Pile**, or
   - Draw the top card of the **Discard Pile** (if available).
   - If one pile is empty, you must draw from the other.
2. **Play** a valid scoring set if you can.
   - Scored cards are removed from your hand and placed in your scored area.
   - Scored cards cannot be reused.
3. If you have **more than 5 cards** in your hand, discard until you have 5 cards.
4. End your turn.

## Scoring Sets

### 3-Card Sets

#### Small Run — 1 Point
Three consecutive ranks (suits may differ).

#### Three of a Kind — 2 Points
Three cards of the same rank.

### 4-Card Sets

#### Adjacent-Rank Set — 3 Points
Four cards using two adjacent ranks, with exactly two cards of each rank (2+2 distribution).

Examples:

- 1 1 2 2
- 1 2 2 1
- 1 2 1 2

#### Long Run — 4 Points
Four consecutive ranks (suits may differ).

#### Four of a Kind — 5 Points
Four cards of the same rank.

## Set Placement

- A set is scored when it is played.
- Once a set is played, cards cannot be added to it later.
- A 3-card set cannot be upgraded into a 4-card set.

## Scoring

| Set | Cards | Points |
|---|---:|---:|
| Small Run | 3 | 1 |
| Three of a Kind | 3 | 2 |
| Adjacent-Rank Set | 4 | 3 |
| Long Run | 4 | 4 |
| Four of a Kind | 4 | 5 |
