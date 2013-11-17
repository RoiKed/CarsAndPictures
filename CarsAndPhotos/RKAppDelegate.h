//
//  RKAppDelegate.h
//  CarsAndPhotos
//
//  Created by Roi Kedarya on 11/13/13.
//  Copyright (c) 2013 Roi Kedarya. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RKNavigationViewController;

@interface RKAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) RKNavigationViewController *navigationViewController;

@end
