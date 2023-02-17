Pod::Spec.new do |s|
    s.name             = 'BillingAppSDK'
    s.version          = '0.7.0'
    s.summary          = 'Tek Billing App SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/95699781',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'BillingAppSDK.xcframework'
  
    s.dependency 'BillingPaymentSDK', '~> 2.4'
    s.dependency 'BillingWebSDK', '~> 1.3'
    s.dependency 'HestiaIOS', '~> 2.14'
    s.dependency 'MAAuthKit', '~> 1.2'

  end