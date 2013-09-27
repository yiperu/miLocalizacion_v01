//
//  CoreLocationController.h
//  miLocalizacion_v01
//
//  Created by Henry AT on 9/27/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


@protocol CoreLocationControllerDelegate
@required
-(void) locationUpdate:(CLLocation *)location; // act locacion enviados Aqui
-(void) locationError:(NSError *) error;    // errors are sent here
@end


@interface CoreLocationController : NSObject <CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *locMgr;
@property (nonatomic, strong) id delegate;

@end
