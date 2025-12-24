Pod::Spec.new do |s|
    s.name             = 'LoyaltyConsumerUI'
    s.version          = '6.3.1'
    s.summary          = 'LoyaltyConsumerUI'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/332483492',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'LoyaltyConsumerUI.xcframework'
  
    s.dependency 'LoyaltyCore', '~> 5.3'
    s.dependency 'ESPullToRefresh', '~> 2.9'
    s.dependency 'FittedSheets', '~> 1.4'
    s.dependency 'SkeletonView', '~> 1.30'
    s.dependency 'HestiaBridgeWebView', '~> 2.1'
    s.dependency 'CommonBridgeCommand', '~> 1.1'
    s.dependency 'JanusBridge', '~> 2.0'
    s.dependency 'Apollo', '~> 4.5'
    s.dependency 'ApolloTheme', '~> 2.1'
    s.dependency 'TerraInstancesManager', '~> 4.1'
    s.dependency 'TekoTracker', '~> 2.3'
    s.dependency 'LoyaltyBridge', '~> 2.0'
    s.dependency 'RSBarcodes_Swift', '~> 5.2'

  end