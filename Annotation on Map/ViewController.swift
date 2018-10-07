//
//  ViewController.swift
//  Annotation on Map
//
//  Created by Amber Akhtar on 9/3/18.
//  Copyright © 2018 Amber Akhtar. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(33.731240, 73.037248)
        let region: MKCoordinateRegion =  MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
    
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "Faisal Mosque"
        annotation.subtitle = "World's famous mosque"
        map .addAnnotation(annotation)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

