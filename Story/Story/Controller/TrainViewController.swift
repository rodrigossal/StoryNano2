//
//  ViewController.swift
//  Story
//
//  Created by Rodrigo Salles Stefani on 29/01/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit

class TrainViewController: UIViewController {
    
    var character: Character {
        fatalError("IMPLEMENTA ESSA BOSTA")
    }
    
    var counter = 0
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.motionShake{
            counter += 1
            character.train()
            print(counter)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("OLAA")
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

