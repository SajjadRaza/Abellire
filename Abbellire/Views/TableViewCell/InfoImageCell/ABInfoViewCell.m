//
//  ABInfoViewCell.m
//  Abbellire
//
//  Created by Ali Awais on 7/28/13.
//  Copyright (c) 2013 Ali Awais. All rights reserved.
//

#import "ABInfoViewCell.h"

@implementation ABInfoViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)infoImageSelectedWithTag:(int)tag
{
    [self.delegate infoCellSelectedAtIndexPath:self.cellIndexPath withInfoIndex:tag];
}

- (void)updateCell
{

}

@end
