//
//  ViewController.swift
//  YoutubeLesson
//
//  Created by Александр on 02.08.17.
//  Copyright © 2017 Александр. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func alertAction(_ sender: Any) {
        let alertMessage = UIAlertController(title: "ВНИМАНИЕ", message: "Сделай мне пожалуйста покушать", preferredStyle: UIAlertControllerStyle.alert)
        alertMessage.addAction(UIAlertAction(title: "Назад", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertMessage, animated: false, completion: nil)
    }
    
    


}

