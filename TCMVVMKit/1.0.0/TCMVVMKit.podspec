Pod::Spec.new do |s|
  s.name             = 'TCMVVMKit'
  s.version          = '1.0.0'
  s.summary          = 'A short description of BKMVVMKit.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/isingle/BKMMVMKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isingle' => 'isingle@163.com' }
  s.source           = { :git => 'http://nas.iliunian.com:82/apple/TCMVVMKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
   s.preserve_paths = "#{s.name}/Classes/**/*", "#{s.name}/Assets/**/*", "#{s.name}/Framework/**/*", "#{s.name}/Archive/**/*", "#{s.name}/Dependencies/**/*", "#{s.name}/**/*.pch"
   
   #//common pod
   s.source_files = "#{s.name}/Classes/**/*.{h,m,mm,c,cpp,cc}"
   s.public_header_files = "#{s.name}/Classes/**/*.h"
   
   s.dependency 'MJRefresh'
end
