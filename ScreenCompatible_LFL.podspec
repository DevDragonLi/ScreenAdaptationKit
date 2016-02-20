
Pod::Spec.new do |s|

  s.name         = "ScreenCompatible_LFL"
  s.version      = "0.0.1"
  s.summary      = "iOS4s-6sp全机型基于缩放实现快速屏幕兼容适配"
  s.description  = '
    一. 适配4s-6sp全机型(之前适配到5而已,网上缩放适配也都是到5)
    二.虽然代码适配网上有masonry,但是有的确实也比较麻烦点,对于一般公司项目中UI图,可以使用本框架直接设置即可,简单.'
  s.homepage     = "https://github.com/LFL2018"
  s.screenshots  = "http://upload-images.jianshu.io/upload_images/984089-2cc484625247ecad.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240", "http://upload-images.jianshu.io/upload_images/984089-9e08b9cc582abf1f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"
s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
   s.author       = { "LFL" => "dragonli_52171@163.com" }
    s.ios.deployment_target = '7.0'

  s.source       = { :git => "https://github.com/LFL2018/ScreenAdaptation-Rapid.git", :tag => "0.0.1" }

  s.source_files  = "FrameAutoScaleLFL" , "*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

   s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
