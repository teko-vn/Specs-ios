Pod::Spec.new do |s|
  s.name             = 'SwiftFootprint'
  s.version          = '1.6.0'
  s.summary          = 'Wrap SwiftProtobuf with Footprint DTO'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                        DESC
  s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '$(git config user.name)' => '$(git config user.email)' }
  s.source           = {
                          :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/100548146',
                          :type => 'zip',
                          :headers => [
                            'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                            'Accept: application/octet-stream'
                          ]
                        }

  s.ios.deployment_target = '10.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.xcconfig = {
    'VALID_ARCHS' =>  'arm64 armv7 armv7s x86_64',
  }

  s.vendored_frameworks = 'SwiftFootprint.xcframework'

  s.dependency 'TekoSwiftGRPC', '~> 0.11.2'

end
