Pod::Spec.new do |s|
  s.name             = 'NUIAPHelper'
  s.version          = '1.0.1'
  s.summary          = 'A short description of NUIAPHelper.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://nas.iliunian.com:82/apple/NUIAPHelper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:82/apple/NUIAPHelper.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.source_files  = "IAP/*.{h,m}"
  s.exclude_files = "IAP/Local"

  s.public_header_files = "IAP/IAP.h", "IAP/LocalReceiptValidator.h", "IAP/RMAppReceipt.h"
  
  s.resource  = "IAP/AppleIncRootCertificate.cer"
  
  s.xcconfig = {"HEADER_SEARCH_PATHS" => "$(PODS_TARGET_SRCROOT)/IAP/openssl/include"} # 让RMAppReceipt能够使用<>引用openssl文件
  s.requires_arc = true
  s.dependency "SystemServices"
  s.dependency 'NUBlocksKit/Core'
  s.dependency 'NUBlocksKit/DynamicDelegate'


  s.subspec 'IAPDelegateTempate' do |ss|
    ss.resource = 'IAP/IAPDelegateTemplate/*.{h,m}'
  end
  
  s.subspec 'openssl' do |ss|
    ss.source_files  = "IAP/openssl/include/**/*.h"
    ss.vendored_libraries = 'IAP/openssl/libcrypto.a', 'IAP/openssl/libssl.a'
    ss.private_header_files = 'IAP/openssl/include/**/*.h' # 让openssl本身能够使用<>引用文件
  end
end
