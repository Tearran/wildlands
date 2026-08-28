# Wildlands

## Collect the World's Wildlands. Discover Nature's Connections.
Each expansion explores a real landscape, beginning with the **Tonto Basin Ranger District** of **Tonto National Forest** in Arizona, USA. Every card represents a real species, habitat, or natural feature.


### Standard Deck

This section defines the structural and architectural model of the standard deck.

Structurally, the standard deck model is **4 suites by 13 ranks**, producing **52 cards**. Suite is part of a card's identity and organization, alongside rank.

The four suites are:

| Suite        | Definition                                                                                                                                                    |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Disturbances | Discrete, temporary environmental forces or weather events that alter ecosystem structures, resource availability, or the physical state of the terrain.      |
| Soil Matrix  | The physical, chemical, and biological properties of the earth, mineral bedrock, and decomposing organic humus layers that establish the conditions for life. |
| Producers    | Organic material and biomass available for consumption, including autotrophic plants, fungi, algae, and fractional biomass.                                   |
| Consumers    | Organisms that cannot produce their own energy and must ingest other organic biomass to survive.                                                              |

A complete deck has one card for every suite/rank combination, for a total of 52 cards.

The shared 52-card architecture can optionally support conventional card games such as poker, rummy, or Go Fish, independently of Wildlands rules. This does not mean that conventional card-game rules are Wildlands rules.

---

# Keyword Reference

### Suite

The four-suite ecological taxonomy classification of a card, used for card identity and organization.

The four suites are:

* Disturbances
* Soil Matrix
* Producers
* Consumers

---

### Type

The four-suite ecological taxonomy classification of a card.

---

### Standard Deck Composition

A standard deck contains exactly **52 cards**: 4 suites by 13 ranks.

| Suite        | Cards |
| ------------ | ----: |
| Disturbances |    13 |
| Soil Matrix  |    13 |
| Producers    |    13 |
| Consumers    |    13 |

Total: **52 cards**

---

### Rank Distribution

Each suite contains exactly one card of every rank, 1 through 13.

| Rank | Disturbances | Soil Matrix | Producers | Consumers |
| ---: | :----------: | :---------: | :-------: | :-------: |
|    1 |       x      |      x      |     x     |     x     |
|    2 |       x      |      x      |     x     |     x     |
|    3 |       x      |      x      |     x     |     x     |
|    4 |       x      |      x      |     x     |     x     |
|    5 |       x      |      x      |     x     |     x     |
|    6 |       x      |      x      |     x     |     x     |
|    7 |       x      |      x      |     x     |     x     |
|    8 |       x      |      x      |     x     |     x     |
|    9 |       x      |      x      |     x     |     x     |
|   10 |       x      |      x      |     x     |     x     |
|   11 |       x      |      x      |     x     |     x     |
|   12 |       x      |      x      |     x     |     x     |
|   13 |       x      |      x      |     x     |     x     |

---

# Wildlands Basic Rules

## Setup

1. Shuffle the deck.
2. Deal 5 cards to each player.
3. Place the remaining cards face down as the Draw Pile.
4. Start the Discard Pile empty.
5. The player to the dealer's left goes first.

## Building Sets

Sets are built from a **Disturbance** or **Soil Matrix**.

The suit order is:

**Disturbance → Soil Matrix → Producer → Consumer → Disturbance**

A set must:

- Must start with a **Disturbance** or **Soil Matrix**.
- Follow the suit order.
- Runs may start or end with **Disturbance**.
- Contain no more than one card of the same suit.
- Be a valid Run, N-of-a-Kind, or Double Pair.

### Runs

- **Small Run:** 3 consecutive ranks.
- **Long Run:** 4 consecutive ranks.
- Suits can not match; the suits must follow the Wildlands suit order.

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
   - If the final card is drawn from the Draw Pile, the current player still completes their turn normally (play/discard as usual, then end turn).
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

- When a player draws the final card from the Draw Pile, that player completes their turn.
- The game ends after that turn. 
- High score wins.


## Tools Requirements

The card viewer (`index.html`,`card_viewer.html` etc) must be served through a local HTTP server because its relative fetch requests do not work when opened directly from disk (file:// protocol). You can use any local web server such as:
- Python: `python -m http.server` or `python3 -m http.server`
- Node.js: `npx http-server`
- PHP: `php -S localhost:8000`
