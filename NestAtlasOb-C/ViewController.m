//
//  ViewController.m
//  NestAtlasOb-C
//
//  Created by Jonathan Bones on 08.06.17.
//  Copyright © 2017 Jonathan Bones. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated {
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 53.960024;
    zoomLocation.longitude = -1.087152;
    
    CLLocationDistance regionRadius = 1000.0;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, regionRadius*2.0, regionRadius*2.0);
    
    [_mapView setRegion:viewRegion animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
