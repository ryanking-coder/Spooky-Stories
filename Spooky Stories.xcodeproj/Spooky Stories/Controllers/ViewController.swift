//
//  ViewController.swift
//  Spooky Stories
//
//  Created by Ryan  King  on 5/6/20.
//  Copyright © 2020 Ryan  King . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      updateUI()
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
    
         updateUI()
    }
    
    

            
    
    
    func updateUI() {
           storyLabel.text = storyBrain.getStoryTitle()
           choice1.setTitle(storyBrain.getChoice1(), for: .normal)
           choice2.setTitle(storyBrain.getChoice2(), for: .normal)
       }
    
    

}

