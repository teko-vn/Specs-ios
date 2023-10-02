Pod::Spec.new do |s|
    s.name             = 'OrderUISDK'
    s.version          = '3.2.0-ECOM479.2'
    s.summary          = 'OrderUISDK'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/128247607',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'OrderUISDK.xcframework'
  
    # dependencies
    ## terraPods
    s.dependency 'TekCoreService', '~> 2.1'
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'TekLocalize', '~> 0.1'
    s.dependency 'TekBarcodeReader', '~> 0.1'
    s.dependency 'TekoTracker', '~> 1.2'
        
    ## apolloPods
    s.dependency 'Apollo', '~> 3.0'
    s.dependency 'ApolloTheme', '~> 1.0'

    ## corePods
    s.dependency 'OrderCoreSDK', '~> 3.0'

    ## bridgePods
    s.dependency 'TerraJsBridge', '~> 0.3'
    s.dependency 'PaymentKitJsBridge', '~> 1.1'
    s.dependency 'CommonBridgeCommand', '~> 0.3'

    ## cocoaPods
    s.dependency 'RxSwift', '~> 5'
    s.dependency 'RxCocoa', '~> 5'
    s.dependency 'SnapKit'
    s.dependency 'Swinject'
    s.dependency 'NSObject+Rx'
    s.dependency 'MBProgressHUD', '~> 1.2.0'
    s.dependency 'RxDataSources'
    s.dependency 'FittedSheets'
    s.dependency 'ESPullToRefresh'

    ## otherPods
    s.dependency 'ShopFrontWebCoreSDK', '0.2.0-ECOM479.8'
    s.dependency 'Logging'
  end
