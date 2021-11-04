//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1ButtonUI: UIButton!
    @IBOutlet weak var choice2ButtonUI: UIButton!
    
    var storiBrain = StoryBrain()
   
    
    @IBAction func choiceButton(_ sender: UIButton) {
//        if (choice1ButtonUI != nil){
//            storiBrain.getNextStory(userChoice: choice1ButtonUI.currentTitle!)
//        } else if (choice2ButtonUI != nil){
//             storiBrain.getNextStory(userChoice: choice2ButtonUI.currentTitle!)
//            updateUI()
//        }
//
        storiBrain.getNextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    func updateUI(){

        storyLabel.text = storiBrain.getStoryTitle()
        choice1ButtonUI.setTitle(storiBrain.getChoice1(), for: .normal)
        choice2ButtonUI.setTitle(storiBrain.getChoice2(), for: .normal)
    }


}

