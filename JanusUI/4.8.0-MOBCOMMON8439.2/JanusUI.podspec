Pod::Spec.new do |s|
    s.name             = 'JanusUI'
    s.version          = '4.8.0-MOBCOMMON8439.2'
    s.summary          = 'Teko AuthUI SDK'
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/346556192',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }
  
    s.ios.deployment_target = '12.0'
  
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.vendored_frameworks = 'JanusUI.xcframework'
  
    s.dependency 'Janus', '4.7.0-MOBCOMMON8439.3'
    s.dependency 'JanusFacebook', '~> 5.2'
    s.dependency 'JanusGoogle', '~> 4.1'
    s.dependency 'JanusApple', '~> 4.1'
    s.dependency 'Apollo', '~> 4.5'
    s.dependency 'ApolloTheme', '~> 2.1'
    s.dependency 'TekoTracker', '~> 2.3'
    s.dependency 'TekLocalize', '~> 1.1'
    s.dependency 'SnapKit', '~> 5.7'
    s.dependency 'HestiaBridgeWebView', '~> 2.1'
    s.dependency 'JanusRecaptcha', '~> 0.1'
  end