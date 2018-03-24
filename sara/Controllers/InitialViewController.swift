//
//  InitialViewController.swift
//  sara
//
//  Created by Matilda Stevenson on 24/3/18.
//  Copyright © 2018 Matilda Stevenson. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var helpButton: UIButton!
    
    @IBAction func recordButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToRecord", sender: self)
    }
    
    @IBAction func getHelpButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToHelp", sender: self)

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // trying to hide the tool bar
        navigationController?.setToolbarHidden(true, animated: false)
        
        // give buttons rounded corners
        recordButton.layer.cornerRadius = 10
        helpButton.layer.cornerRadius = 10
        
        recordButton.backgroundColor = UIColor.green
        helpButton.backgroundColor = UIColor.green
        
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
