0、制作条件
>1、CocoaPods     - version - 1.5.3
>2、Sourcetree   - version - 2.7.6
>3、SublimeText - version - 3.0.0
>4、Terminal - version - 2.8.2 

1、使用Sourcetree clone 项目

2、创建*.podspec文件
```
pod spec create HBCCommonNavgationBar git@github.com:pengshengsongcode/HBCCommonNavgationBar.git
```

![屏幕快照 2018-08-27 下午2.15.52.png](https://upload-images.jianshu.io/upload_images/1505288-2a758cd810b17246.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/310)


3、使用SublimeText修改*.podspec文件

```
默认

#
#  Be sure to run `pod spec lint HBCCommonNavgationBar.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "HBCCommonNavgationBar"
  s.version      = "0.0.1"
  s.summary      = "A short description of HBCCommonNavgationBar."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                   DESC

  s.homepage     = "http://EXAMPLE/HBCCommonNavgationBar"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT (example)"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "pengshengsong" => "shengsongpeng@huangbaoche.com" }
  # Or just: s.author    = "pengshengsong"
  # s.authors            = { "pengshengsong" => "shengsongpeng@huangbaoche.com" }
  # s.social_media_url   = "http://twitter.com/pengshengsong"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "http://EXAMPLE/HBCCommonNavgationBar.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

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

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end

```
* Spec Metadata（Spec资料）	
* s.name	名称
* s.version	版本
* s.summary	简介
* s.description	详细介绍
* s.homepage	主页地址
* s.screenshots	屏幕截图
* Spec License（Spec执照）	
* s.license	开源协议
* Author Metadata（作者资料）	
* s.author	作者、邮件地址
* s.authors	多个作者
* s.social_media_url	社交地址
* Platform Specifics（平台特性）	
* s.platform	平台
* s.ios.deployment_target	ios部署目标
* s.osx.deployment_target	osx部署目标
* s.watchos.deployment_target	watchos部署目标
* s.tvos.deployment_target	tvos部署目标
* Source Location（源定位）	
* s.source	开源地址、版本号
* Source Code（源代码）	
* s.source_files	开源文件夹、文件
* s.exclude_files	排除文件夹、文件
* s.public_header_files	头文件
* Resources（资源）	
* s.resource	资源文件
* s.resources	多个资源文件
* s.preserve_paths	保留路径
* Project Linking（项目关联）	
* s.framework	框架
* s.frameworks	多个框架
* s.library	库
* s.libraries	多个库
* Project Settings（项目设置）	
* s.requires_arc	需要ARC模式
* s.xcconfig	配置
* s.dependency	依赖Podspecs

```
修改后 - 公有库

Pod::Spec.new do |s|
  s.name                = "HBCCommonNavgationBar"    #名称
  s.version             = "0.0.1"             #版本号
  s.summary             = "Just Testing."     #简短介绍，下面是详细介绍
  s.description         = <<-DESC
                          Testing Private Podspec.

                          * Markdown format.
                          * Don't worry about the indent, we strip it!
                          DESC
  s.homepage            = "https://github.com/pengshengsongcode/HBCCommonNavgationBar"                           #主页,这里要填写可以访问到的地址，不然验证不通过
  s.license             = 'MIT'              #开源协议
  s.author              = { "彭盛凇" => "psscode@163.com" }                   #作者信息
  s.source              = { :git => "https://github.com/pengshengsongcode/HBCCommonNavgationBar.git", :tag => "0.0.1" }      #项目地址，这里不支持ssh的地址，验证不通过，只支持HTTP和HTTPS，最好使用HTTPS
  s.platform            = :ios, '8.0'            #支持的平台及版本
  s.requires_arc        = true                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC
  s.source_files        = 'Class/**/*.{h,m}'     #代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，如果需要在项目中分组显示，这里也要做相应的设置
  # s.public_header_files = 'Pod/Classes/**/*.h'   #公开头文件地址
  s.frameworks          = 'UIKit'                  #所需的framework，多个用逗号隔开
end

```

```
修改后 - 私有库

Pod::Spec.new do |s|
  s.name                = "HBCDataPersistence"    #名称
  s.version             = "1.0.1"             #版本号
  s.summary             = "1、NSUserDefault 2、keychain sharing 3、iCloud"     #简短介绍，下面是详细介绍
  s.description         = <<-DESC
                          Testing Private Podspec.
                          #1、NSUserDefault 2、keychain sharing 3、iCloud
                          * Markdown format.
                          * Don't worry about the indent, we strip it!
                          DESC
  s.homepage            = "http://gitlab.hbc.tech/pengshengsong/HBCDataPersistence"                           #主页,这里要填写可以访问到的地址，不然验证不通过
  s.license             = { :type => "MIT", :file => "LICENSE" }              #开源协议
  s.author              = { "彭盛凇" => "shengsongpeng@huangbaoche.com" }                   #作者信息
  s.source              = { :git => "http://gitlab.hbc.tech/pengshengsong/HBCDataPersistence.git", :tag => s.version.to_s }      #项目地址，这里不支持ssh的地址，验证不通过，只支持HTTP和HTTPS，最好使用HTTPS
  s.platform            = :ios, '8.0'            #支持的平台及版本
  s.requires_arc        = true                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC
  s.source_files        = 'HBCDataPersistence/**/*.{h,m}'     #代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，如果需要在项目中分组显示，这里也要做相应的设置
  # s.public_header_files = 'Pod/Classes/**/*.h'   #公开头文件地址
  s.frameworks          = 'Foundation'                  #所需的framework，多个用逗号隔开
  s.dependency "SAMKeychain", "1.5.3"
end
```

对应目录结构

```
Desktop
├── HBCDataPersistence
│   ├── Example - #可以没有
│   ├── HBCDataPersistence#代码源文件，对应s.source_files
│   ├── HBCDataPersistence.podspec#spec文件
│   └── LICENSE#协议文件 对应s.license

```

4、验证
```
pod lib lint
```
或
```
 pod lib lint HBCDataPersistence.podspec --allow-warnings
```

![屏幕快照 2018-08-27 下午3.03.58.png](https://upload-images.jianshu.io/upload_images/1505288-8b7f4f957740ee17.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/620)

5、验证通过后将代码分支以及本地代码推送到仓库，保证远端代码与本地代码同步

6、注册trunk

```
pod trunk register psscode@163.com '彭盛凇' --description='彭盛凇的macbook pro'
```

7、如果已经注册, 可使用下面的指令:
```
pod trunk register eloy@example.com --description='Work Laptop'
pod trunk register eloy@example.com
```

![屏幕快照 2018-08-27 下午3.05.51.png](https://upload-images.jianshu.io/upload_images/1505288-ea8f67816a65a9dd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/620)

![lALPBbCc1sBfgW3NCYTNBGU_1125_2436.png_620x10000q90g.jpg](https://upload-images.jianshu.io/upload_images/1505288-ff5ec05d45e23665.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/310)

![lALPBbCc1sBfgWjNCYTNBGU_1125_2436.png_620x10000q90g.jpg](https://upload-images.jianshu.io/upload_images/1505288-d04919540e8706af.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/310)



8、推送公有库到CocoaPods

打印详细信息时建议使用
```
pod trunk push HBCDataPersistence.podspec --verbose
```

报WARN  | [iOS] license: Unable to find a license file时建议使用

```
 pod trunk push HBCDataPersistence.podspec --allow-warnings
```

![屏幕快照 2018-08-27 下午3.20.06.png](https://upload-images.jianshu.io/upload_images/1505288-f9492e0b3ee607fb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/620)


9、更新repo

```
pod repo update
```
10、search 公库
```
pod search HBCCommonNavgationBar
```
![屏幕快照 2018-08-27 下午3.22.54.png](https://upload-images.jianshu.io/upload_images/1505288-d7488337b431b89e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/620)

其他命令

```
查看个人信息
pod trunk me
```



遇到的坑

1、

```
pengchengsongdeMacBook-Pro:DataPersistence pengchengsong$ pod lib lint

 -> DataPersistence (1.0.0)
    - ERROR | name: The name of the spec should match the name of the file.
    - ERROR | [iOS] frameworks: A framework should only be specified by its name
    - ERROR | [iOS] unknown: Encountered an unknown error (No podspec found for `DataPersistence` in `/Users/pengchengsong/Desktop/DataPersistence/DataPersistence`) during validation.

[!] DataPersistence did not pass validation, due to 3 errors.
You can use the `--no-clean` option to inspect any issue.

```

出现这个错误是因为，我的podspec 文件名称和里面设置的 ** s.source_files** 和 s.name 不一致导致的，修改为一致的即可！

2、
```
pengchengsongdeMacBook-Pro:DataPersistence pengchengsong$ pod lib lint

 -> PSSDataPersistence (1.0.0)
    - ERROR | [iOS] frameworks: A framework should only be specified by its name
    - ERROR | [iOS] unknown: Encountered an unknown error (The `PSSDataPersistence` pod failed to validate due to 1 error:
    - ERROR | [iOS] frameworks: A framework should only be specified by its name

) during validation.

[!] PSSDataPersistence did not pass validation, due to 2 errors.
You can use the `--no-clean` option to inspect any issue.
pengchengsongdeMacBook-Pro:DataPersistence pengchengsong$ 

```

3、pod search找不到自己trunk push的库的解决方法

```
cd ~/Library/Caches/CocoaPods
```

删除search_index.json

4、cocoapods官网搜索不到是因为延迟原因，不影响正常开发
![image.png](https://upload-images.jianshu.io/upload_images/1505288-44ae2410bc54b4dd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
