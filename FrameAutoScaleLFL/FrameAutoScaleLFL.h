/*
 The Name Of The Project：FrameAutoScaleLFL.h
 The Creator  ：Created by DragonLi
 Creation Time：On 15/11/14.
 Copyright    ：  Copyright © 2015年 李夫龙. All rights reserved.
 File Content Description：
 1.1 如果工程文件多处使用的话，最好在pch文件中导入#import "FrameAutoScaleLFL.h"
 1.2 说明可以设置 CGRect CGPoint  CGSize
 label_LFL.frame =[FrameAutoScaleLFL CGLFLMakeX:100 Y:0 width:100 height:100];
 label_LFL.frame.size = [FrameAutoScaleLFL CGSizeLFLMakeMainScreenSize];
 label_LFL.frame.origin= [FrameAutoScaleLFL CGLFLPointMakeX:200 Y:200];
 1.3 关于storyBorad xib 的适配解决办法-一行代码搞定全部布局.
 //  1.storyBorad  (填入对应storyBorad 类名即可)
 //  2. eg xib 类名 testXib.xib
 [FrameAutoScaleLFL xibLFLAutoLayoutsWithNibClassName:@"testXib"];
 其他详细说明参考文件中readme即可.
    https://github.com/LFL2018/ScreenAdaptation-Rapid
 
 */

#define ScreenWidthLFL CGRectGetMaxX([UIScreen mainScreen].bounds)
#define ScreenHightLFL CGRectGetMaxY([UIScreen mainScreen].bounds)

/** 这个参数,看公司项目UI图 具体是哪款机型,默认  iphone6
 RealUISrceen 4/4s .m修改480 5/5s 568  6/6s 667  6p/6sp 736
 */
static const float  RealUISrceenHight =  667.0;
/**
 RealUISrceen 4/4s 5/5s 320  6/6s 375  6p/6sp 414
 */
static const float RealUISrceenWidth = 375.0;

#import <UIKit/UIKit.h>

@interface FrameAutoScaleLFL : NSObject
{
    /**  宽度缩放的比例  */
    float _autoSizeScaleX;
    /**  高度缩放的比例  */
    float _autoSizeScaleY;
}

+ (FrameAutoScaleLFL*)sharedFrameAutoScaleLFL;

- (id)initWithAutoSizeScaleX:(float)autoSizeScaleX
              AutoSizeScaleY:(float )autoSizeScaleY;
#pragma mark mark setter,getter 方法
- (void)setWithAutoSizeScaleX:(float)autoSizeScaleX;
- (void)setWithAutoSizeScaleY:(float)autoSizeScaleY;

- (float )autoSizeScaleX;
- (float)autoSizeScaleY;

#pragma mark-----------Commonly used method
/**
 *   storyBoard中得view自动适配
 *  @param storyBoradClassName 需要适配的storyBorad类名.
 */
+ (void)storyBoradLFLAutoLayoutsWithstoryBoradClassName:(NSString *)storyBoradClassName;

/**
 *   Xib中得view自动适配
 *  @param NibClassName 需要适配的xib类名
 */
+ (void)xibLFLAutoLayoutsWithNibClassName:(NSString *)NibClassName;

#pragma mark             CGRect
/**
 setting a view Frame With the UIfigure  number
 */
+ (CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height;
/**
 setting a view Frame With the UIfigure number special CGRectGetY
*/
+ (CGRect)CGLFLMakeX:(CGFloat) x CGRectGetY:(CGFloat) GetY width:(CGFloat) width height:(CGFloat) height;
/**
 setting a view Frame With the UIfigure number special CGRectGetX
 */
+ (CGRect)CGLFLMakeX:(CGFloat) x CGRectGetX:(CGFloat) GetX width:(CGFloat) width height:(CGFloat) height;
/**
 setting a view Frame With the UIfigure number special height eg: 64  always 64 Value
 */
+ (CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y  width:(CGFloat) width heightAllSame:(CGFloat) heightAllSame;
/**
 return a fullSrceen frame
 */
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

@end
