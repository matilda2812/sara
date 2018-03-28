//
//  OffenderViewController.swift
//  sara
//
//  Created by Matilda Stevenson on 24/3/18.
//  Copyright © 2018 Matilda Stevenson. All rights reserved.
//

import UIKit

class OffenderViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var appearanceTextField: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var appearance2TextField: UITextField!
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToContact", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
        nameTextField.layer.borderWidth = 1
        genderTextField.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
        genderTextField.layer.borderWidth = 1
        appearanceTextField.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
        appearanceTextField.layer.borderWidth = 1
        appearance2TextField.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
        appearance2TextField.layer.borderWidth = 1
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
