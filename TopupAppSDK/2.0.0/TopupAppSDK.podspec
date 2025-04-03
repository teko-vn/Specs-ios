Pod::Spec.new do |s|
    s.name             = 'TopupAppSDK'
    s.version          = '2.0.0'
    s.summary          = 'Tek Topup App SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/243154438',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'TopupAppSDK.xcframework'
  
    s.dependency 'TopupPaymentSDK', '~> 2.0'
    s.dependency 'BillingWebSDK', '~> 3.0'
    s.dependency 'HestiaIOS', '~> 4.0'
    s.dependency 'MAAuthKit', '~> 2.1'

  end