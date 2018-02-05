//
//  SadViewController.swift
//  Story
//
//  Created by Rodrigo Salles Stefani on 02/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit

class SadViewController: TrainViewController {
    
    @IBOutlet weak var BlueWall: NSLayoutConstraint!
    @IBOutlet weak var sacoSad: NSLayoutConstraint!
    
    override var character: Character {
        return CharacterStore.main.sad
    }
    override var constrainPersonagem: NSLayoutConstraint{
        return BlueWall
    }
    override var constrainSaco: NSLayoutConstraint{
        return sacoSad
    }
    
}
