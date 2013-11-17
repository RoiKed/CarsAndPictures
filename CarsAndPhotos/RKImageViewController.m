//
//  RKImageViewController.m
//  CarsAndPhotos
//
//  Created by Roi Kedarya on 11/13/13.
//  Copyright (c) 2013 Roi Kedarya. All rights reserved.
//

#import "RKImageViewController.h"

@interface RKImageViewController ()
@property (nonatomic,weak) UIImage* imageToShow;
@end

@implementation RKImageViewController

- (id)initWithImage:(UIImage*)image
{
    self = [super initWithNibName:nil bundle:nil];
    self.imageToShow=image;
    return self;
}






- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.imageViewer.image = self.image;
    if (self)
    {
        self.imageView.image=self.imageToShow;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
