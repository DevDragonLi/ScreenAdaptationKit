/*
 The File Name：FrameAutoScaleLFL.m
 The Creator  ：Created by DragonLi
 Creation Time：On 15/11/14.
 Copyright    ：  Copyright © 2015年 李夫龙. All rights reserved.
 File Content Description：
 */

#import "FrameAutoScaleLFL.h"
@implementation FrameAutoScaleLFL
- (id)initWithAutoSizeScaleX:(float)autoSizeScaleX
              AutoSizeScaleY:(float )autoSizeScaleY{
    self = [super init];
    if (self) {
        _autoSizeScaleX = autoSizeScaleX;
        _autoSizeScaleY = autoSizeScaleY;
    }
    
    return self;
}


- (void)setWithAutoSizeScaleX:(float)autoSizeScaleX{
    _autoSizeScaleX = autoSizeScaleX;
}

- (void)setWithAutoSizeScaleY:(float)autoSizeScaleY{
    _autoSizeScaleY = autoSizeScaleY;
}
- (float)autoSizeScaleX{
    return _autoSizeScaleX;
}
- (float)autoSizeScaleY{
    return _autoSizeScaleY;
}

+ (CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height{
    CGRect rect = CGLFLMake(x, y, width, height);
    return rect;
}
CG_INLINE CGRect
CGLFLMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
    FrameAutoScaleLFL *LFL = [FrameAutoScaleLFL new];
    [LFL AutoSizeScale];
    CGRect rect;
    rect.origin.x = x *LFL.autoSizeScaleX;
    rect.origin.y = y * LFL.autoSizeScaleY;
    rect.size.width = width * LFL.autoSizeScaleX;
    rect.size.height = height * LFL.autoSizeScaleX;
    return rect;
}
/**
 因为iPhone4s屏幕的高度是480，因此当屏幕尺寸大于iPhone4时，autoSizeScaleX和autoSizeScaleY即为当前屏幕和iPhone5尺寸的宽高比。比如,
 如果是5，autoSizeScaleX=1，autoSizeScaleY=1；
 如果是6，autoSizeScaleX=1.171875，autoSizeScaleY=1.17429577；
 如果是6Plus，autoSizeScaleX=1.29375，autoSizeScaleY=1.2957
 */
- (void)AutoSizeScale{
    if(ScreenHight > 480){
     _autoSizeScaleX = ScreenWidth/320;
        
        _autoSizeScaleY = ScreenHight/568;
    }else{
        
        _autoSizeScaleX = 1.0;
        
        _autoSizeScaleY = 1.0;
    }
}

@end
