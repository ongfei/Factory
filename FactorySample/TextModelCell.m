//
//  TextModelCell.m
//  FactorySample
//
//  Created by qqqq on 15/12/17.
//  Copyright © 2015年 董永飞. All rights reserved.
//

#import "TextModelCell.h"
#import "TextModel.h"

@implementation TextModelCell
{
    UILabel *_lab;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _lab = ({
            _lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
            [self.contentView addSubview:_lab];
            _lab;
        });
    }
    return self;
}
- (void)setupCellWithModel:(BaseModel *)model {
    _lab.text = [(TextModel *)model content];
}
@end
