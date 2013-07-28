//
//  ABDesignerViewController.m
//  Abbellire
//
//  Created by Ali Awais on 7/27/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABDesignerViewController.h"

@interface ABDesignerViewController ()

@end

@implementation ABDesignerViewController

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
}

// UITableView Delegate and Data Source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return TableCellHeightDefault;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ABInfoViewCell *cell = nil;
    
    cell = (ABInfoViewCell *)[tableView dequeueReusableCellWithIdentifier:@"TripleInfoCell"];
    if (cell == nil) {
        NSArray *itemCells = [[NSBundle mainBundle] loadNibNamed:@"ABTripleInfoViewCell" owner:self options:nil];
        cell = [itemCells objectAtIndex:0];
    }
    
    [cell setDelegate:self];
    [cell updateCell];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    return cell;
}


// Info Cell delegate
- (void)infoCellSelectedAtIndexPath:(NSIndexPath *)indexPath withInfoIndex:(NSInteger)index
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
