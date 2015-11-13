/*
 The Name Of The Project：FrameAutoScaleLFL.h
 The Creator  ：Created by DragonLi
 Creation Time：On 15/11/14.
 Copyright    ：  Copyright © 2015年 李夫龙. All rights reserved.
 File Content Description： 
 1. 工程的 pch 文件中导入#import "FrameAutoScaleLFL.h"
 2. 控件设置坐标时 如下写即可 ,直接调用类方法设置
 label_LFL.frame =[FrameAutoScaleLFL CGLFLMakeX:100 Y:0 width:100 height:100];
 3.导入此头文件后可以通过 ScreenWidth  ScreenHight 获取当前设备的屏幕宽和高。
 */
//获取当前的屏幕宽和高
#define ScreenWidth [[UIScreen mainScreen]bounds].size.width
#define ScreenHight [[UIScreen mainScreen]bounds].size.height
#import <Foundation/Foundation.h>

@interface FrameAutoScaleLFL : NSObject
{
    //宽度增加的比例
    float _autoSizeScaleX;
    //高度增加的比例
    float _autoSizeScaleY;
}
/**
 指定初始化方法
 */
- (id)initWithAutoSizeScaleX:(float)autoSizeScaleX
              AutoSizeScaleY:(float )autoSizeScaleY;
#pragma mark mark setter,getter 方法
- (void)setWithAutoSizeScaleX:(float)autoSizeScaleX;
- (void)setWithAutoSizeScaleY:(float)autoSizeScaleY;

- (float )autoSizeScaleX;
- (float)autoSizeScaleY;
/**
 设置 Frame
 */
+(CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height;
@end
