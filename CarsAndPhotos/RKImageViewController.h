//
//  RKImageViewController.h
//  CarsAndPhotos
//
//  Created by Roi Kedarya on 11/13/13.
//  Copyright (c) 2013 Roi Kedarya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RKImageViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (id)initWithImage:(UIImage*)image;
@end
