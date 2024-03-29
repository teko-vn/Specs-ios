Pod::Spec.new do |s|
    s.name             = 'Janus'
    s.version          = '3.1.1'
    s.summary          = 'Teko Auth SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/35897964',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '10.0'
  
    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'Janus.framework'
  
    s.public_header_files = 'Janus.framework/Headers/*.h'
    s.source_files = 'Janus.framework/Headers/*.{h, m, swift}'
  
    s.dependency 'TekCoreService', '~> 1.2.9'
    s.dependency 'SwiftyJSON', '~> 4.0'
    s.dependency 'TerraInstancesManager', '~> 1.2.13'
    
  end
