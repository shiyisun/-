//
//  ViewController.m
//  屏幕截屏
//
//  Created by Jusive on 15/11/27.
//  Copyright © 2015年 Jusive. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //开启位图上下文
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO, 0);
    //获取上下文
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    //拼接路径---->将view的涂层渲染到上下文
    [self.view.layer renderInContext:ctf];
    //获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
    //将图片添加到桌面
    NSData *date = UIImagePNGRepresentation(image);
    [date writeToFile:@"/Users/jusive/Desktop/1.png" atomically:YES];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
