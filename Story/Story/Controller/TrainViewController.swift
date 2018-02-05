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
        fatalError("Implementar na classe filho - character")
    }
    var constrainPersonagem: NSLayoutConstraint{
        fatalError("Implementar na classe filho - constrainPersonagem")
    }
    var constrainSaco: NSLayoutConstraint{
        fatalError("Implementar na classe filho - constrainSaco")
    }
    
    var counter = 0
    
    
    func attack(){
        constrainPersonagem.constant += 100
        constrainSaco.constant -= 100
    }
    func retrain(){
        constrainPersonagem.constant -= 100
        constrainSaco.constant += 100
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.motionShake{
            counter += 1
            character.train()
            print(character.damage)
            UIView.animate(withDuration: 0.1, animations: {
                self.attack()
                self.view.layoutIfNeeded()
            }, completion: { (true) in
                UIView.animate(withDuration: 0.2, animations: {
                    self.retrain()
                    self.view.layoutIfNeeded()
                })
            })
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

