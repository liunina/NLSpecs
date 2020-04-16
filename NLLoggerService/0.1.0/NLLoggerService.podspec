Pod::Spec.new do |s|
  s.name             = 'NLLoggerService'
  s.version          = '0.1.0'
  s.summary          = 'A service for Logger.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://nas.iliunian.com:82/Services/NLLoggerService'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liunian' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:82/Services/NLLoggerService.git', :tag => s.version.to_s }
  s.social_media_url = 'http://iliunian.cn'
  
  s.ios.deployment_target = '10.0'
  
  s.source_files = 'NLLoggerService/**/*'
  s.public_header_files = 'NLLoggerService/**/*.h'
  s.dependency 'NLServiceProtocol/Protocols'
  s.dependency 'NLFoundation/Logger'
  
end
