Pod::Spec.new do |s|
  s.name             = 'SmartBannerUI'
  s.version          = '0.1.0-MA275.1'
  s.summary          = 'SmartBanner UI SDK — popup & inline banner rendering, multicast delegate, Terra integration.'

  s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '$(git config user.name)' => '$(git config user.email)' }
  s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/485539814',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }

  s.ios.deployment_target = '15.0'
  s.swift_version         = '5.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.vendored_frameworks = 'SmartBannerUI.xcframework'

  s.dependency 'SmartBannerCore',      '~> 0.1.0-MA275'
  s.dependency 'Terra',                '~> 5.0'
  s.dependency 'TerraInstancesManager','~> 5.0'
  s.dependency 'TerraJsBridge',        '~> 2.0'
  s.dependency 'CommonBridgeCommand',  '~> 2.0'
  s.dependency 'TekoTracker',          '~> 3.0'
  s.dependency 'SkeletonView',         '~> 1.30'
  s.dependency 'MBProgressHUD',        '~> 1.2.0'
  s.dependency 'Apollo',               '~> 5.3'
  s.dependency 'ShopFrontWebCoreSDK',  '~> 3.0'
  s.dependency 'Nuke',                 '~> 9.5'
end
