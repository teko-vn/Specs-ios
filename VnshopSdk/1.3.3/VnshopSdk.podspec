Pod::Spec.new do |s|
	s.name                   = 'VnshopSdk'
	s.version                = '1.3.3'
	s.summary                = 'VnshopSdk.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = { :http => 'https://github.com/teko-vn/Specs-ios/releases/download/' + s.name.to_s + '-v' + s.version.to_s + '/VnshopSdk.framework.zip' }
	s.vendored_frameworks    = 'VnshopSdk.framework'
	s.public_header_files    = 'VnshopSdk.framework/Headers/*.h'
	s.source_files           = 'VnshopSdk.framework/Headers/*.{h,m,swift}'

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}

	s.ios.deployment_target  = '10.0'

  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
      'ONLY_ACTIVE_ARCH' => 'YES'
    }
  s.user_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 
    'ONLY_ACTIVE_ARCH' => 'YES' 
  }

	s.dependency 'Firebase/Performance'
  	s.dependency 'FirebasePlugin', '~> 0.1.2'
  
	s.dependency 'Terra', '~> 2.3.0'
	s.dependency 'Minerva', '~> 2.4.1'
	s.dependency 'Janus', '~> 2.3.4'

	s.dependency 'TekUserService', '~> 2.2.0'
	s.dependency 'TekTicketService', '~> 2.2.0'
	s.dependency 'TekStnService', '~> 2.2.0'
	s.dependency 'TekSearchService', '~> 2.2.0'
	s.dependency 'TekPpmService', '~> 2.2.0'
	s.dependency 'TekPolicyService', '~> 2.2.0'
	s.dependency 'TekOrderService', '~> 2.2.0'
	s.dependency 'TekLocationService', '~> 2.2.0'
	s.dependency 'TekIdentityService', '~> 2.2.0'
	s.dependency 'TekListingService', '~> 2.2.0'
	s.dependency 'TekDiscoveryService', '2.2.0'
	s.dependency 'TekCrmService', '~> 2.2.0'
 	s.dependency 'TekCoreUploader', '~> 1.0.1'
	s.dependency 'TekoMediaPreview'

#ui
	s.dependency 'UIColor_Hex_Swift', '~> 4.0.2'
	s.dependency 'Toast-Swift', '~> 5.0.0'
	s.dependency 'FittedSheets', '~> 1.4.5'
	s.dependency 'VPAttributedFormat', '~> 1.2.5'
	s.dependency 'TTTAttributedLabel'
	s.dependency 'DifferenceKit'
	s.dependency 'SkeletonView', '~> 1.8.7'
	s.dependency 'BSImagePicker', '~> 3.3.1'

#realm
	s.dependency 'RealmSwift', '~> 3.18.0'

#rx
	s.dependency 'RxCocoa', '~> 5.1.0'
	s.dependency 'RxSwift', '~> 5.1.0'
	s.dependency 'RxRelay', '~> 5.1.0'
	s.dependency 'RxRealm', '~> 1.0.0'

#google
	s.dependency 'GooglePlaces', '~> 3.4.0'
	s.dependency 'GoogleMaps', '~> 3.4.0'

#decode
	s.dependency 'JWTDecode', '~> 2.4'

# tracker
	s.dependency 'TekoTracker'
	s.dependency 'TekoTracker/Ecommerce'

end