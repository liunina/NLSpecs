Pod::Spec.new do |s|
  s.name             = 'NLNetworkService'
  s.version          = '0.1.1'
  s.summary          = '实现NLServiceProtocol网络协议的网络服务组件'

  s.description      = <<-DESC
						Developer can use NLNetworkService make iOS programming easier
                       DESC

  s.homepage         = 'http://nas.iliunian.com:82/Services/NLNetworkService'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liunian' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:82/Services/NLNetworkService.git', :tag => s.version.to_s }
  s.social_media_url = 'http://iliunian.cn'
  s.ios.deployment_target = '10.0'
  s.source_files = 'NLNetworkService/**/*'
  s.public_header_files = 'NLNetworkService/**/*.h'
  s.dependency 'NLServiceProtocol/Protocols'
  s.dependency 'AFNetworking', '~> 4.0.0'
  s.frameworks = 'UIKit'
  
end
