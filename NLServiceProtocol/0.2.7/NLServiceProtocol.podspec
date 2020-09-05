Pod::Spec.new do |s|
  s.name             = 'NLServiceProtocol'
  s.version          = '0.2.7'
  s.summary          = '利用BeeHive框架分离基础服务协议'
  s.description      = <<-DESC
  利用BeeHive框架分离基础服务,将所有服务进行协议声明,该库是所有这些基础服务的协议声明.
                       DESC

  s.homepage         = 'http://nas.iliunian.com:88/Services/NLServiceProtocol'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:88/Services/NLServiceProtocol.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.public_header_files = 'NLServiceProtocol/NLServiceProtocol.h'
  s.source_files = 'NLServiceProtocol/NLServiceProtocol.h'
  s.subspec 'Models' do |ss|
      ss.frameworks = 'UIKit'
      ss.source_files = 'NLServiceProtocol/Models/**/*'
      ss.public_header_files = 'NLServiceProtocol/Models/**/*.h'
  end
  
  s.subspec 'Protocols' do |ss|
	  ss.dependency 'BeeHive'
      ss.dependency 'NLServiceProtocol/Models'
      ss.source_files = 'NLServiceProtocol/Protocols/**/*'
      ss.public_header_files = 'NLServiceProtocol/Protocols/**/*.h'
  end
end
