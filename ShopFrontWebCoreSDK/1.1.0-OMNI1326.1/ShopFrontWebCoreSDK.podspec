Pod::Spec.new do |s|
    s.name             = 'ShopFrontWebCoreSDK'
    s.version          = '1.1.0-OMNI1326.1'
    s.summary          = 'ShopFront Web SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/182694820',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'ShopFrontWebCoreSDK.xcframework'
 
    s.dependency 'HestiaBridgeWebView', '~> 2.0'
    s.dependency 'TerraJsBridge', '~> 1.0'
    s.dependency 'PaymentKitJsBridge', '~> 2.0'
    s.dependency 'Apollo', '~> 4.0'

  end