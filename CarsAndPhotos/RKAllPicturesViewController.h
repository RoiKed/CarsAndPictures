//
//  RKAllPicturesView.h
//  CarsAndPhotos
//
//  Created by Roi Kedarya on 11/13/13.
//  Copyright (c) 2013 Roi Kedarya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RKAllPicturesViewController : UIViewController

@property (weak, nonatomic) IBOutlet UICollectionView *allCarsCollection;

- (id)initWithCarsPictures:(NSArray*)carPictures;

@end






