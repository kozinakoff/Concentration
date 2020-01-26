//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by ANDREY VORONTSOV on 26.01.2020.
//  Copyright © 2020 ANDREY VORONTSOV. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {
    
    private let themes = [
        "Sports" : ["⚽️", "🏀", "🏈", "⚾️", "🎾", "🏉", "🎱", "🏓", "⛳️"],
        "Animals" : ["😱", "🎃", "👻", "🦇", "🍎", "🍭", "🍬", "🙀", "😈"],
        "Faces" : ["😱", "🎃", "👻", "🦇", "🍎", "🍭", "🍬", "🙀", "😈"]
    ]
    
    @IBAction func changeTheme(_ sender: Any) {
        if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
            
        } else {
            performSegue(withIdentifier: "Choose Theme", sender: sender)
        }
    }
    
    override func awakeFromNib() {
        //
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
            }
        }
    }
}
