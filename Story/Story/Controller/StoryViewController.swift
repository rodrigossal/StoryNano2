//
//  StoryViewController.swift
//  Story
//
//  Created by Rodrigo Salles Stefani on 05/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    
    
    @IBOutlet weak var text: UILabel!
    
    var counter = 1
    var initialText = InitialText()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func buttonStory(_ sender: Any) {
        
        if counter == initialText.text.count{
            performSegue(withIdentifier: "comeco", sender: self)
        }else{
            self.text.text = initialText.text[counter]
        
            counter += 1
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

