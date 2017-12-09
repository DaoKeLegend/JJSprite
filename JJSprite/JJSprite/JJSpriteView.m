//
//  JJSpriteView.m
//  JJSprite
//
//  Created by lucy on 2017/12/9.
//  Copyright © 2017年 com.daoKeLegend. All rights reserved.
//

#import "JJSpriteView.h"
#import "JJSpriteScene.h"

@implementation JJSpriteView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor yellowColor];
        JJSpriteScene *spriteScene = [JJSpriteScene sceneWithSize:self.bounds.size];
        spriteScene.backgroundColor = [UIColor lightGrayColor];
        [self presentScene:spriteScene];
    }
    return self;
}

@end
