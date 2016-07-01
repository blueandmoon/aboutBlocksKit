//
//  ViewController.m
//  aboutBlocksKit
//
//  Created by 李根 on 16/6/24.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ViewController.h"
#import "BlocksKit/BlocksKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    [self bk_performBlock:^(id obj) {
//        NSLog(@"heheh");
//    } afterDelay:3.0];


    NSArray *arr = @[@"9", @"2", @"3", @"6"];
//    [arr bk_each:^(id obj) {
//        NSLog(@"%@", obj);
//    }];

//    [arr bk_apply:^(id obj) {
//        NSLog(@"%@", obj);
//    }];

    
    BOOL i = [arr bk_match:^BOOL(id obj) {
        
        return [obj isEqual:@"0"];
        
    }];
    NSLog(@"%d", i);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
