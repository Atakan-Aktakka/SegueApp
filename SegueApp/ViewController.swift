//
//  ViewController.swift
//  SegueApp
//
//  Created by Atakan Aktakka on 31.08.2023.
//

import UIKit

class ViewController: UIViewController {
    var userName=""
    @IBOutlet weak var mainText: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function called")
        mainText.text=""
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        mainText.text=""
    }
    
    @IBAction func nextClicked(_ sender: Any) {
         userName = mainText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

