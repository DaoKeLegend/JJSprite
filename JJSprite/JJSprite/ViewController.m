//
//  ViewController.m
//  JJSprite
//
//  Created by lucy on 2017/12/9.
//  Copyright © 2017年 com.daoKeLegend. All rights reserved.
//

#import "ViewController.h"
#import "JJSpriteView.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Override Base Function

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    JJSpriteView *spriteView = [[JJSpriteView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:spriteView];
}

@end
