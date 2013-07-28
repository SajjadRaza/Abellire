//
//  ABInfoViewCell.h
//  Abbellire
//
//  Created by Ali Awais on 7/28/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABInfoImageButton.h"

@protocol ABInfoViewCellDelegate <NSObject>

@required

- (void)infoCellSelectedAtIndexPath:(NSIndexPath *)indexPath withInfoIndex:(NSInteger)index;

@end

@interface ABInfoViewCell : UITableViewCell <ABInfoImageButtonDelegate>

@property (nonatomic, assign) NSIndexPath *cellIndexPath;
@property (nonatomic, assign) id <ABInfoViewCellDelegate> delegate;

- (void)updateCell;

@end
