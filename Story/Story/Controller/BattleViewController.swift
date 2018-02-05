
//
//  BattleViewController.swift
//  Story
//
//  Created by Rodrigo Salles Stefani on 05/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController{
    
    var constrainAttacker: NSLayoutConstraint{
        fatalError("Implementar na classe filho - constrainAttacker")
    }
    var constrainDefender: NSLayoutConstraint{
        fatalError("Implementar na classe filho - constrainDefender")
    }
    
    var finaltext: UILabel{
        fatalError("Implementar na classe filho - finaltext")
    }
    
    var attackerDamage: Int{
        fatalError("Implementar na classe filho - attackerDamage")
    }
    var defenderDamage: Int{
        fatalError("Implementar na classe filho - defenderDamage")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeUp.direction = .up
        self.view.addGestureRecognizer(swipeUp)
        
    }
    
    func attack(){
        constrainAttacker.constant += 200

    }
    func attackerWin(){
        constrainDefender.constant -= 500
        constrainAttacker.constant -= 200
    }
    func defenderWin(){
        constrainDefender.constant += 300
        constrainAttacker.constant -= 500
        
    }
    func insertText(){
        finaltext.text = "NO ONE WON, FIGHTING IS WRONG"
    }
    
    
    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        if gesture.direction == UISwipeGestureRecognizerDirection.up {
            UIView.animate(withDuration: 0.2, animations: {
                self.attack()
                self.view.layoutIfNeeded()
            }, completion: { (true) in
                UIView.animate(withDuration: 0.5, animations: {
                    if self.attackerDamage >= self.defenderDamage {
                        self.attackerWin()
                        self.view.layoutIfNeeded()
                    } else{
                        self.defenderWin()
                        self.view.layoutIfNeeded()
                    }
                    self.insertText()
                    
                })
            })
        }
    }
    
}

