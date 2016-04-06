//
//  BaseCell.m
//  FactorySample
//
//  Created by qqqq on 15/12/17.
//  Copyright © 2015年 董永飞. All rights reserved.
//

#import "BaseCell.h"
#import <objc/objc-runtime.h>

@implementation BaseCell

+ (instancetype)cellWithModel:(BaseModel *)baseM {
//    NSString *modelClassName = NSStringFromClass(baseM.class);
    NSString *selfName = [baseM modelToCellClass];
    BaseCell *baseC = [[objc_getClass(selfName.UTF8String) alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:selfName];
    return baseC;
}
- (void)setupCellWithModel:(BaseModel *)model {
    
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
