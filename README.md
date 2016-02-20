# ScreenAdaptation-Rapid- DragonLi

## 2016年2月19更新简介
###1. 增加如果布局中有涉及设置导航栏和使用CGRectGetMaxY() CGRectGetMaxX等导致再次缩放的问题,提供新API方法,eg:长文本无法获取具体Y点,需要通过CGRectGetMaxY()方式,如果使用之前方法,会导致y数值二次缩放,导致出错.代码调整,便于查看demo
```objc
/**
1. 针对设置导航栏 64 Y (不可以缩放情况使用这个) specially for height
setting a view Frame With the UIfigure number special height eg: 64  always 64 Value
*/
+ (CGRect)CGLFLMakeX:(CGFloat) x Y:(CGFloat) y  width:(CGFloat) width heightAllSame:(CGFloat) heightAllSame;
/**
setting a view Frame With the UIfigure number special CGRectGetY
*/
+ (CGRect)CGLFLMakeX:(CGFloat) x CGRectGetY:(CGFloat) GetY width:(CGFloat) width height:(CGFloat) height;
/**
setting a view Frame With the UIfigure number special CGRectGetX
*/
+ (CGRect)CGLFLMakeX:(CGFloat) x CGRectGetX:(CGFloat) GetX width:(CGFloat) width height:(CGFloat) height;
```


## 2016年1月23更新简介
### 一.更新可视化的storyBoard和xib中得view自动适配方法,参考demo代码,一行搞定!,布局控件时可以(按照UI手机型号)尺寸布局,布局完成后,Size选择Freeform即可,可以自行测试.
### 二.修改屏幕宽高的宏定义名字,避免和项目中的重名



## 2016年1月22更新简介
### 一. 适配4s-6sp全机型(之前适配到5而已,网上缩放适配也都是到5)
### 二.虽然代码适配网上有masonry,但是有的确实也比较麻烦点,对于一般公司项目中UI图,可以使用本框架直接设置即可,简单.


## 2015年11月14日更新说明

##1.使用简介

###1.1 把demo中FrameAutoScaleLFL文件夹拖入工程即可.如果工程文件多处使用的话，建议在在pch文件中导入#import "FrameAutoScaleLFL.h"即可.

###1.2 控件设置坐标时 如下写即可 ,直接调用类方法设置,eg: CGRect CGPoint  CGSize
```objc
label_LFL.frame =[FrameAutoScaleLFL CGLFLMakeX:100 Y:0 width:100 height:100];
label_LFL.frame.size = [FrameAutoScaleLFL CGSizeLFLMakeMainScreenSize];
label_LFL.frame.origin= [FrameAutoScaleLFL CGLFLPointMakeX:200 Y:200];
```

###1.3导入此头文件后可以通过 ScreenWidth  ScreenHight 获取当前设备的屏幕宽和高。

## 2.demo缩放适配介绍

###2.1 因为iPhone4s屏幕的高度是480，5/5s是568 ,宽度都为320.因此当屏幕尺寸大于iPhone4时，autoSizeScaleX和autoSizeScaleY即为当前屏幕和iPhone5尺寸的宽高比。比如,如果是5，autoSizeScaleX=1，autoSizeScaleY=1；如果是6/6s，autoSizeScaleX=1.171875，autoSizeScaleY=1.17429577；如果是6Plus/6sPlus，autoSizeScaleX=1.29375，autoSizeScaleY=1.2957
 
## 3.使用注意事项：

###3.1 如果发现使用后代码适配依旧有问题，请检查你的工程中，启动图片是否完整，如果启动图片不完整，默认最大图片尺寸为屏幕尺寸


## 4. 参考资料和其他

### 1. https://www.zhihu.com/question/25421514

###  2. http://blog.csdn.net/phunxm/article/details/42174937


###4.1 有任何问题，请及时 issues me

	Email:  dragonli_52171@163.com

