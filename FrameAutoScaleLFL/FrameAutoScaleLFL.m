/*
 The File Name：FrameAutoScaleLFL.m
 The Creator  ：Created by DragonLi
 Creation Time：On 15/11/14.
 Copyright    ：  Copyright © 2015年 DragonLi. All rights reserved.
 File Content Description：
 */

#import "FrameAutoScaleLFL.h"

@interface FrameAutoScaleLFL ()
@property (nonatomic ,assign)float autoSizeScaleX;/**< 宽度缩放的比例  */
@property (nonatomic ,assign)float autoSizeScaleY;/**< 高度缩放的比例  */
@end

@implementation FrameAutoScaleLFL

static FrameAutoScaleLFL *SINGLETON = nil;

static bool isFirstAccess = YES;

#pragma mark - Public Method

+ (instancetype)sharedFrameAutoScaleLFL{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        isFirstAccess = NO;
        SINGLETON = [[super allocWithZone:NULL] init];
        
    });
    
    return SINGLETON;
}
- (instancetype) init
{
    if(SINGLETON){
        return SINGLETON;
    }
    if (isFirstAccess) {
        [self doesNotRecognizeSelector:_cmd];
    }
    [self AutoSizeScale];
    self = [super init];
    return self;
}

#pragma mark - Life Cycle

+ (instancetype) allocWithZone:(NSZone *)zone
{
    return [self sharedFrameAutoScaleLFL];
}

#pragma mark ----storyBorad Xib AutoLayouts
/**
 *   storyBoard中得view自动适配
 *  @param storyBoradClassName 需要适配的storyBorad类名.
 */
+ (void)storyBoradLFLAutoLayoutsWithstoryBoradClassName:(NSString *)storyBoradClassName
{
    [self scaleAutoLayouts: [[UIViewController alloc] initWithNibName:storyBoradClassName bundle:nil].view ];
}

/**
 *   Xib中得view自动适配
 *  @param NibClassName 需要适配的xib类名
 */
+ (void)xibLFLAutoLayoutsWithNibClassName:(NSString *)NibClassName
{
    [self scaleAutoLayouts:[[[NSBundle mainBundle] loadNibNamed: NibClassName owner:nil options:nil]firstObject]];
}
/**
 *可视化的缩放适配
 *  @param LayoutsBaseView 需要适配的控件添加的父类view
 */
+ (void)scaleAutoLayouts:(UIView *)LayoutsBaseView{
    for (UIView *viewLFL in LayoutsBaseView.subviews) {
        viewLFL.frame = [FrameAutoScaleLFL CGLFLMakeX:viewLFL.frame.origin.x Y:viewLFL.frame.origin.y width:viewLFL.frame.size.width height:viewLFL.frame.size.height];
        if (viewLFL.subviews.count) {
            [self scaleAutoLayouts:LayoutsBaseView];
        }
    }
}


#pragma mark -CGRect
/**
 setting a view Frame With the UIfigure  number  all value will be size to fit UIScreen
 *  @return 全部对应数值都将按照比例缩放返回一个进过处理缩放比例的frame.
 */
+ (CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height{
    return CGLFLMake(x, y, width, height);
}
/**
 setting a view Frame With the UIfigure number special CGRectGetY
 全部对应数值都将按照比例缩放而Y参数除外的frame.eg: 获取上个控件的Y,不可以再次缩放.
 */
+ (CGRect)CGLFLMakeX:(CGFloat) x CGRectGetY:(CGFloat) GetY width:(CGFloat) width height:(CGFloat) height{
    CGFloat CGRectGetY = [FrameAutoScaleLFL sharedFrameAutoScaleLFL].autoSizeScaleY;
    return CGLFLMake(x, GetY / CGRectGetY, width, height);
}
/**
 返回正常处理通过CGRectGetX方式的frame(其他均正常)
 */
+ (CGRect)CGLFLMakeGetX:(CGFloat)GetX Y:(CGFloat) Y width:(CGFloat) width height:(CGFloat) height{
    CGFloat CGRectGetX = [FrameAutoScaleLFL sharedFrameAutoScaleLFL].autoSizeScaleX;
    return CGLFLMake(GetX / CGRectGetX, Y, width, height);
}
/**
 setting a view Frame With the UIfigure number special height eg: 64  always 64 Value
 比如导航栏的高度,一直不变,或者设置固定的高度,可以使用.
 */
+ (CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y  width:(CGFloat) width heightAllSame:(CGFloat) heightAllSame{
    CGFloat heightValue_LFL = [FrameAutoScaleLFL sharedFrameAutoScaleLFL].autoSizeScaleY;
    return CGLFLMake(x, y, width,heightAllSame / heightValue_LFL);
}

/**
 返回一个全屏幕的 frame
 */
+ (CGRect)CGLFLfullScreen{
    return CGLFLMake(0, 0, RealUISrceenWidth, RealUISrceenHight);
}
#pragma mark CGPoint
+ (CGPoint)CGLFLPointMakeX:(CGFloat) x Y:(CGFloat) y{
    return CGPointLFLMake(x, y);
}
#pragma mark CGsize
+ (CGSize)CGSizeLFLMakeWidth:(CGFloat) widthLFL hight:(CGFloat) hightLFL{
    return CGSizeLFLMake(widthLFL, hightLFL);
}
+ (CGSize)CGSizeLFLMakeWH:(CGFloat)WH{
    return CGSizeLFLMake(WH, WH);
}
+ (CGSize)CGSizeLFLMakeMainScreenSize{
    return CGSizeLFLMake( RealUISrceenWidth, RealUISrceenHight);
}

#pragma mark 重写CGRectMake方法
/**
 重写CGRectMake 方法
 */
CG_INLINE CGRect
CGLFLMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
    
    FrameAutoScaleLFL *LFL = [FrameAutoScaleLFL sharedFrameAutoScaleLFL];
    CGRect rect;
    rect.origin.x = x *LFL.autoSizeScaleX;
    rect.origin.y = y * LFL.autoSizeScaleY;
    rect.size.width = width * LFL.autoSizeScaleX;
    rect.size.height = height * LFL.autoSizeScaleY;
    return rect;
}
/**
 重写CGPoint 方法
 */
CG_INLINE CGPoint
CGPointLFLMake(CGFloat x, CGFloat y)
{
    FrameAutoScaleLFL *LFL = [FrameAutoScaleLFL sharedFrameAutoScaleLFL];
    CGPoint pointLFL;
    pointLFL.x = x * LFL.autoSizeScaleX;
    pointLFL.y = y * LFL.autoSizeScaleY;
    return pointLFL;
}
/**
 重写CGSize 方法
 */
CG_INLINE CGSize
CGSizeLFLMake(CGFloat width, CGFloat height)
{
    FrameAutoScaleLFL *LFL = [FrameAutoScaleLFL sharedFrameAutoScaleLFL];
    CGSize sizeLFL;
    sizeLFL.width = width* LFL.autoSizeScaleX;
    sizeLFL.height = height* LFL.autoSizeScaleY;
    return sizeLFL;
}

#pragma mark------所有设置中只计算一次缩放比例
- (void)AutoSizeScale{
    _autoSizeScaleX = ScreenWidthLFL/RealUISrceenWidth;
    _autoSizeScaleY = ScreenHightLFL/RealUISrceenHight;
}
@end
