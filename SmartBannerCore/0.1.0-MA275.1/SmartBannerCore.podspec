Pod::Spec.new do |s|
  s.name             = 'SmartBannerCore'
  s.version          = '0.1.0-MA275.1'
  s.summary          = 'SmartBanner Core SDK — business logic, frequency engine, BFF & bus service.'

  s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '$(git config user.name)' => '$(git config user.email)' }
  s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/476150738',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }

  s.ios.deployment_target = '15.0'
  s.swift_version         = '5.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
  s.vendored_frameworks = 'SmartBannerCore.xcframework'

  s.dependency 'Terra',                '~> 5.0'
  s.dependency 'TerraInstancesManager','~> 5.0'
  s.dependency 'TekCoreService',       '~> 4.0'
  s.dependency 'TekCoreNetwork',       '~> 4.0'
end
