Pod::Spec.new do |s|
    s.name             = 'TekDiscoveryEvent'
    s.version          = '3.0.1'
    s.summary          = 'Discovery event'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/73415573',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'TekDiscoveryEvent.xcframework'
  
    # dependency
    s.dependency 'TekCoreService', '~> 2.1'
    s.dependency 'TerraInstancesManager', '~> 2.1'
    s.dependency 'TekListingService', '~> 3.2.0'
    s.dependency 'TekPolicyService', '~> 3.3'
    s.dependency 'TekSearchService', '~> 3.2.0'
    s.dependency 'TekDiscoveryCore', '~> 2.0'
    s.dependency 'TekPpmService', '~> 2.8.0'
    s.dependency 'TekCartService', '~> 0.1'
    
  end
