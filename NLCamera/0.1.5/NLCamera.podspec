#
# Be sure to run `pod lib lint NLCamera.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NLCamera'
  s.version          = '0.1.5'
  s.summary          = '集成了滤镜的拍照组件.'
  s.description      = <<-DESC
  拍照组件,包含滤镜等功能,自定义控制器,拍照组件,包含滤镜等功能,自定义控制器,拍照组件,包含滤镜等功能,自定义控制器,拍照组件,包含滤镜等功能,自定义控制器
                       DESC

  s.homepage         = 'https://git.iliunian.cn/apple/NLCamera'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'https://git.iliunian.cn/apple/NLCamera.git', :tag => s.version.to_s }
  s.module_name      = 'NLCamera'
  s.ios.deployment_target = '9.0'
  s.platform = :ios, '9.0'
  s.compiler_flags   = '-fmodules'
  
  s.subspec 'Default' do |default|
      default.frameworks = 'UIKit', 'AVFoundation', 'CoreMotion'
      default.source_files = 'NLCamera/Classes/*'
      default.public_header_files = 'NLCamera/Classes/*.h'
  end
  
  s.subspec 'Filters' do |filters|
      filters.framework = 'CoreMedia','CoreVideo','OpenGLES','QuartzCore'
      filters.dependency 'NLCamera/Default'
      filters.source_files = 'NLCamera/Classes/Filters/*'
      filters.public_header_files = 'NLCamera/Classes/Filters/*.h'
      filters.ios.vendored_frameworks = 'NLCamera/Classes/Filters/Framework/GPUImage.framework'
      filters.resource_bundles = {
          'NLCamera' => ['NLCamera/Assets/*.png']
      }
      filters.xcconfig = { "OTHER_LDFLAGS" => "-lz -ObjC" }
  end
  
  s.default_subspec = 'Default'
end
