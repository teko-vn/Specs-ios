Pod::Spec.new do |s|
    s.name             = 'DiscoveryUI'
    s.version          = '5.11.1-OMNI1550.2'
    s.summary          = 'DiscoveryUI'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/314551277',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'DiscoveryUI.xcframework'
  
    s.dependency 'Logging'
    #ui
    s.dependency 'UIColor_Hex_Swift', '~> 5.1'
    s.dependency 'Toast-Swift', '~> 5.0'
    s.dependency 'FittedSheets', '~> 1.4'
    s.dependency 'VPAttributedFormat', '~> 1.2'
    s.dependency 'TTTAttributedLabel'
    s.dependency 'DifferenceKit'
    s.dependency 'SkeletonView', '~> 1.30'
    s.dependency 'BSImagePicker', '~> 3.3'
    s.dependency 'IQKeyboardManagerSwift', '~> 6.5'
    s.dependency 'DeviceKit'
    s.dependency 'ESPullToRefresh'
    s.dependency 'SnapKit', '~> 5.7'
    s.dependency 'ShopFrontWebCoreSDK', '~> 2.1'
    s.dependency 'MBProgressHUD', '~> 1.2.0'
    #realm
    s.dependency 'RxRealm'
    s.dependency 'RealmSwift', '~> 10.20.0'
    #rx
    s.dependency 'RxCocoa', '~> 5.1.0'
    s.dependency 'RxSwift', '~> 5.1.0'
    s.dependency 'RxRelay', '~> 5.1.0'
    #decode
    s.dependency 'JWTDecode', '~> 3.0'

    s.dependency 'TerraInstancesManager', '~> 4.1'
    s.dependency 'Apollo', '~> 4.4'
    s.dependency 'ApolloTheme', '~> 2.1'
    s.dependency 'TekDiscoveryEvent', '11.6.0-OMNI1550.3'
    s.dependency 'TekLocalize', '~> 1.1'
    s.dependency 'TekoTracker', '~> 2.3'
  end
