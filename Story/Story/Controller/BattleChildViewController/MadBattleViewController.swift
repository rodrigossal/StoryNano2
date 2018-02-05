//
//  MadBattleViewController.swift
//  Story
//
//  Created by Rodrigo Salles Stefani on 05/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit

class MadBattleViewController: BattleViewController {
    
    @IBOutlet weak var finalText: UILabel!
    
    @IBOutlet weak var madAtacker: NSLayoutConstraint!
    @IBOutlet weak var sadDefender: NSLayoutConstraint!
    
    
    override var constrainAttacker: NSLayoutConstraint{
        return madAtacker
    }
    override var constrainDefender: NSLayoutConstraint{
        return sadDefender
    }
    
    override var finaltext: UILabel{
        return finalText
    }
    
    override var attackerDamage: Int{
        return CharacterStore.main.mad.damage
    }
    override var defenderDamage: Int{
        return CharacterStore.main.sad.damage
    }
}
