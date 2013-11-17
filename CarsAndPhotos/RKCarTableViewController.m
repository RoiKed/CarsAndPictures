//
//  RKCarTableViewController.m
//  CarsAndPhotos
//
//  Created by Roi Kedarya on 11/13/13.
//  Copyright (c) 2013 Roi Kedarya. All rights reserved.
//

#import "RKNavigationViewController.h"
#import "RKCarTableViewController.h"
#import "RKImageViewController.h"
#import "RKAllPicturesViewController.h"
#import "RKCar.h"


@interface RKCarTableViewController () <UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *carTable;
@property (strong, nonatomic) NSMutableArray* carDataSource;
@property (weak, nonatomic) IBOutlet UIButton *showAll;

@end


@implementation RKCarTableViewController

- (void)addCarName:(NSString*)theCarName andImage:(UIImage*)theCarImage
{
    RKCar *car = [[RKCar alloc]init];
    car.carImage=theCarImage;
    car.carName=theCarName;
    if (!self.carDataSource)
    {
        self.carDataSource = [[NSMutableArray alloc]init];
    }
    [self.carDataSource addObject:car];
}

- (void) initialArray
{
    [self addCarName:@"Bugatti" andImage:[UIImage imageNamed:@"Bugatti_veyron.jpg"]];

    [self addCarName:@"Ferrari" andImage:[UIImage imageNamed:@"ferrari.jpg"]];
        [self addCarName:@"BMW" andImage:[UIImage imageNamed:@"BMW.jpg"]];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self initialArray];
        // Custom initialization
    }
    return self;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.carDataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell* cell = [[UITableViewCell alloc]init];
    cell.textLabel.text=((RKCar*)(self.carDataSource[indexPath.row])).carName;
    return cell;
}

- (void)tableView:(UITableView *)sender didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    RKImageViewController* imageViewController = [[RKImageViewController alloc] initWithImage:((RKCar*)(self.carDataSource[indexPath.row])).carImage];
    [self.navigationController pushViewController:imageViewController animated:YES];
}


- (IBAction)ShowAllCars:(id)sender
{
    RKAllPicturesViewController *allPicturesView = [[RKAllPicturesViewController alloc]initWithCarsPictures:self.carDataSource];
    
    [self.navigationController pushViewController:allPicturesView animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
