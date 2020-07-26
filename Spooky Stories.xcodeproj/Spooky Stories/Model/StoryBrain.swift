//
//  StoryBrain.swift
//  Spooky Stories
//
//  Created by Ryan  King  on 5/6/20.
//  Copyright © 2020 Ryan  King . All rights reserved.
//

import Foundation

struct StoryBrain {

var storyNumber = 0

let stories = [
    Story(title: "You arrive at the haunted house. This is the scariest haunted house in the world. Most people don't make it out alive. You hear a mans voice and he welcomes to the Horror Manor. You are greeted by the groundskeeper and he goes to shake your hand, what do you do?",
        choice1: "Shake his hand.", choice1Destination: 1,
        choice2: "Act like you didn't see him.", choice2Destination: 2),
    Story(title: "He grabs your hand and gives you a weird look, but hey you're still alive right? He escorts you to the kitches where you'll meet the other haunted house goers. You see an open door to the right of you, what do you do?", choice1: "Go in the room.", choice1Destination: 3, choice2: "Don't roam around a haunted house, just follow him.", choice2Destination: 4),
    Story(title: "He calls you rude and says you have failed. He opens the trap door and you fall into the dungeon.", choice1: "The", choice1Destination: 0, choice2: "End", choice2Destination: 0),
    Story(title: "You hear screams coming from the direction that the groundskeeper was taking you. All of your friends have been led to their death. What do you do now?", choice1: "Run further into the dark room", choice1Destination: 5, choice2: "Go save your friends", choice2Destination: 6),
    Story(title: "You arrive and see a big dinner table full of food and people. Your stomach starts to rumble.", choice1: "Eat", choice1Destination: 7, choice2: "Lie and say you're not hungry.", choice2Destination: 2),
    Story(title: "You run further into the room to smell a terrible smell of rotten flesh and see garbage bags full of dead bodies", choice1: "Run out of the room", choice1Destination: 6, choice2: "Try to remain calm and walk past the bodies to find another exit.", choice2Destination: 8),
    Story(title: "Why would you do that?, You get snatched up by a couple of men with knives", choice1: "The", choice1Destination: 0, choice2: "end", choice2Destination: 0),
    Story(title: "You dig your fork in and you see maggots start to pour out.", choice1: "Scream", choice1Destination: 2, choice2: "Run into that room you saw in the hallway to go throw up ", choice2Destination: 3),
    Story(title: "You see light out of a doorway and you run towards it. You made it ", choice1: "You", choice1Destination: 0, choice2: "Win", choice2Destination: 0)
]

    
    
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    

    
    
    
    
}
