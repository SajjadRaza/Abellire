//
//  ABBaseViewController.h
//  Abbellire
//
//  Created by Ali Awais on 7/27/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABTopBarView.h"
#import "ABConstants.h"

@interface ABBaseViewController : UIViewController <ABTopBarViewDelegate>

@property (weak, nonatomic) IBOutlet ABTopBarView *topBarView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
