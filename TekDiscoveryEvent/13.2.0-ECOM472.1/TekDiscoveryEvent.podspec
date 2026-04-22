Pod::Spec.new do |s|
    s.name             = 'TekDiscoveryEvent'
    s.version          = '13.2.0-ECOM472.1'
    s.summary          = 'Discovery event'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/402162071',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '15.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'TekDiscoveryEvent.xcframework'
  
    # dependency
    s.dependency 'TekCoreService', '~> 4.0'
    s.dependency 'TerraInstancesManager', '~> 5.0'
    s.dependency 'TekListingService', '~> 6.0'
    s.dependency 'TekPolicyService', '~> 7.0'
    s.dependency 'TekSearchService', '~> 6.0'
    s.dependency 'TekDiscoveryCore', '7.1.0-ECOM472.1'
    s.dependency 'TekPpmService', '~> 5.0'
    s.dependency 'TekTempiService', '~> 4.0'
    s.dependency 'TekLocationService', '~> 6.0'
    s.dependency 'TekWordPressService', '~> 1.0'
    
  end
