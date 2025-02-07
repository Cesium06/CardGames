Pretty basic idea. I want to create a set of classes and functions for creating card games in Swift. 

Going to continue building out logic for controlling the flow of cards, and eventually I am planning on create a set of games that a user can play.

Feel free to use this code however you'd like. I plan on taking these functions and building out a set of card games. 

**IMPORTANT NOTE** 
The Deck Of Cards (the main deck that all draws from) always maintains its size. The PLAYER CLASS manages taking and returning cards and manages the 
ownership of the card. Card contains an ownership variable called player that represents the player that currently has the card.

All cards NOT on a player or in play, should have player marked as Nil.
All cards that are taken by a player, should have their name marked on the card instance. 

Nil  -- Represents a card that has no one currently holding it. Use take/return card functions to ensure this. 
