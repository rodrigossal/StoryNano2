//
//  MadViewController.swift
//  Story
//
//  Created by Rodrigo Salles Stefani on 02/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit

class MadViewController: TrainViewController {
    
    @IBOutlet weak var RedWall: NSLayoutConstraint!
    @IBOutlet weak var sacoMad: NSLayoutConstraint!
    
    override var character: Character {
        return CharacterStore.main.mad
    }
    override var constrainPersonagem: NSLayoutConstraint{
        return RedWall
    }
    override var constrainSaco: NSLayoutConstraint{
        return sacoMad
    }
}

