//
//  RKAllPicturesView.m
//  CarsAndPhotos
//
//  Created by Roi Kedarya on 11/13/13.
//  Copyright (c) 2013 Roi Kedarya. All rights reserved.
//

#import "RKAllPicturesViewController.h"
#import "RKImageCollectionViewCell.h"
#import "RKCar.h"

@interface RKAllPicturesViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (strong, nonatomic) NSMutableArray* picturesArray;//array of pictures
@end

@implementation RKAllPicturesViewController

- (id)initWithCarsPictures:(NSArray*)carDataSource
{
    self = [super initWithNibName:@"RKAllPicturesViewController" bundle:[NSBundle mainBundle]];
    if (self)
    {
        self.picturesArray =[[NSMutableArray alloc]init];
        [self.picturesArray addObjectsFromArray:carDataSource];
    }
    return self;
}

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UINib *nib = [UINib nibWithNibName:@"RKImageCollectionViewCell" bundle:nil];
    [self.allCarsCollection registerNib:nib forCellWithReuseIdentifier:@"carCell"];
}


#pragma mark - UIcollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.picturesArray count];
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    RKImageCollectionViewCell* cell = [self.allCarsCollection dequeueReusableCellWithReuseIdentifier:@"carCell" forIndexPath:indexPath];
    
    [cell addImageToCell:((RKCar*)(self.picturesArray[indexPath.row])).carImage];
    return cell;
}
    

@end
