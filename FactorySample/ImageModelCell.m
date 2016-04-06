//
//  ImageModelCell.m
//  FactorySample
//
//  Created by qqqq on 15/12/17.
//  Copyright © 2015年 董永飞. All rights reserved.
//

#import "ImageModelCell.h"
#import "ImageModel.h"

@implementation ImageModelCell
{
    UIImageView *_imageView;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _imageView = ({
            _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
            [self.contentView addSubview:_imageView];
            _imageView;
        });
    }
    return self;
}
- (void)setupCellWithModel:(BaseModel *)model {
    UIImage *image = [UIImage imageNamed:[(ImageModel *)model imageUrl]];
    _imageView.image = image;
}
@end
