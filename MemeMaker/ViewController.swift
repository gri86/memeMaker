//
//  ViewController.swift
//  MemeMaker
//
//  Created by byteCode on 04/07/2019.
//  Copyright © 2019 Григорий Пигаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLable: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var bottomCaptionLable: UILabel!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    var topChoices = [captionOption]()
    var bottomChoices = [captionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTopSegmentControl()
        configureBottomSegmentContro()
        selectInitValues()
    }
    
    func configureTopSegmentControl(){
        topCaptionSegmentedControl.removeAllSegments()
        let option1 = captionOption(emoji: "🕶", text: "You know what's cool?", imageName: "1")
        let option2 = captionOption(emoji: "💥", text: "You know what makes me mad?", imageName: "2")
        let option3 = captionOption(emoji: "💕", text: "You know what I love?", imageName: "3")
        topChoices = [option1, option2, option3]

        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    func configureBottomSegmentContro(){
        bottomCaptionSegmentedControl.removeAllSegments()
        let option1 = captionOption(emoji: "🐱", text: "Cats wearning heats", imageName: "1")
        let option2 = captionOption(emoji: "🐕", text: "Dogs carrying logs", imageName: "2")
        let option3 = captionOption(emoji: "🐒", text: "Monkeys being funky", imageName: "3")
        bottomChoices = [option1, option2, option3]
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
    }
    
    func selectInitValues() {
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        topCaptionLable.text = topChoices.first?.text
        bottomCaptionLable.text = bottomChoices.first?.text
    }
    
    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topCaptionLable.text = currentChoice.text
    }
    
    
    @IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = bottomChoices[sender.selectedSegmentIndex]
        bottomCaptionLable.text = currentChoice.text
    }
    
}
