# valid spec before submitting.
Pod::Spec.new do |s|
  s.name             = 'ArtData'
  s.version          = '1.0.1'
  s.summary          = '每日名画的数据组件'
  s.description      = <<-DESC
该库包含名画的数据接口和处理功能
                       DESC

  s.homepage         = 'http://git.iliunian.com/Medusa/ArtData'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://git.iliunian.com/Medusa/ArtData.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.source_files = 'ArtData/**/*'

  s.dependency 'Moya', '~> 13.0.0'
  s.dependency 'SwiftyJSON', '~> 5.0.0'
  s.dependency 'HandyJSON', '~> 5.0.3-beta'
  s.dependency 'Cache', '~> 6.0.0'
  s.dependency 'Starscream', '~> 4.0.4'
  s.dependency 'Qiniu', '~> 8.0.3'
  s.dependency 'MonkeyKing' , '~> 2.1.0'

end
