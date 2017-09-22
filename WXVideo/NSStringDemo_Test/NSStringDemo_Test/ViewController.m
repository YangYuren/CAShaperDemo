//
//  ViewController.m
//  NSStringDemo_Test
//
//  Created by Yang on 2017/9/22.
//  Copyright © 2017年 Tucodec. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@property(nonatomic,strong)NSString * str1;
@property(nonatomic,copy)NSString * str2;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * str = @"This is a test";
    //NSMutableString * str = [NSMutableString stringWithFormat:@" hellow"];
    //self.str1 = str;
    //self.str2 = str;
    //NSLog(@"%p,%p",str,&str);
    //NSLog(@"%p,%p",_str1,&_str1);
    //NSLog(@"%p,%p",_str2,&_str2);
    
    //str是一个指针变量，它指向str对象的地址
    //&str指的是str这个指针变量所在的地址。
    NSLog(@"%@",str);
    NSLog(@"----->%p,----->%p",str,&str);
    Person * p = [[Person alloc] init];
    NSString * str1 = [p description];
    NSLog(@"%@",str1);
}

@end
