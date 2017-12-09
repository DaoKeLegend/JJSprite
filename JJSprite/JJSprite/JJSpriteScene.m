//
//  JJSpriteScene.m
//  JJSprite
//
//  Created by lucy on 2017/12/9.
//  Copyright © 2017年 com.daoKeLegend. All rights reserved.
//

#import "JJSpriteScene.h"

@interface JJSpriteScene()

@property (nonatomic, strong) SKSpriteNode *node;

@end

@implementation JJSpriteScene

#pragma mark - Override Base Function

- (void)didMoveToView:(SKView *)view
{
    SKSpriteNode *node = [[SKSpriteNode alloc] initWithImageNamed:@"girl"];
    node.size = CGSizeMake(150, 150);
    [self addChild:node];
    self.node = node;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
   [self startAnmationWithNode:self.node];
}

#pragma mark - Object Private Function

- (void)startAnmationWithNode:(SKSpriteNode *)node
{
    //移动
    SKAction *moveAction = [SKAction moveTo:CGPointMake(300, 500) duration:2];
    [node runAction:moveAction completion:^{
        [self resetPosition];
    }];
    
    //缩放
    SKAction *scaleAction = [SKAction resizeToWidth:50.0 height:50.0 duration:2];
    [node runAction:scaleAction];
}

- (void)resetPosition
{
    //移动
    SKAction *moveAction = [SKAction moveTo:CGPointMake(0, 0) duration:2];
    [self.node runAction:moveAction];
    
    //缩放
    SKAction *scaleAction = [SKAction resizeToWidth:150.0 height:150.0 duration:2];
    [self.node runAction:scaleAction];
}

@end
