//
//  ABPromotionViewController.m
//  Abbellire
//
//  Created by Ali Awais on 7/27/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABPromotionViewController.h"
#import "ABDesignerViewController.h"
#import "ABSingleInfoViewCell.h"
#import "ABDoubleInfoViewCell.h"
#import "ABTripleInfoViewCell.h"

@interface ABPromotionViewController ()

@end

@implementation ABPromotionViewController

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
    
    [self updateTopNaivationView];
    
    [self addSettingBarView];
    [self addCartBarView];
}

- (void)updateTopNaivationView
{
    // TO DO - Custom Menu View to be created
    UIView *menuView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 568, 50)];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    [btn setTitle:@"Designer" forState:UIControlStateNormal];
    [btn setTitle:@"Designer" forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(designerButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [menuView addSubview:btn];
    [menuView setBackgroundColor:[UIColor clearColor]];
    
    [self.topBarView updateTitleView:menuView];
}

- (void)addSettingBarView
{
    NSArray *itemsArray = [[NSBundle mainBundle] loadNibNamed:@"ABSettingsBarView" owner:self options:nil];
    ABSettingsBarView *settingsView = [itemsArray objectAtIndex:0];
    
    [settingsView setDelegate:self];
    CGRect frame = [settingsView frame];
    frame.origin.y = 90;
    [settingsView setFrame:frame];
    
    [self.view addSubview:settingsView];
}

- (void)addCartBarView
{
    NSArray *itemsArray = [[NSBundle mainBundle] loadNibNamed:@"ABCartBarView" owner:self options:nil];
    ABCartBarView *cartView = [itemsArray objectAtIndex:0];
    
    [cartView setDelegate:self];
    CGRect frame = [cartView frame];
    frame.origin.x = self.view.frame.size.width - frame.size.width;
    frame.origin.y = 90;
    [cartView setFrame:frame];
    
    [cartView setCartItemCount:5];
    [self.view addSubview:cartView];
}

- (void)designerButtonPress
{
    ABDesignerViewController *designerVC = [[ABDesignerViewController alloc] initWithNibName:@"ABBaseViewController" bundle:nil];
    [self.navigationController pushViewController:designerVC animated:YES];
}

// UITableView Delegate and Data Source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        return TableCellHeightLarge;
    }
    
    return TableCellHeightDefault;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ABInfoViewCell *cell = nil;
    
    if (indexPath.row == 0)
    {
        cell = (ABInfoViewCell *)[tableView dequeueReusableCellWithIdentifier:@"SingleInfoCell"];
    }
    else if (indexPath.row == 1) {
        cell = (ABInfoViewCell *)[tableView dequeueReusableCellWithIdentifier:@"DoubleInfoCell"];
    }
    else {
        cell = (ABInfoViewCell *)[tableView dequeueReusableCellWithIdentifier:@"TripleInfoCell"];
    }
    
    if (cell == nil) {
        if (indexPath.row == 0) {
            NSArray *itemCells = [[NSBundle mainBundle] loadNibNamed:@"ABSingleInfoViewCell" owner:self options:nil];
            cell = [itemCells objectAtIndex:0];
        }
        else if (indexPath.row == 1) {
            NSArray *itemCells = [[NSBundle mainBundle] loadNibNamed:@"ABDoubleInfoViewCell" owner:self options:nil];
            cell = [itemCells objectAtIndex:0];
        }
        else {
            NSArray *itemCells = [[NSBundle mainBundle] loadNibNamed:@"ABTripleInfoViewCell" owner:self options:nil];
            cell = [itemCells objectAtIndex:0];
        }
    }
    
    [cell setDelegate:self];
    [cell updateCell];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    return cell;
}


// Info Cell delegate
- (void)infoCellSelectedAtIndexPath:(NSIndexPath *)indexPath withInfoIndex:(NSInteger)index
{
    NSLog(@"TAPPED");
}

// Settings Bar View Delegate
- (void)settingBarFavoritesButtonPressed
{

}

- (void)settingBarSettingsButtonPressed
{

}

- (void)settingBarLocationButtonPressed
{

}

// Cart Bar View Delegat
- (void)cartViewButtonPressed
{

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
