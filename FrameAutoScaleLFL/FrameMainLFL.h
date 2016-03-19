//
//  FrameMainLFL.h
//  ScreenAdaptation-Rapid
//
//  Created by vintop_xiaowei on 16/3/20.
//  Copyright © 2016年 DragonLi. All rights reserved.
/**
 1.1 如果工程文件多处使用的话，最好在pch文件中导入#import "FrameMainLFL.h"
 1.2 说明可以设置 CGRect CGPoint  CGSize
 label_LFL.frame =[FrameAutoScaleLFL CGLFLMakeX:100 Y:0 width:100 height:100];
 label_LFL.frame.size = [FrameAutoScaleLFL CGSizeLFLMakeMainScreenSize];
 label_LFL.frame.origin= [FrameAutoScaleLFL CGLFLPointMakeX:200 Y:200];
 其他详细说明参考文件中readme或者demo代码即可.
 https://github.com/LFL2018/ScreenAdaptation-Rapid
 1.3.如果觉得不错,希望给个star ,谢谢.
 */
#ifndef FrameMainLFL_h
#define FrameMainLFL_h
#define ScreenWidthLFL CGRectGetMaxX([UIScreen mainScreen].bounds)
#define ScreenHightLFL CGRectGetMaxY([UIScreen mainScreen].bounds)

#pragma mark 说明:下面二个参数,看公司项目UI图 具体是哪款机型,默认  iphone6
/**
 RealUISrceenH 4/4s 修改480 5/5s 568  6/6s 667  6p/6sp 736
 */
static const float  RealUISrceenHight =  667.0;
/**
 RealUISrceenW  4/4s 5/5s 320  6/6s 375  6p/6sp 414
 */
static const float RealUISrceenWidth = 375.0;

#import "FrameAutoScaleLFL.h"
#pragma mark 一系列宏定义,快速设置frame等
/**
 [FrameAutoScaleLFL CGLFLMakeX:20 CGRectGetX:CGRectGetMaxY(detailUI.frame) width:300 height:30]
 如果觉得这样写麻烦,可以使用一下宏定义
 */
#define WIDTH_LFL(X_LFL) ScreenWidthLFL*(X_LFL)/RealUISrceenWidth
#define HEIGHT_LFL(Y_LFL) ScreenHightLFL*(Y_LFL)/RealUISrceenHight

#define RectMake_LFL(X_LFL,Y_LFL,WIDTH_LFL,HEIGHT_LFL) CGRectMake(ScreenWidthLFL*(X_LFL)/RealUISrceenWidth,ScreenHightLFL*(Y_LFL)/RealUISrceenHight,ScreenWidthLFL*(WIDTH_LFL)/RealUISrceenWidth, ScreenHightLFL*(HEIGHT_LFL)/RealUISrceenHight)

#define EdgeInsets_LFL(X_LFL,Y_LFL,WIDTH_LFL,HEIGHT_LFL) UIEdgeInsetsMake(ScreenWidthLFL*(X_LFL)/RealUISrceenWidth,ScreenHightLFL*(Y_LFL)/RealUISrceenHight,ScreenWidthLFL*(WIDTH_LFL)/RealUISrceenWidth, ScreenHightLFL*(HEIGHT_LFL)/RealUISrceenHight)

#define PointMake_LFL(X_LFL,Y_LFL) CGPointMake(ScreenWidthLFL*(X_LFL)/RealUISrceenWidth, ScreenHightLFL*(Y_LFL)/RealUISrceenHight)

#define SizeMake_LFL(WIDTH_LFL,HEIGHT_LFL) CGSizeMake(ScreenWidthLFL*(WIDTH_LFL)/RealUISrceenWidth, ScreenHightLFL*(HEIGHT_LFL)/RealUISrceenHight)

#endif /* FrameMainLFL_h */
