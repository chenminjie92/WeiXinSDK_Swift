#
# Be sure to run `pod lib lint WeiXinSDK_Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name              = "WeiXinSDK_Swift"
  spec.version           = '1.9.2'
  spec.license           = { :type => 'MIT', :text => <<-LICENSE
                              Copyright 2019
                              LICENSE
                            }
  spec.summary           = "微信sdk"
  spec.description       = <<-DESC
                            微信sdk
                            DESC
  spec.homepage          = "https://github.com/chenminjie92/WeiXinSDK_Swift"
  spec.author            = { "chenminjie" => "845083062@qq.com" }

  spec.source            = { :git => "https://github.com/chenminjie92/WeiXinSDK_Swift.git", :tag => "#{spec.version}" }
  spec.platform          = :ios, "10.0"
  spec.static_framework  = true

  spec.public_header_files = 'WeiXinSDK_Swift/Classes/*.h'
  spec.source_files      = 'WeiXinSDK_Swift/Classes/*'
  spec.frameworks = 'CFNetwork', 'CoreMotion', 'Foundation', 'CoreGraphics', 'SystemConfiguration', 'UIKit', 'CoreText', 'QuartzCore', 'CoreTelephony','WebKit'
  spec.libraries = 'z', 'c++', 'sqlite3.0'
  spec.vendored_libraries = "WeiXinSDK_Swift/Classes/libWeChatSDK.a"
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
end
