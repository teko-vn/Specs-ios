Pod::Spec.new do |s|
    s.name             = 'TekDiscoveryEvent'
    s.version          = '10.0.0-MOBCOMMON6053.1'
    s.summary          = 'Discovery event'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/226768527',
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
    s.dependency 'TekCoreService', '~> 3.0'
    s.dependency 'TerraInstancesManager', '~> 4.0'
    s.dependency 'TekListingService', '~> 4.0'
    s.dependency 'TekPolicyService', '~> 5.0'
    s.dependency 'TekSearchService', '~> 4.0'
    s.dependency 'TekDiscoveryCore', '6.0.0-MOBCOMMON6053.1'
    s.dependency 'TekPpmService', '~> 3.1'
    s.dependency 'TekTempiService', '~> 1.0'
    
  end
