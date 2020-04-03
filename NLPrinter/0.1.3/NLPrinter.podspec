Pod::Spec.new do |s|
  s.name             = 'NLPrinter'
  s.version          = '0.1.3'
  s.summary          = '蓝牙打印机的工具组件类.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://nas.iliunian.com:82/liunian/NLPrinter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:82/liunian/NLPrinter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.source_files = 'NLPrinter/Classes/**/*'
  s.frameworks = 'UIKit', 'CoreBluetooth'
#  s.pod_target_xcconfig = { 'INFOPLIST_FILE' => '${PODS_TARGET_SRCROOT}/Sources/Info.plist'}
end
