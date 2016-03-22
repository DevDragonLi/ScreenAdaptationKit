Pod::Spec.new do |s|

s.name         = "ScreenCompatible_LFL"
s.version      = "1.0"
s.summary      = "iOS4s-6sp全机型基于缩放实现快速屏幕兼容适配_DragonLi"
s.homepage     = "https://github.com/LFL2018"
s.license      = "MIT"
s.author       = { "DragonLi" => "DragonLi_52171@163.com" }
s.platform     = :ios, "6.0"
s.source       = { :git => "https://github.com/LFL2018/ScreenAdaptation-Rapid.git", :tag => "1.0" }
s.source_files  = "FrameAutoScaleLFL", "*.{h,m}"
s.requires_arc = true
end