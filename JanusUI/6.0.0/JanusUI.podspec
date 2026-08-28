Pod::Spec.new do |s|
    s.name             = 'JanusUI'
    s.version          = '6.0.0'
    s.summary          = 'Teko AuthUI SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/533263814',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '15.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'JanusUI.xcframework'
  
    s.dependency 'Janus', '~> 6.0'
    s.dependency 'JanusFacebook', '~> 6.1'
    s.dependency 'JanusGoogle', '~> 5.1'
    s.dependency 'JanusApple', '~> 5.1'
    s.dependency 'Apollo', '~> 5.4'
    s.dependency 'ApolloTheme', '~> 3.2'
    s.dependency 'TekoTracker', '~> 3.0'
    s.dependency 'TekLocalize', '~> 2.0'
    s.dependency 'SnapKit', '~> 5.7'
    s.dependency 'HestiaBridgeWebView', '~> 3.0'
    s.dependency 'JanusRecaptcha', '~> 1.1'
  end