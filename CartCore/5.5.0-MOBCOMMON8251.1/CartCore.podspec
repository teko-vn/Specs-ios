#
# Be sure to run `pod lib lint CartCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CartCore'
  s.version          = '5.5.0-MOBCOMMON8251.1'
  s.summary          = 'CartCore SDK'
  s.description      = 'Cart SDK for interacting with Cart Server'
  s.homepage         = 'https://github.com/teko-vn/Specs-ios'
  s.author           = { 'Cart' => 'cart-platform@teko.vn' }
  s.source           = {
                         :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/322723441',
                         :type => 'zip',
                         :headers => [
                           'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                           'Accept: application/octet-stream'
                          ]
                        }

  s.ios.deployment_target = '12.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.vendored_frameworks = 'CartCore.xcframework'

end