//
//  ViewController.swift
//  SwipeAlex
//
//  Created by Александр on 02.03.17.
//  Copyright © 2017 Александр. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func gesture(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Привет", message: "Поздравляю, Саня создал свое первое всплывающее окошечко!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

