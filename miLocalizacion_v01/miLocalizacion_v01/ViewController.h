//
//  ViewController.h
//  miLocalizacion_v01
//
//  Created by Henry AT on 9/27/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreLocationController.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) CoreLocationController *CLController;
@property (strong, nonatomic) IBOutlet UILabel *localizacionLabel;

@end
