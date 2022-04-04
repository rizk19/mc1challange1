//
//  ViewController.swift
//  i am rich
//
//  Created by Rizki Faris on 04/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    var currentState: Int16 = 1
    
    @IBOutlet weak var listNumber: UILabel!
    
    @IBOutlet weak var songTitle: UILabel!
    
    @IBOutlet weak var songCaption: UILabel!
    
    @IBOutlet weak var songLyrics: UITextView!
    
    @IBOutlet weak var songImage: UIImageView!
    
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    func backwardsState() {
        if currentState == 1 {
            currentState = 3
        } else {
            currentState = currentState - 1
        }
        listNumber.text = String(currentState)
        changeSong(i : currentState)
    }
    
    func forwardsState() {
        if currentState == 3 {
            currentState = 1
        } else {
            currentState = currentState + 1
        }
        listNumber.text = String(currentState)
        changeSong(i : currentState)
    }
    
    func changeSong(i: Int16)
    {
        if i == 1 {
            songTitle.text = "Happy"
            songCaption.text = "Pharel William"
            songLyrics.text =
            "Huh (Because I'm happy) Clap along if you feel like a room without a roof (Because I'm happy) Clap along if you feel like happiness is the truth (Because I'm happy) Clap along if you know what happiness is to you"
            songImage.image = UIImage(named: "happy")
            backgroundImage.image = UIImage(named: "happy")
        } else if i == 2 {
            songTitle.text = "Daydreamer"
            songCaption.text = "AURORA"
            songLyrics.text =
            "And we become night time dreamers Street walkers and small talkers When we should be daydreamers And moonwalkers and dream talkers And we become night time dreamers Street walkers, small talkers When we should be daydreamers And moonwalkers and dream talkers In real life"
            songImage.image = UIImage(named: "daydreamer")
            backgroundImage.image = UIImage(named: "daydreamer")
        } else if i == 3 {
            songTitle.text = "Is This Love"
            songCaption.text = "Aalia"
            songLyrics.text =
            "A blue bird in my heart Why do you try to get it out It's sad It's sad to know you Don't take out my blue bird It only knows how to stay dark Don't spoil It shouldn't hurt no more"
            songImage.image = UIImage(named: "is-this-love")
            backgroundImage.image = UIImage(named: "is-this-love")
        }
    }
    
    @IBAction func backwardsButton(_ sender: UIButton) {
        backwardsState()
    }
    
    @IBAction func forwardsButton(_ sender: Any) {
        forwardsState()
    }
    
    override func viewDidLoad() {
        listNumber.text = String(currentState)
        changeSong(i : currentState)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

