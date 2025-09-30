#
# Be sure to run `pod lib lint CartUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CartUI'
  s.version          = '5.3.0-OMNI1589.1'
  s.summary          = 'CartUI SDK'
  s.description      = 'Cart UI SDK for integrating into app'
  s.homepage         = 'https://github.com/teko-vn/Specs-ios'
  s.author           = { 'Cart' => 'cart-platform@teko.vn' }
  s.source           = {
                         :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/298803864',
                         :type => 'zip',
                         :headers => [
                           'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                           'Accept: application/octet-stream'
                          ]
                        }

  s.ios.deployment_target = '12.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.vendored_frameworks = 'CartUI.xcframework'

  # dependency
  # core
  s.dependency 'CartCore', '5.3.0-OMNI1589.1'

  # Fix dependency
  s.dependency 'abseil'

  # Terra
  s.dependency 'Terra', '~> 4.1'
  s.dependency 'TerraInstancesManager', '~> 4.1'

  # Bridge
  s.dependency 'TerraJsBridge', '~> 1.1'
  s.dependency 'CommonBridgeCommand', '~> 1.1'
  s.dependency 'HestiaBridgeWebView', '~> 2.1'

  # Apollo
  s.dependency 'Apollo', '~> 4.4'
  s.dependency 'ApolloTheme' , '~> 2.1'

  # Tracker
  s.dependency 'TekoTracker', '~> 2.3'

  # Loyalty
  s.dependency 'LoyaltyComponent', '~> 4.1'

  # Localize
  s.dependency 'TekLocalize', '~> 1.1'

  # ui
  s.dependency 'Nuke', '~> 9.5'
  s.dependency 'UIColor_Hex_Swift', '~> 5.1'
  s.dependency 'Toast-Swift', '~> 5.0'
  s.dependency 'MBProgressHUD'
  s.dependency 'FittedSheets', '~> 1.4'
  s.dependency 'SkeletonView', '~> 1.30'
  s.dependency 'IQKeyboardManagerSwift', '~> 6.5'
  s.dependency 'SnapKit', '~> 5.7'
  s.dependency 'Nantes'
  s.dependency 'JTAppleCalendar', '~> 8.0'

  # rx
  s.dependency 'RxCocoa', '~> 5'
  s.dependency 'RxRelay', '~> 5'
  s.dependency 'RxSwift', '~> 5'

end
