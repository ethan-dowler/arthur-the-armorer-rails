# The Blacksmith's Apprentice

Following my (successful) experiment of building a [dungeon crawler in Rails](https://github.com/ethan-dowler/dungeon-crawl-rails), I wanted to take things a step further and see if I could build a story-driven RPG with Rails.

## Premise

You are an apprentice to your father, a well-respected blacksmith. You dream of taking over the family business when you grow up.

Your life is flipped upside down when an evil creature destroys most of your hometown.

You must work alongside the other townsfolk to rebuild the town and remove the evil creature from your land.

## Goals

The goal of this project is to build a text-based RPG that's designed **for the browser** with an emphasis on the mobile browser experience.

I want to pick up exactly where I left off and play for whatever length of time I have available.

I want to progress through a campaign that tells a story while providing a robust gameplay experience.

## Motivations

So many games have fancy graphics and epic soundtracks, but I don't always have time to sit down and play a game for hours at a time. I want a game that I can pick up and put down instantly.

Aside from the actual gameplay, I've been very interested in building a game with Ruby and/or Rails for a long time. As a professional RoR developer and avid gaming fan, it's exciting to combine one of my favorite hobbies with my professional skill set.

## Minimum Viable Game

### Overworld

- Story/Campaign
  - track player progress through narrative events
  - track time spent during campaign (in-game days)
  - talk to NPCs to get information or trigger narrative events
- Dialogue
  - NPCs respond when you interacts with them
  - allow player to choose how to respond to NPC, when appropriate
- Party system
  - add party members to the roster through the course of the campaign
  - manage party equipment, skills, and inventory
  - each party member can equip a:
    - weapon
    - armor
    - accessory
    - consumable
- Equipment Durability System
  - this is a game about an armorer, after all!
  - weapons and armor degrade with use
  - Repair equipment at a forge (possibly, in a limited capacity away from a forge with perks!)
- Party Progression System with Skill Points (SP)
  - the party gains SP together in a "pool"
  - spend SP to unlock "perks" (i.e. new abilities and stat bonuses)

### Combat

- Turn-based
  - select action THEN select target
  - characters "roll initiative"; higher speed means more likely to go first
- Action Point (AP) system
  - every character has three points to spend on actions during their turn
  - different actions cost a different number of points
  - basic attack = 1 AP while casting a big spell may cost 2-3 AP
  - some characters may start with more AP or be able to unlock more AP with perks
- Actions
  - basic attack (2 AP)
    - some weapons may modify AP costs
      - first attack with a dagger costs 1 AP
      - maul can use 3 AP for heavy swing
    - some skills may modify AP costs in certain circumstances
      - Anti-Air: your first attack against a flying enemy costs 1 AP
      - Precision Strike: spend 3 AP to make an attack that ignores the target's armor
  - defend (2 AP)
  - use item (1-3 AP)
    - cost depends on the item
    - small potion = 1 AP
    - stat enhancer = 2 AP
    - party member revive = 3 AP
  - retreat (3 AP)
    - chance at failure
    - multiple party members using retreat in same round improves chance
  - special techniques (1-3 AP)
    - unique to each character

## Feature Expansions

- Dialogue
  - improved responses/more info based on Speech skill
  - additional speech options with higher Speech skill
- Town
  - unlock and upgrade town buildings
  - venders - buy/sell items
  - trainers - spend SP to unlock skills or improve abilities
- Skill System
  - each character has a list of skills that they can advance by performing certain actions
  - using a skill gains XP in that skill, improving the level of the skill over time
  - may not be compatible with expanded Party system
- Party system
  - more possible party members!
  - add/remove party members depending on your need
  - may not be compatible with expanded Skill system
- World Map
  - overview of where you are relative to other locations you've visited
- Combat Initiative
  - speed + action determines next initiative position (a la [Doom & Destiny](https://doomanddestiny.fandom.com/wiki/Doom_%26_Destiny?file=DoandDe_Screenshot3_-_Use_Spell.jpg))

## Technical Details

- [Ruby 3.2.X](https://www.ruby-lang.org/en/)
  - [Rails 7.X](https://guides.rubyonrails.org/)
    - [Hotwire](https://hotwired.dev/)
  - [RSpec](https://rspec.info/)
  - [Rubocop](https://rubocop.org/)
- SCSS
- [Hero Icons](https://heroicons.com/)

## Contributing

If you would like to start a conversation about this project, please create [a GitHub Issue](https://github.com/ethan-dowler/jrpg-rails/issues) on this repo. Thanks!
