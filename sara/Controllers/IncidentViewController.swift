//
//  IncidentViewController.swift
//  sara
//
//  Created by Matilda Stevenson on 24/3/18.
//  Copyright © 2018 Matilda Stevenson. All rights reserved.
//

import UIKit

class IncidentViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate {
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToOffender", sender: self)
    }
    
    @IBOutlet weak var textView: UITextView!
    
    
    @IBOutlet weak var incidentPicker: UIPickerView!
    
    @IBOutlet weak var victimPicker: UIPickerView!
    
    var victimPickerData: [String] = [String]()
    var incidentPickerData: [String] = [String]()
    
    @IBOutlet weak var incidentTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        descriptionTextField.delegate = self
        victimPicker.tag = 0
        incidentPicker.tag = 1
        victimPicker.delegate = self
        victimPicker.dataSource = self
        incidentPicker.delegate = self
        incidentPicker.dataSource = self
        victimPickerData = ["Me"," A family member", "A friend","An acquaintance", "Other"]
        incidentPickerData = ["Rape/Sexual assault","Indecent exposure","Stalking or following", "Touching","Childhood sexual assault","Sexual harassment","Other"]

        //        recordButton.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
        //        helpButton.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
        //        recordButton.layer.borderWidth = 5
        //        helpButton.layer.borderWidth = 5
        incidentTextField.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
        incidentTextField.layer.borderWidth = 1
//        incidentPicker.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
//        incidentPicker.layer.borderWidth = 1
//        victimPicker.layer.borderWidth = 1
//        victimPicker.layer.borderColor = UIColor(red:0.76, green:0.58, blue:0.54, alpha:1.0).cgColor
//
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
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == 0) {
            return victimPickerData[row]
        }
        else {
            return incidentPickerData[row]
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView.tag == 0) {
            return victimPickerData.count
        }
        else {
            return incidentPickerData.count
        }
    }
    
    //MARK:- TextField Delegate Methods
    
    
    
    
    //TODO: Declare textFieldDidBeginEditing here:
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        UIView.animate(withDuration: 0.5, animations: {
//            self.heightConstraint.constant = 308
            self.view.layoutIfNeeded()
        })
    }
    
    
    
    //TODO: Declare textFieldDidEndEditing here:
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.5, animations: {
//            self.heightConstraint.constant = 50
            self.view.layoutIfNeeded()
        })
    }

    

}
