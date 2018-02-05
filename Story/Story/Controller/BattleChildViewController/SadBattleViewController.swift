//
//  SadBattleViewController.swift
//  Story
//
//  Created by Rodrigo Salles Stefani on 05/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit

class SadBattleViewController: BattleViewController {
    
    @IBOutlet weak var finalText: UILabel!
    
    @IBOutlet weak var sadAtacker: NSLayoutConstraint!
    @IBOutlet weak var madDefender: NSLayoutConstraint!
    
    
    override var constrainAttacker: NSLayoutConstraint{
        return sadAtacker
    }
    override var constrainDefender: NSLayoutConstraint{
        return madDefender
    }
    
    override var finaltext: UILabel{
        return finalText
    }
    
    override var attackerDamage: Int{
       return CharacterStore.main.sad.damage
    }
    override var defenderDamage: Int{
        return CharacterStore.main.mad.damage
    }
}
