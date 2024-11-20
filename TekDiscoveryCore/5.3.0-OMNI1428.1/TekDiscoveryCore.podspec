Pod::Spec.new do |s|
    s.name             = 'TekDiscoveryCore'
    s.version          = '5.3.0-OMNI1428.1'
    s.summary          = 'Discovery core for connecting api'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/207771197',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'TekDiscoveryCore.xcframework'
  
    # dependency
    s.dependency 'TekCoreService', '~> 3.0'
    s.dependency 'TerraInstancesManager', '~> 4.0'
    s.dependency 'TekLocalize', '~> 1.0'
  end
