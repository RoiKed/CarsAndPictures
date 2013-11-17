//
//  RKImageCollectionViewCell.m
//  CarsAndPhotos
//
//  Created by Roi Kedarya on 11/14/13.
//  Copyright (c) 2013 Roi Kedarya. All rights reserved.
//

#import "RKImageCollectionViewCell.h"

@implementation RKImageCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    return self;
}

- (void) addImageToCell:(UIImage*)image
{
//    self.imageToBePresentedOnCell=image
    self.carImageView.image = image;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
