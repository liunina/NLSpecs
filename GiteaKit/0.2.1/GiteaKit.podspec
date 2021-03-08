Pod::Spec.new do |s|
  s.name             = 'GiteaKit'
  s.version          = '0.2.1'
  s.summary          = 'A short description of GiteaKit.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://nas.iliunian.com:88/Apple/GiteaKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:88/Apple/GiteaKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/iamliunian'
  s.ios.deployment_target = '11.0'

  s.public_header_files = 'GiteaKit/GiteaKit.h'
  s.source_files = 'GiteaKit/*'
	
  s.subspec 'Models' do |ss|
	ss.source_files = 'GiteaKit/Models/**/*'
	ss.public_header_files = 'GiteaKit/Models/**/*.h'
  end
  s.subspec 'Data' do |ss|
	ss.dependency 'GiteaKit/Models'
	ss.source_files = 'GiteaKit/Data/**/*'
	ss.public_header_files = 'GiteaKit/Data/**/*.h'
  end
  s.dependency 'JSONModel', '~> 1.8.0'
  s.dependency 'NLServiceProtocol'
  s.dependency 'BeeHive'
end
