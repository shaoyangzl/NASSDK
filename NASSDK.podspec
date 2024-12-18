Pod::Spec.new do |s|

  s.name             = 'NASSDK'
  s.version          = '1.4.17'
  s.summary          = '智家云硬盘SDK'

  s.homepage         = 'https://www.yixin.im'
  s.license          = { :type => 'Copyright', :file => 'Copyright 2022 Yixin' }
  s.author           = 'Yixin Develop Team'
  s.source           = { :http => "https://nos-yx.netease.com/yixinpublic/manager-pulish/iossdk/nas_sdk_v#{s.version}.zip" }
  
  s.ios.deployment_target = '11.0'

  s.public_header_files = 'nas_sdk/NASSDK.Framework/**/NASSDKNative.h'

  s.source_files = 'nas_sdk/NASSDK.Framework/**/*.h'

  s.vendored_frameworks = "nas_sdk/*.framework"

  s.frameworks = "UIKit"
  s.libraries = "bz2", "z", "c++"

  s.dependency 'YYModel','~>1.0.4'
  s.dependency 'SDWebImage','>=5.10.4'
  s.dependency 'FMDB','>=2.7.5'
  s.dependency 'DKImagePickerController','~>4.3.4'

  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
  
end

