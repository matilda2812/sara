//
//  ReceiptViewController.swift
//  sara
//
//  Created by Matilda Stevenson on 25/3/18.
//  Copyright © 2018 Matilda Stevenson. All rights reserved.
//

import UIKit

class ReceiptViewController: UIViewController {

    
    @IBAction func supportButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToHelp", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
