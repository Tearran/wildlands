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

1. Shuffle the deck.
2. Deal 5 cards to each player.
3. Place the remaining cards face down as the Draw Pile.
4. Start the Discard Pile empty.
5. The player to the dealer's left goes first.

## Building Sets

Sets are built from a **Dynamic** or **Foundation**.

The suit order is:

**Dynamic → Foundation → Resource → Organism → Dynamic**

A set must:

- Start with a **Dynamic** or **Foundation**.
- Follow the suit order.
- End with an **Organism** or **Dynamic**.
- Contain no more than one card of the same suit.
- Be a valid Run, N-of-a-Kind, or Double Pair.

### Runs

- **Small Run:** 3 consecutive ranks.
- **Long Run:** 4 consecutive ranks.
- Suits do not need to match; the suits must follow the Wildlands suit order.

### N-of-a-Kind

- **Three of a Kind:** 3 cards of the same rank.
- **Four of a Kind:** 4 cards of the same rank.
- A 3+1 combination is invalid.

### Double Pair

- 4 cards consisting of two matching-rank pairs.
- The two ranks must be adjacent, staying within ±1.
- Any arrangement is valid as long as the suit order is maintained.

## Playing Sets

Play a valid **Run, N-of-a-Kind, or Double Pair** by placing the completed set on the board.

- Sets are scored when played.
- Once a set is placed on the board, it cannot be added to or changed.
- A 3-card set cannot be upgraded into a 4-card set.

## Turn

On your turn:

1. Draw one card.
   - Draw from the Draw Pile, or
   - Draw the top card of the Discard Pile if one exists.
2. Play a valid set if you can.
3. If you have more than 5 cards, discard until you have 5 cards.
4. End your turn.

## Scoring

| Set | Cards | Points |
|---|---:|---:|
| Small Run | 3 | 1 |
| Three of a Kind | 3 | 2 |
| Double Pair | 4 | 3 |
| Long Run | 4 | 4 |
| Four of a Kind | 4 | 5 |

## Game End

- The game ends when the Draw Pile is empty.
- Players count their points.
- The player with the highest score wins. cards consisting of two matching-rank pairs.