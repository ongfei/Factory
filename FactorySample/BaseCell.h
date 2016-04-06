//
//  BaseCell.h
//  FactorySample
//
//  Created by qqqq on 15/12/17.
//  Copyright © 2015年 董永飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseModel.h"

@interface BaseCell : UITableViewCell

+ (instancetype)cellWithModel:(BaseModel *)baseM;
- (void)setupCellWithModel:(BaseModel *)model;
@end
