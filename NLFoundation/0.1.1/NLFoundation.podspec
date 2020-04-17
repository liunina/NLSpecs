Pod::Spec.new do |s|
	s.name             = 'NLFoundation'
	s.version          = '0.1.1'
	s.summary          = 'A short description of NLFoundation.'
	
	s.description      = <<-DESC
	TODO: Add long description of the pod here.
	DESC
	
	s.homepage         = 'http://nas.iliunian.com:82/Services/NLFoundation'
	s.license          = { :type => 'MIT', :file => 'LICENSE' }
	s.author           = { 'liunian' => 'i19850511@gmail.com' }
	s.source           = { :git => 'http://nas.iliunian.com:82/Services/NLFoundation.git', :tag => s.version.to_s }
	
	s.ios.deployment_target = '10.0'
	s.requires_arc = true
	s.public_header_files = 'NLFoundation/NLFoundation.h'
	s.source_files = 'NLFoundation/NLFoundation.h'
	
	s.subspec 'Internal' do |ss|
		ss.public_header_files = 'NLFoundation/Internal/*.h'
		ss.source_files = 'NLFoundation/Internal/**/*'
	end
	
	s.subspec 'Logger' do |ss|
		ss.dependency 'CocoaLumberjack'
		ss.dependency 'NLFoundation/Internal'
		ss.public_header_files = 'NLFoundation/Logger/*.h'
		ss.source_files = 'NLFoundation/Logger/**/*'
	end
	s.subspec 'Cache' do |ss|
		ss.dependency 'DFCache'
		ss.dependency 'NLFoundation/Internal'
		ss.public_header_files = 'NLFoundation/Cache/*.h'
		ss.source_files = 'NLFoundation/Cache/**/*'
	end
	
	s.subspec 'Category' do |ss|
		ss.dependency 'GTMBase64'
		ss.dependency 'NLFoundation/Internal'
		ss.dependency 'NLFoundation/DataSafe'
		ss.public_header_files = 'NLFoundation/Category/*.h'
		ss.source_files = 'NLFoundation/Category/**/*'
	end
	s.subspec 'Hard' do |ss|
		ss.dependency 'NLFoundation/Internal'
		ss.public_header_files = 'NLFoundation/Hard/*.h'
		ss.source_files = 'NLFoundation/Hard/**/*'
	end
	
	s.subspec 'DataSafe' do |ss|
		ss.dependency 'NLFoundation/Internal'
		ss.dependency 'NLFoundation/Hard'
		ss.public_header_files = 'NLFoundation/DataSafe/*.h'
		ss.source_files = 'NLFoundation/DataSafe/**/*'
	end
	
	s.subspec 'ArchiveData' do |ss|
		ss.dependency 'NLFoundation/Internal'
		ss.dependency 'NLFoundation/FileManager'
		ss.public_header_files = 'NLFoundation/ArchiveData/*.h'
		ss.source_files = 'NLFoundation/ArchiveData/**/*'
	end
	
	s.subspec 'FileManager' do |ss|
		ss.dependency 'NLFoundation/Internal'
		ss.public_header_files = 'NLFoundation/FileManager/*.h'
		ss.source_files = 'NLFoundation/FileManager/**/*'
	end
	
	s.subspec 'Predicate' do |ss|
		ss.dependency 'NLFoundation/Internal'
		ss.public_header_files = 'NLFoundation/Predicate/*.h'
		ss.source_files = 'NLFoundation/Predicate/**/*'
	end
	
	s.subspec 'Keychain' do |ss|
		ss.dependency 'NLFoundation/Internal'
		ss.public_header_files = 'NLFoundation/Keychain/*.h'
		ss.source_files = 'NLFoundation/Keychain/**/*'
	end
	
	s.subspec 'Media' do |ss|
		ss.dependency 'NLFoundation/Internal'
		ss.public_header_files = 'NLFoundation/Media/*.h'
		ss.source_files = 'NLFoundation/Media/**/*'
		ss.frameworks = 'AudioToolBox'
	end
	
	s.frameworks = "Foundation", "MobileCoreServices", "CoreServices"
	s.xcconfig = {"OHTER_LINKER_FLAGS" => "-OjbC"}
	s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
end
