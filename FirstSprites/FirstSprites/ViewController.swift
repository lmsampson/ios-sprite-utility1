//
//  ViewController.swift
//  FirstSprites
//
//  Created by Lisa Sampson on 11/5/18.
//  Copyright © 2018 Lisa M Sampson. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }

    // MARK: - Properites and Outlets
    
    var skscene: CustomScene? = nil

    @IBOutlet weak var skview: SKView!
    
}

