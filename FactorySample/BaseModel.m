//
//  BaseModel.m
//  FactorySample
//
//  Created by qqqq on 15/12/17.
//  Copyright © 2015年 董永飞. All rights reserved.
//

#import "BaseModel.h"
#import "TextModel.h"
#import "ImageModel.h"
#import <objc/objc-runtime.h>

@implementation BaseModel

//工厂模式, 使用传过来的数据字典创建对应的model
+ (instancetype)modelWithDictionaty:(NSDictionary *)dic {
    BaseModel *model = nil;
    if ([dic[@"style"] isEqualToString:@"text"]) {
        model = [TextModel new];
    }else if ([dic[@"style"] isEqualToString:@"image"]) {
        model = [ImageModel new];
    }
    [model setValuesForKeysWithDictionary:dic];
    return model;
}
- (NSString *)modelToCellClass {
    const char *modelClassName = object_getClassName(self);
    return [NSString stringWithFormat:@"%sCell",modelClassName];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}
@end
