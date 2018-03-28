//
//  ContactDetailsViewController.swift
//  sara
//
//  Created by Matilda Stevenson on 24/3/18.
//  Copyright © 2018 Matilda Stevenson. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var nameTextField: UITextField!
    
    

    @IBOutlet weak var agePicker: UIPickerView!
    

    @IBOutlet weak var genderPicker: UIPickerView!
    
    
    var agePickerData: [Int] = [Int]()
    var genderPickerData: [String] = [String]()
    
    @IBOutlet weak var phoneTextField: UITextView!
    
    @IBAction func finishButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToReceipt", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        agePicker.tag = 0
        genderPicker.tag = 1
        agePicker.delegate = self
        genderPicker.dataSource = self
        agePicker.delegate = self
        genderPicker.dataSource = self
        genderPicker.delegate = self
        // create an empty Int array

        // extend the array using a Range
        agePickerData += 1...100
        genderPickerData = ["Male", "Female", "Other"]
        // Do any additional setup after loading the view.
        
//        agePicker.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
//        agePicker.layer.borderWidth = 1
//        
//        genderPicker.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
//        genderPicker.layer.borderWidth = 1
        
        nameTextField.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
        nameTextField.layer.borderWidth = 1
        
//        genderTextField.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
//        genderTextField.layer.borderWidth = 1
        
        phoneTextField.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
        phoneTextField.layer.borderWidth = 1
        
//        emailTextField.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
//        emailTextField.layer.borderWidth = 1
//
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == 0) {
            return String(agePickerData[row])
        }
        else {
            return genderPickerData[row]
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView.tag == 0) {
            return agePickerData.count
        }
        else {
            return genderPickerData.count
        }
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
