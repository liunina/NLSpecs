Pod::Spec.new do |s|
  s.name             = 'NLWeiboSDK'
  s.version          = '1.0.0'
  s.summary          = 'A short description of NLWeiboSDK.'

  s.description      = <<-DESC
封装微博SWIFT
                       DESC

  s.homepage         = 'http://git.iliunian.com/Apple/NLWeiboSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://git.iliunian.com/Apple/NLWeiboSDK.git', :tag => s.version.to_s }
	s.ios.deployment_target = '12.0'
	s.swift_version = '5.0'
	s.requires_arc = true
	s.static_framework = true
	s.vendored_frameworks = 'Vendor/NLWeibo.framework'
	s.frameworks  = 'Security', 'CoreGraphics', 'WebKit'
	s.libraries = 'z', 'c++'
	s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
