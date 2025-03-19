Pod::Spec.new do |s|
    s.name             = 'OrderUISDK'
    s.version          = '5.4.0-OMNI1535.1'
    s.summary          = 'OrderUISDK'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/238768301',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'OrderUISDK.xcframework'
  
    # dependencies
    ## terraPods
    s.dependency 'TekCoreService', '~> 3.0'
    s.dependency 'TerraInstancesManager', '~> 4.0'
    s.dependency 'TekLocalize', '~> 1.0'
    s.dependency 'TekBarcodeReader', '~> 1.0'
    s.dependency 'TekoTracker', '~> 2.0'
        
    ## apolloPods
    s.dependency 'Apollo', '~> 4.0'
    s.dependency 'ApolloTheme', '~> 2.0'

    ## corePods
    s.dependency 'OrderCoreSDK', '~> 5.2'

    ## bridgePods
    s.dependency 'TerraJsBridge', '~> 1.0'
    s.dependency 'PaymentKitJsBridge', '~> 2.0'
    s.dependency 'CommonBridgeCommand', '~> 1.0'

    ## cocoaPods
    s.dependency 'RxSwift', '~> 5'
    s.dependency 'RxCocoa', '~> 5'
    s.dependency 'SnapKit'
    s.dependency 'Swinject'
    s.dependency 'NSObject+Rx'
    s.dependency 'MBProgressHUD', '~> 1.2'
    s.dependency 'RxDataSources'
    s.dependency 'FittedSheets'
    s.dependency 'ESPullToRefresh'

    ## otherPods
    s.dependency 'ShopFrontWebCoreSDK', '~> 1.1'
    s.dependency 'Logging'
  end
