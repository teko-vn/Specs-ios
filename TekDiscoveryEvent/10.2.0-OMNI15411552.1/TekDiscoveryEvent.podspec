Pod::Spec.new do |s|
    s.name             = 'TekDiscoveryEvent'
    s.version          = '10.2.0-OMNI15411552.1'
    s.summary          = 'Discovery event'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/250341438',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'TekDiscoveryEvent.xcframework'
  
    # dependency
    s.dependency 'TekCoreService', '~> 3.1'
    s.dependency 'TerraInstancesManager', '~> 4.1'
    s.dependency 'TekListingService', '~> 5.0'
    s.dependency 'TekPolicyService', '~> 6.0'
    s.dependency 'TekSearchService', '~> 5.0'
    s.dependency 'TekDiscoveryCore', '6.1.0-OMNI1552.1'
    s.dependency 'TekPpmService', '~> 4.0'
    s.dependency 'TekTempiService', '~> 2.0'
    s.dependency 'TekLocationService', '~> 5.0'
    
  end
