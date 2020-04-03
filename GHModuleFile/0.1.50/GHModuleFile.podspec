Pod::Spec.new do |s|
  s.name             = 'GHModuleFile'
  s.version          = '0.1.50'
  s.summary          = '集货办公相机项目文件模块.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'http://nas.iliunian.com:82/GiHoo/GHModuleFile'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:82/GiHoo/GHModuleFile.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'

  s.subspec 'ModuleService' do |ms|
      ms.frameworks = 'UIKit'
      ms.dependency 'BeeHive'
      ms.dependency 'GHModuleUser/Macro'
      ms.dependency 'GHModuleUser/Models'
      ms.dependency 'GHModuleProtocol'
      ms.source_files = 'GHModuleFile/Classes/ModuleService/**/*'
      ms.public_header_files = 'GHModuleFile/Classes/ModuleService/**/*.h'
  end
  s.subspec 'Service' do |service|
      service.frameworks = 'UIKit'
	  service.dependency 'GHCommon/Preferences'
      service.dependency 'GHModuleFile/ModuleService'
      service.dependency 'GHModuleFile/ViewController'
	  service.dependency 'GHModuleFile/FilePreview'
      service.dependency 'GHModuleFile/CompressionSet'
      service.dependency 'GHModuleFile/Unit'
      service.source_files = 'GHModuleFile/Classes/Service/**/*'
      service.public_header_files = 'GHModuleFile/Classes/Service/**/*.h'
  end
  s.subspec 'ApiEnv' do |api|
      api.dependency 'BeeHive'
      api.source_files = 'GHModuleFile/Classes/ApiEnv/**/*'
      api.public_header_files = 'GHModuleFile/Classes/ApiEnv/**/*.h'
  end
  s.subspec 'Compression' do |compression|
      compression.dependency 'GHModuleProtocol'
      compression.source_files = 'GHModuleFile/Classes/Compression/**/*'
      compression.public_header_files = 'GHModuleFile/Classes/Compression/**/*.h'
  end
  s.subspec 'Download' do |download|
      download.source_files = 'GHModuleFile/Classes/Download/**/*'
      download.public_header_files = 'GHModuleFile/Classes/Download/**/*.h'
  end
  s.subspec 'DownloadIndicator' do |downloadindicator|
      downloadindicator.source_files = 'GHModuleFile/Classes/DownloadIndicator/**/*'
      downloadindicator.public_header_files = 'GHModuleFile/Classes/DownloadIndicator/**/*.h'
  end
  s.subspec 'FilePreview' do |filepreview|
      filepreview.subspec 'ViewController' do |vc|
          vc.frameworks = 'UIKit','Photos'
          vc.dependency 'BeeHive'
          vc.dependency 'YYKit'
          vc.dependency 'SDWebImage'
          vc.dependency 'DZNEmptyDataSet'
          vc.dependency 'GHFileExplorer'
          vc.dependency 'GHCommon'
          vc.dependency 'GHModuleFile/Unit'
          vc.dependency 'GHModuleFile/Models'
          vc.dependency 'GHModuleFile/Download'
					vc.dependency 'GHModuleProtocol'
          vc.source_files = 'GHModuleFile/Classes/FilePreview/ViewController/**/*.{h,m}'
          vc.public_header_files = 'GHModuleFile/Classes/FilePreview/ViewController/**/*.h'
          vc.resource_bundles = {
			   'GHModuleFile' => ['GHModuleFile/Assets/**/*']
           }
      end
  end
  s.subspec 'Unit' do |unit|
    unit.dependency 'BeeHive'
    unit.dependency 'GHCommon'
    unit.dependency 'XMNetworking'
    unit.dependency 'GHModuleUser/Models'
    unit.dependency 'GHModuleUser/Preferences'
    unit.dependency 'GHModuleProtocol'
    unit.dependency 'GHModuleFile/Compression'
    unit.dependency 'GHModuleFile/Category'
    unit.dependency 'GHModuleFile/Database'
    unit.dependency 'GHModuleFile/Download'
    unit.dependency 'GHModuleFile/Models'
    unit.source_files = 'GHModuleFile/Classes/Unit/**/*'
    unit.public_header_files = 'GHModuleFile/Classes/Unit/**/*.h'
    unit.subspec 'Request' do |req|
        req.dependency 'YYKit'
        req.dependency 'GHCommon/Network'
        req.dependency 'GHCommon/Category'
        req.dependency 'GHModuleFile/ApiEnv'
        req.source_files = 'GHModuleFile/Classes/Unit/Request/**/*'
        req.public_header_files = 'GHModuleFile/Classes/Unit/Request/**/*.h'
    end
  end
  
  s.subspec 'Database' do |db|
      db.dependency 'GHModuleFile/Models'
      db.source_files = 'GHModuleFile/Classes/Database/*'
      db.public_header_files = 'GHModuleFile/Classes/Database/*.h'
      db.subspec 'Entry' do |entry|
          entry.dependency 'GHCommon'
          entry.dependency 'GHModuleFile/Models'
          entry.dependency 'GHModuleProtocol'
          entry.source_files = 'GHModuleFile/Classes/Database/Entry/*'
          entry.public_header_files = 'GHModuleFile/Classes/Database/Entry/*.h'
          entry.ios.vendored_frameworks ='GHModuleFile/Classes/Database/Entry/Frameworks/Realm.framework'
          entry.ios.library  = 'c++','z'
      end
  end
  s.subspec 'Models' do |models|
    models.dependency 'YYKit'
    models.dependency 'GHCommon/Category'
    models.dependency 'GHModuleProtocol'
    models.source_files = 'GHModuleFile/Classes/Models/**/*'
    models.public_header_files = 'GHModuleFile/Classes/Models/**/*.h'
  end
  s.subspec 'Category' do |cg|
    cg.frameworks = 'UIKit'
    cg.source_files = 'GHModuleFile/Classes/Category/**/*'
    cg.public_header_files = 'GHModuleFile/Classes/Category/**/*.h'
  end
  s.subspec 'CompressionSet' do |cs|
      cs.frameworks = 'UIKit'
      cs.dependency 'GHCommon/General'
      cs.dependency 'GHModuleUser/Preferences'
      cs.dependency 'GHModuleProtocol'
      cs.source_files = 'GHModuleFile/Classes/CompressionSet/**/*'
      cs.public_header_files = 'GHModuleFile/Classes/CompressionSet/**/*.h'
  end
  s.subspec 'ViewController' do |vc|
      vc.frameworks = 'UIKit','Photos'
      vc.dependency 'BeeHive'
      vc.dependency 'YYKit'
      vc.dependency 'SPPageMenu'
      vc.dependency 'SDWebImage'
      vc.dependency 'DZNEmptyDataSet'
      vc.dependency 'GHFileExplorer'
      vc.dependency 'GHCommon/General/ViewController'
      vc.dependency 'GHModuleFile/Unit'
      vc.dependency 'GHModuleFile/Models'
      vc.dependency 'GHModuleFile/Download'
      vc.dependency 'GHModuleProtocol'
      vc.source_files = 'GHModuleFile/Classes/ViewController/**/*'
      vc.public_header_files = 'GHModuleFile/Classes/ViewController/**/*.h'
      vc.resource_bundles = {
          'GHModuleFile' => ['GHModuleFile/Assets/**/*']
      }
      
      vc.subspec 'View' do |view|
          view.frameworks = 'UIKit'
          view.dependency 'YYKit'
          view.dependency 'GHModuleFile/DownloadIndicator'
          view.dependency 'GHCommon/General/View'
          view.dependency 'ReactiveObjC'
          view.dependency 'GHModuleProtocol'
          view.source_files = 'GHModuleFile/Classes/ViewController/View/**/*'
          view.public_header_files = 'GHModuleFile/Classes/ViewController/View/**/*.h'

      end
  end
end
