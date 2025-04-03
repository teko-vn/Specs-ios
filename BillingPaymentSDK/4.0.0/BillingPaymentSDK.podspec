Pod::Spec.new do |s|
    s.name             = 'BillingPaymentSDK'
    s.version          = '4.0.0'
    s.summary          = 'Tek Billing Payment SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/243139715',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'BillingPaymentSDK.xcframework'
  
    s.dependency 'SVProgressHUD'
    s.dependency 'SnapKit'
    s.dependency 'Toast-Swift', '~> 5.0'
    s.dependency 'MAPaymentKit', '~> 6.0'
    s.dependency 'Apollo', '~> 4.2'
    s.dependency 'ApolloTheme', '~> 2.1'
    s.dependency 'TerraInstancesManager', '~> 4.1'
    s.dependency 'SkeletonView', '~> 1.30'
    s.dependency 'FSCalendar', '~> 2.8'
    s.dependency 'ESPullToRefresh', '~> 2.9'
  end