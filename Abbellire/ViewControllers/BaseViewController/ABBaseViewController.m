//
//  ABBaseViewController.m
//  Abbellire
//
//  Created by Ali Awais on 7/27/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABBaseViewController.h"

@interface ABBaseViewController ()

@end

@implementation ABBaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Initializing top bar
    [self.topBarView setDelegate:self];
    
    // Show topbar navigation button
    if ([[self.navigationController viewControllers] count] > 1)
    {
        [self.topBarView hideBackButton:NO];
    }
    else
    {
        [self.topBarView hideBackButton:YES];
    }
}

// ABTopBarView Delegate
- (void)topbarViewBackButtonPressed
{
    [self.navigationController popViewControllerAnimated:YES];
}

// UITable View Delegate and Data Source
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return TableCellHeightDefault;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
