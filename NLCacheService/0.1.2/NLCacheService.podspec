Pod::Spec.new do |s|
  s.name             = 'NLCacheService'
  s.version          = '0.1.2'
  s.summary          = 'A short description of NLCacheService.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://nas.iliunian.com:82/Services/NLCacheService'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liunian' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:82/Services/NLCacheService.git', :tag => s.version.to_s }
  s.social_media_url = 'http://iliunian.cn'
  
  s.ios.deployment_target = '10.0'
  
  s.source_files = 'NLCacheService/**/*'
  s.public_header_files = 'NLCacheService/**/*.h'
  s.dependency 'NLServiceProtocol/Protocols'
  s.dependency 'NLFoundation/Cache'
end
