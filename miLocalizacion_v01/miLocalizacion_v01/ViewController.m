//
//  ViewController.m
//  miLocalizacion_v01
//
//  Created by Henry AT on 9/27/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize CLController;
@synthesize localizacionLabel;
#pragma mark - View lifecycle;

// Implement viewDidLoad to do adicionar setup after loading the view

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CLController = [[CoreLocationController alloc] init];
    CLController.delegate = self;
    [CLController.locMgr startUpdatingLocation];
}


#pragma mark;
#pragma mark -  CoreLocationControllerDelegate methods;
- (void)locationUpdate:(CLLocation *)location {
    self.localizacionLabel.text = [location description];
}

- (void)locationError:(NSError *)error {
    self.localizacionLabel.text =[error description];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setLocalizacionLabel:nil];
    [super viewDidUnload];
}
@end
