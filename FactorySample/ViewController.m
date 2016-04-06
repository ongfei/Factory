//
//  ViewController.m
//  FactorySample
//
//  Created by qqqq on 15/12/17.
//  Copyright © 2015年 董永飞. All rights reserved.
//

#import "ViewController.h"
#import "BaseModel.h"
#import "BaseCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *factoryTableView;
@property (nonatomic, strong) NSMutableArray *factoryArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.factoryArr = @[].mutableCopy;
    NSArray *array = @[@{@"style":@"text",
                         @"content":@"abc",
                           },
                       @{
                           @"style":@"image",
                           @"imageUrl":@"2.jpg",
                           },
                       @{@"style":@"text",
                         @"content":@"123",
                         },
                       @{
                           @"style":@"image",
                           @"imageUrl":@"2.jpg",
                           },
                       @{@"style":@"text",
                         @"content":@"sda",
                         },
                       @{
                           @"style":@"image",
                           @"imageUrl":@"2.jpg",
                           },
                       @{@"style":@"text",
                         @"content":@"hgsd",
                         },
                       @{
                           @"style":@"image",
                           @"imageUrl":@"2.jpg",
                           }
                       ];
    for (NSDictionary *dic in array) {
        BaseModel *baseM = [BaseModel modelWithDictionaty:dic];
        [self.factoryArr addObject:baseM];
    }

    self.factoryTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    self.factoryTableView.delegate = self;
    self.factoryTableView.dataSource = self;
    [self.view addSubview:self.factoryTableView];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.factoryArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BaseModel *model = self.factoryArr[indexPath.row];
    BaseCell *cell = [tableView dequeueReusableCellWithIdentifier:[model modelToCellClass]];
    if (!cell) {
        cell = [BaseCell cellWithModel:model];
    }
    [cell setupCellWithModel:model];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
