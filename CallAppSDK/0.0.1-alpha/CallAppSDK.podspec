Pod::Spec.new do |s|
	s.name                   = 'CallAppSDK'
	s.version                = '0.0.1-alpha'
	s.summary                = 'CallAppSDK.framework'
	s.homepage               = 'https://github.com/teko-vn/Specs-ios.git'
	s.license                = { :type => 'MIT', :file => 'LICENSE' }

	s.source                 = { 
                                 :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/34307682',
                                 :type => 'zip',
                                 :headers => [
                                                 'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                                                 'Accept: application/octet-stream'
                                             ]
                               }
	s.vendored_frameworks    = 'CallAppSDK.framework'
	s.ios.deployment_target  = '10.0'
	s.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

	s.author                 = {'Mobile Lab' => 'mobile.lab@teko.vn'}

	s.dependency 'Alamofire'
end