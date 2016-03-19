/*
 The Name Of The Project：FrameAutoScaleLFL.h
 The Creator  ：Created by DragonLi
 Creation Time：On 15/11/14.
 Copyright    ：  Copyright © 2015年 DragonLi. All rights reserved.
 File Content Description：
  */


#import <UIKit/UIKit.h>
#import "FrameMainLFL.h"
@interface FrameAutoScaleLFL : NSObject

+ (FrameAutoScaleLFL*)sharedFrameAutoScaleLFL;

#pragma mark-----------Commonly used method
#pragma mark             CGRect
/**
 setting a view Frame With the UIfigure  number  all value will be size to fit UIScreen
 全部对应数值都将按照比例缩放返回一个进过处理缩放比例的frame.
 */
+ (CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height;
/**
 setting a view Frame With the UIfigure number special CGRectGetY
 全部对应数值都将按照比例缩放而Y参数除外的frame.eg: 获取上个控件的Y,不可以再次缩放.
 */
+ (CGRect)CGLFLMakeX:(CGFloat) x CGRectGetY:(CGFloat) GetY width:(CGFloat) width height:(CGFloat) height;
/**
 setting a view Frame With the UIfigure number special CGRectGetX
 返回正常处理通过CGRectGetX方式的frame(其他均正常) special X eg: 20  always 20 Value
 比如控件,左边距离 屏幕20 就可以使用这个设置
 */
+ (CGRect)CGLFLMakeGetX:(CGFloat)GetX Y:(CGFloat) Y width:(CGFloat) width height:(CGFloat) height;
/**
 setting a view Frame With the UIfigure number special height eg: 64  always 64 Value
 比如导航栏的高度,一直不变,或者设置固定的高度,可以使用
 */
+ (CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y  width:(CGFloat) width heightAllSame:(CGFloat) heightAllSame;
+ (CGRect)CGLFLfullScreen;
#pragma mark            CGPoint
/**
 setting view Frame
 */
+ (CGPoint)CGLFLPointMakeX:(CGFloat) x Y:(CGFloat) y;

#pragma mark            CGsize
/**
 setting view size
 */
+ (CGSize)CGSizeLFLMakeWidth:(CGFloat) widthLFL hight:(CGFloat) hightLFL;
/**
 setting view Size equal MainScreen.
 */
+ (CGSize)CGSizeLFLMakeMainScreenSize;
/**
 setting a view Frame With the UIfigure number special height eg: 64  always 64 Value
 更加方便设置宽高相等的控件,解决4s变形的问题,
 *  @param radiusValue 指定控件的相等的宽或高的数值
 *  @param isScale radiusValue是否不同机型缩放 ,根据不同要求,如果YES 则不同机型控件大小不同,如果所有机型都需保证同样数据,此处填写 NO即可
 */

//+ (CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y radiusValue:(CGFloat)radiusValue isScale:(BOOL)isScale;
/**
 *   storyBoard中得view自动适配
 *  @param storyBoradClassName 需要适配的storyBorad类名.
 */
//+ (void)storyBoradLFLAutoLayoutsWithstoryBoradClassName:(NSString *)storyBoradClassName;

/**
 *   Xib中得view自动适配
 *  @param NibClassName 需要适配的xib类名
 */
//+ (void)xibLFLAutoLayoutsWithNibClassName:(NSString *)NibClassName;

/**
 return a fullSrceen frame
 */

@end
