Pod::Spec.new do |s|
    s.name             = 'StaffDiscoveryUI'
    s.version          = '5.4.3'
    s.summary          = 'StaffDiscoveryUI'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/453392156',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '15.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'StaffDiscoveryUI.xcframework'
  
    # dependency
    s.dependency 'Logging'
    s.dependency 'RxSwift', '~> 5'
    s.dependency 'RxCocoa', '~> 5'
    s.dependency 'SnapKit', '~> 5.7'
    s.dependency 'Swinject'
    s.dependency 'NSObject+Rx'
    s.dependency 'MBProgressHUD', '~> 1.2'
    s.dependency 'IQKeyboardManagerSwift', '~> 6.5'
    s.dependency 'RxDataSources'
    s.dependency 'FittedSheets', '~> 1.4'
    s.dependency 'ESPullToRefresh'
    s.dependency 'DifferenceKit'

    s.dependency 'TerraInstancesManager', '~> 5.0'
    s.dependency 'TekDiscoveryEvent', '~> 13.2'
    s.dependency 'TekWmsService', '~> 3.0'
    s.dependency 'TekLocalize', '~> 2.0'
    s.dependency 'Apollo', '~> 5.3'
    s.dependency 'HestiaBridgeWebView', '~> 3.0'
    s.dependency 'TerraJsBridge', '~> 2.0'
    s.dependency 'CommonBridgeCommand', '~> 2.0'
    s.dependency 'TekoTracker', '~> 3.0'
    s.dependency 'ShopFrontWebCoreSDK', '~> 3.0'

  end
