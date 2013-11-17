//
//  RKImageCollectionViewCell.h
//  CarsAndPhotos
//
//  Created by Roi Kedarya on 11/14/13.
//  Copyright (c) 2013 Roi Kedarya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RKImageCollectionViewCell : UICollectionViewCell
@property (nonatomic,strong) IBOutlet UIImageView* carImageView;

- (void) addImageToCell:(UIImage*)image;

@end
