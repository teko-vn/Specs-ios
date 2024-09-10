Pod::Spec.new do |s|
    s.name             = 'LoyaltyComponent'
    s.version          = '3.2.0-OMNI1358.1'
    s.summary          = 'LoyaltyComponent'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/191630713',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'LoyaltyComponent.xcframework'
  
    s.dependency 'TerraInstancesManager', '~> 4.0'
    s.dependency 'FittedSheets', '~> 1.4'
    s.dependency 'ApolloTheme', '~> 2.0'
    s.dependency 'Apollo', '~> 4.0'
    s.dependency 'SkeletonView', '~> 1.30'
    s.dependency 'TekBarcodeReader', '~> 1.0'
    s.dependency 'TekLocalize', '~> 1.0'
    
  end