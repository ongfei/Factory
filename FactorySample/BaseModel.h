//
//  BaseModel.h
//  FactorySample
//
//  Created by qqqq on 15/12/17.
//  Copyright © 2015年 董永飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject
/**
 *  工厂模式, 使用传过来的数据字典创建对应的model
 */
+ (instancetype)modelWithDictionaty:(NSDictionary *)dic;
- (NSString *)modelToCellClass;

@end
