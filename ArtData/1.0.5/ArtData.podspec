Pod::Spec.new do |s|
  s.name             = 'ArtData'
  s.version          = '1.0.5'
  s.summary          = '每日名画的数据组件'
  s.description      = <<-DESC
该库包含名画的数据接口和处理功能
                       DESC

  s.homepage         = 'http://nas.iliunian.com:88/Medusa/ArtData'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:88/Medusa/ArtData.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.subspec 'Models' do |models|
	  models.source_files = 'ArtData/Models/**/*'
	  models.dependency 'SwiftyJSON', '~> 5.0.1'
	  models.dependency 'HandyJSON', '~> 5.0.4-beta'
  end
	
  s.subspec 'Units' do |units|
	  units.source_files = 'ArtData/Units/**/*'
	  units.dependency 'ArtData/Models'
	  units.dependency 'MonkeyKing' , '~> 2.1.0'
	  units.dependency 'Cache', '~> 6.0.0'
  end
	
  s.subspec 'Network' do |network|
	  network.source_files = 'ArtData/Network/**/*'
	  network.dependency 'ArtData/Models'
	  network.dependency 'ArtData/Units'
	  network.dependency 'Moya', '~> 13.0.0'
	  network.dependency 'SwiftyJSON', '~> 5.0.1'
	  network.dependency 'HandyJSON', '~> 5.0.4-beta'
	  network.dependency 'Alamofire'
	  
  end
	
  s.subspec 'WebSocket' do |ws|
	  ws.source_files = 'ArtData/WebSocket/**/*'
	  ws.dependency 'ArtData/Units'
	  ws.dependency 'Starscream', '~> 4.0.4'
  end
	
  s.subspec 'API' do |api|
	  api.source_files = 'ArtData/API/**/*'
	  api.dependency 'ArtData/Models'
	  api.dependency 'ArtData/Network'
	  api.dependency 'ArtData/Units'
	  api.dependency 'Moya', '~> 13.0.0'
  end
	
  s.subspec 'Modules' do |modules|
	  modules.source_files = 'ArtData/Modules/**/*'
	  modules.dependency 'ArtData/API'
	  modules.dependency 'Qiniu', '~> 8.0.3'
  end
	
end
