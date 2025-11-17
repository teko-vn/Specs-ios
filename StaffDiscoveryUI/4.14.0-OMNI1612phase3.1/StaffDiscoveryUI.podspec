Pod::Spec.new do |s|
    s.name             = 'StaffDiscoveryUI'
    s.version          = '4.14.0-OMNI1612phase3.1'
    s.summary          = 'StaffDiscoveryUI'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/317337779',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
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
    s.dependency 'FittedSheets'
    s.dependency 'ESPullToRefresh'
    s.dependency 'DifferenceKit'

    s.dependency 'TerraInstancesManager', '~> 4.1'
    s.dependency 'TekDiscoveryEvent', '~> 11.5'
    s.dependency 'TekWmsService', '~> 2.0'
    s.dependency 'TekLocalize', '~> 1.1'
    s.dependency 'Apollo', '~> 4.4'
    s.dependency 'HestiaBridgeWebView', '~> 2.1'
    s.dependency 'TerraJsBridge', '~> 1.1'
    s.dependency 'CommonBridgeCommand', '~> 1.1'
    s.dependency 'TekoTracker', '~> 2.3'
    s.dependency 'ShopFrontWebCoreSDK', '~> 2.1'

  end
