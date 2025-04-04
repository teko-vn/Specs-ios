Pod::Spec.new do |s|
    s.name             = 'OrderCoreSDK'
    s.version          = '6.0.0'
    s.summary          = 'OrderCoreSDK'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/243177063',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'OrderCoreSDK.xcframework'
  
    # dependency
    s.dependency 'TekCoreService', '~> 3.1'
    s.dependency 'TerraInstancesManager', '~> 4.1'
    s.dependency 'Terra', '~> 4.1'
    s.dependency 'Logging'   
    s.dependency 'FirebaseFirestore', '~> 8.1'
                     
  end
