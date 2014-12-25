//
//  FirstViewController.swift
//  mulan
//
//  Created by swift on 19/12/14.
//  Copyright (c) 2014 swift. All rights reserved.
//

import UIKit
import MapKit

class FirstViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var theButton: UIButton!
    
    
    @IBOutlet weak var theMapView: MKMapView!
    
    @IBOutlet weak var TheView: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var latitude:CLLocationDegrees  = 48.896786
        var longitude:CLLocationDegrees = 2.318359
        
        var latDelta:CLLocationDegrees = 0.005
        var longDelta:CLLocationDegrees = 0.005
        
        var TheSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var schoolLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var theRegion: MKCoordinateRegion = MKCoordinateRegionMake(schoolLocation, TheSpan)
        
        self.theMapView.setRegion(theRegion, animated: true)
        
        var theSchoolAnnotation = MKPointAnnotation()
        
        theSchoolAnnotation.coordinate = schoolLocation
        theSchoolAnnotation.title = "42"
        theSchoolAnnotation.subtitle = "Maison close, amphi inclu"
        
        self.theMapView.addAnnotation(theSchoolAnnotation)
    }
    
    @IBAction func theButtonAction(sender: AnyObject) {
        
        var latitude:CLLocationDegrees = 48.896581
        var longitude:CLLocationDegrees = 2.318376
        
        var latDelta:CLLocationDegrees = 0.002
        var lonDelta:CLLocationDegrees = 0.002
        
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var churchLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(churchLocation, theSpan)
        
        self.theMapView.setRegion(theRegion, animated: true)
        
    }
    
    @IBAction func TheViewAction(sender: AnyObject) {
        if TheView.selectedSegmentIndex == 0 {
            theMapView.mapType = MKMapType.Hybrid
        }
        if TheView.selectedSegmentIndex == 1 {
            theMapView.mapType = MKMapType.Satellite
        }
        if TheView.selectedSegmentIndex == 2 {
            theMapView.mapType = MKMapType.Standard
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}