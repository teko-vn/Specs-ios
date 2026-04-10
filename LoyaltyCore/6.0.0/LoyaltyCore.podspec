Pod::Spec.new do |s|
    s.name             = 'LoyaltyCore'
    s.version          = '6.0.0'
    s.summary          = 'LoyaltyCore'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/392907310',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '15.0'
  
    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'LoyaltyCore.xcframework'
  
    s.dependency 'TekCoreService', '~> 4.0'
    s.dependency 'TerraInstancesManager', '~> 5.0'
    s.dependency 'Logging', '~> 1.4'
    s.dependency 'LoyaltyModel', '~> 6.0'
    s.dependency 'TekLocalize', '~> 2.0'
    s.dependency 'FirebaseFirestore', '~> 8.1'
    
  end