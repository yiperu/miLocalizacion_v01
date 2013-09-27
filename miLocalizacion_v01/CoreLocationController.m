//
//  CoreLocationController.m
//  miLocalizacion_v01
//
//  Created by Henry AT on 9/27/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import "CoreLocationController.h"

@implementation CoreLocationController

@synthesize locMgr;
@synthesize delegate;

-(id)init {
    self = [super init];
    
    if (self != nil) {
        self.locMgr = [[CLLocationManager alloc] init];
        self.locMgr.delegate = self;
        // Establecer el proposito en la pantalla mediante una cadena
        self.locMgr.purpose = @"My localizacion nevesita conocer tu localizacion para que pueda respotar esto";
    }
    return self;
}

#pragma mark -
#pragma mark delegate methods
-(void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    if ([self.delegate conformsToProtocol:@protocol(CoreLocationControllerDelegate)]) {
        [self.delegate locationUpdate:newLocation];
    }
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {

    if ([self.delegate conformsToProtocol:@protocol(CoreLocationControllerDelegate)]) {
        [self.delegate locationError:error];
    }
}



@end