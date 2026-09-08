## Collect the World's Wildlands. Discover Nature's Connections.
Each expansion explores a real landscape, beginning with the **Tonto Basin Ranger District** of **Tonto National Forest** in Arizona, USA. Every card represents a real species, habitat, or natural feature.

### Standard Deck

This section defines the structural and architectural model of the standard deck.

Structurally, the standard deck model is **4 suits by 13 ranks**, producing **52 cards**. Suit is part of a card's identity and organization, alongside rank.

The four suits are:

| Suit | Definition |
|------|------------|
| Dynamics | Events, environmental changes, natural processes, weather, or other conditions that alter the state of the ecosystem. |
| Foundations | Physical or ecological structures that form the base of an ecosystem, such as habitat, terrain, shelter, or persistent structures. |
| Resources | Materials, food, energy sources, or other resources that can support an ecosystem. |
| Consumers | Living things within the ecosystem, including plants, animals, insects, fungi, and other organisms. |


A complete deck has one card for every suit/rank combination, for a total of 52 cards.

The shared 52-card architecture can optionally support conventional card games such as poker, rummy, or Go Fish, independently of Into the Wild rules. This does not mean that conventional card-game rules are Into the Wild rules.

---

# Keyword Reference

### Suit

The four-suit taxonomy classification of a card, used for card identity and organization.

The four suits are:

**Dynamic → Foundation → Resource → Organism → Dynamic**


## Tools Requirements

The card viewer (`card_viewer.html`) must be served through a local HTTP server because its relative fetch requests do not work when opened directly from disk (file:// protocol). You can use any local web server such as:
- Python: `python -m http.server` or `python3 -m http.server`
- Node.js: `npx http-server`
- PHP: `php -S localhost:8000`

| Four of a Kind | 4 | 5 |

## Game End

- When a player draws the final card from the Draw Pile, that player completes their turn.
- The game ends after that turn. score wins.
