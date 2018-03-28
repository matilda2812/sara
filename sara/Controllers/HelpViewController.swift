//
//  HelpViewController.swift
//  sara
//
//  Created by Matilda Stevenson on 24/3/18.
//  Copyright © 2018 Matilda Stevenson. All rights reserved.
//

import UIKit
import MapKit

class HelpViewController: UIViewController, MKMapViewDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func exitButtonPressed(_ sender: Any) {
        exit(1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span = MKCoordinateSpanMake(1, 1)
        let region = MKCoordinateRegionMake(CLLocationCoordinate2D(latitude: -22.9, longitude: -43.4), span)
        
        mapView.setRegion(region, animated: true)
        
        let support1 = SupportService(title: "Clinical BEMFAM", coordinate: CLLocationCoordinate2D(latitude: -22.907848, longitude: -43.180912), info: "(21) 2595 5385\n They can provide you with medical services, health care and emergency medical assistance.")
        
        let support2 = SupportService(title: "Hospital Fernando Magalhes Rio", coordinate: CLLocationCoordinate2D(latitude: -22.894013, longitude: -43.225780), info: "They can provide you with medical services, health care and emergency medical assistance.")
        
        let support3 = SupportService(title: "State Hospital Pedro II", coordinate: CLLocationCoordinate2D(latitude: -22.906168, longitude: -43.688394), info: "(21) 3395 0123 - 3395 0313\nThey can provide you with medical services, health care and emergency medical assistance.")
        
        
        mapView.addAnnotation(support1)
        mapView.addAnnotation(support2)
        mapView.addAnnotation(support3)
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
    
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        // 2
//        guard let annotation = annotation as? SupportService else { return nil }
//        // 3
//        let identifier = "marker"
//        var view: MKMarkerAnnotationView
//        // 4
//        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
//            as? MKMarkerAnnotationView {
//            dequeuedView.annotation = annotation
//            view = dequeuedView
//        } else {
//            // 5
//            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
//            view.canShowCallout = true
//            view.calloutOffset = CGPoint(x: -5, y: 5)
//            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
//        }
//        return view
//    }
    
    
    
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "Support"
        
        if annotation is SupportService {
            if let annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) {
                annotationView.annotation = annotation
                return annotationView
            } else {
                let annotationView = MKPinAnnotationView(annotation:annotation, reuseIdentifier:identifier)
                annotationView.isEnabled = true
                annotationView.canShowCallout = true
                
                let btn = UIButton(type: .detailDisclosure)
                annotationView.rightCalloutAccessoryView = btn
                return annotationView
            }
        }
        
        return nil
    }

    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let service = view.annotation as! SupportService
        let info = service.info
        let title = service.title
        
        let ac = UIAlertController(title: title, message: info, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }


    
}
