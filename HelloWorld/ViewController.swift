//
//  ViewController.swift
//  HelloWorld
//
//  Created by jia on 2019/10/31.
//  Copyright © 2019 jia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.black
    }
    
    @IBAction func showMessage(sender:UIButton){
        
        // dictionary
        let characterDic = [
            "👾":"Alian",
            "👻":"Ghost",
            "😱":"Amazing",
            "😜":"Twinkle",
        ]
        
        // store sender
        let selectButton = sender
        
        if let wordToLookup = selectButton.titleLabel?.text, let meaning = characterDic[wordToLookup]{

            let alertController = UIAlertController(title: "Character:\(wordToLookup)", message:"Meaning:\(meaning)", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController,animated: true,completion: nil)
            
        }
        
    }
    
    @IBAction func helloWorldShowMessage(sender:UIButton){
        
        let alertController = UIAlertController(title: "测试auto layout", message: "测试是否居中", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "yes", style: UIAlertAction.Style.default, handler: nil))
        present(alertController,animated: true,completion: nil)
    }

}

