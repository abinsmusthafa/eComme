//
//  ViewController.swift
//  eComm
//
//  Created by Abins Musthafa on 02/03/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        
    }
    override func viewDidAppear(_ animated: Bool) {
        let storeboard = UIStoryboard(name: Storyboard.LoginStoryboard, bundle: nil)
        let controller = storeboard.instantiateViewController(withIdentifier: StoryboardId.loginVC)
        present(controller,animated: true, completion: nil)
    }

}

