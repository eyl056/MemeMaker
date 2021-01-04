//
//  ViewController.swift
//  MemeMaker
//
//  Created by EunYoung on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!

    var topSegmentedIndex: Int = 0
    var bottomSegmentedIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        topCaptionSegmentedControl.removeAllSegments()
        bottomCaptionSegmentedControl.removeAllSegments()

        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }

        topCaptionSegmentedControl.selectedSegmentIndex = 0
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        changeImage()
    }

    let topChoices = [CaptionOption(emoji:"❤️"), CaptionOption(emoji:"💛"), CaptionOption(emoji:"💙")]
    let bottomChoices = [CaptionOption(emoji:"❤️"), CaptionOption(emoji:"💛"), CaptionOption(emoji:"💙")]
    
    @IBAction func topCaptionSegmentedAction(_ sender: Any) {
        topSegmentedIndex = topCaptionSegmentedControl.selectedSegmentIndex
        changeImage()
    }
    
    @IBAction func bottomCaptionSegmentedAction(_ sender: Any) {
        bottomSegmentedIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        changeImage()
    }
    func changeImage() {
        if topSegmentedIndex == 0 && bottomSegmentedIndex == 0 {
            image.image = UIImage(named: "red.png")
        } else if topSegmentedIndex == 0 && bottomSegmentedIndex == 1 {
            image.image = UIImage(named: "orange.png")
        } else if topSegmentedIndex == 0 && bottomSegmentedIndex == 2 {
            image.image = UIImage(named: "purple.png")
        } else if topSegmentedIndex == 1 && bottomSegmentedIndex == 0 {
            image.image = UIImage(named: "orange.png")
        } else if topSegmentedIndex == 1 && bottomSegmentedIndex == 1 {
            image.image = UIImage(named: "yellow.png")
        } else if topSegmentedIndex == 1 && bottomSegmentedIndex == 2 {
            image.image = UIImage(named: "green.png")
        } else if topSegmentedIndex == 2 && bottomSegmentedIndex == 0 {
            image.image = UIImage(named: "purple.png")
        } else if topSegmentedIndex == 2 && bottomSegmentedIndex == 1 {
            image.image = UIImage(named: "green.png")
        } else if topSegmentedIndex == 2 && bottomSegmentedIndex == 2 {
            image.image = UIImage(named: "blue.png")
        } else {
            image.image = UIImage(named: "red.png")
        }
    }
}
