Pod::Spec.new do |s|
  s.name             = 'NLWeChatService'
  s.version          = '0.1.2'
  s.summary          = 'A service for WeChat.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://nas.iliunian.com:88/Services/NLWeChatService'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liunian' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:88/Services/NLWeChatService.git', :tag => s.version.to_s }
  s.social_media_url = 'http://iliunian.cn'
  
  s.ios.deployment_target = '10.0'
  
  s.source_files = 'NLWeChatService/**/*'
  s.public_header_files = 'NLWeChatService/**/*.h'
  s.dependency 'NLServiceProtocol/Protocols'
  s.dependency 'WechatOpenSDK', '~> 1.8.7'
  s.frameworks = 'UIKit'
  s.static_framework = true
  
end
