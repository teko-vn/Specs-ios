firebase_firestore_version = '10.18.0'

Pod::Spec.new do |s|
  s.name                   = 'TekoFirebaseFirestore'
  s.module_name            = 'FirebaseFirestore'
  s.version                = firebase_firestore_version
  s.summary                = 'A replica Firebase Firestore podspec.'
  s.description            = 'A replica Firebase Firestore podspec that provides pre-compiled binaries/frameworks instead'
  s.homepage               = 'http://invertase.io'
  s.license                = 'Apache-2.0'
  s.source                 = { :git => 'https://github.com/invertase/firestore-ios-sdk-frameworks.git', :tag => firebase_firestore_version }
  s.cocoapods_version      = '>= 1.10.0'
  s.authors                = 'Invertase Limited'
  s.pod_target_xcconfig    = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.static_framework       = true

  # These frameworks, minimums, and the c++ library are here from, and copied specifically to match, the upstream podspec:
  # https://github.com/firebase/firebase-ios-sdk/blob/34c4bdbce23f5c6e739bda83b71ba592d6400cd5/FirebaseFirestore.podspec#L103
  # They may need updating periodically.
  s.ios.frameworks         = 'SystemConfiguration', 'UIKit'
  s.osx.frameworks         = 'SystemConfiguration'
  s.library                = 'c++'
  s.ios.deployment_target  = '11.0'
  s.osx.deployment_target  = '10.13'

  s.vendored_frameworks    = 'FirebaseFirestore/*.xcframework'
  s.preserve_paths         = 'FirebaseFirestore/*.xcframework'
  s.resource               =  'FirebaseFirestore/Resources/*.bundle'
end
