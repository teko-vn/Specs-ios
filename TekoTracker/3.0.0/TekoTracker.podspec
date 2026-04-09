#
# Be sure to run `pod lib lint TekoTracker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TekoTracker'
  s.version          = '3.0.0'
  s.summary          = 'A short description of TekoTracker.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/teko-vn/Specs-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '$(git config user.name)' => '$(git config user.email)' }
    s.source           = {
                           :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/392182479',
                           :type => 'zip',
                           :headers => [
                             'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                             'Accept: application/octet-stream'
                           ]
                         }

  s.ios.deployment_target = '15.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.vendored_frameworks = 'TekoTracker.xcframework'

  # s.vendored_frameworks = 'TekoTracker.framework'
  # s.public_header_files = 'TekoTracker.framework/Headers/*.h'
  # s.source_files = 'TekoTracker.framework/Headers/*.{h, m, swift}'

  s.dependency 'Alamofire', '~> 5.11'
  s.dependency 'DeviceKit'
  s.dependency 'ReachabilitySwift'
  s.dependency 'RxSwift', '~> 5.0'
  s.dependency 'NSObject+Rx'

  s.dependency 'SwiftFootprint', '~> 3.0'
  s.dependency 'TerraInstancesManager', '~> 5.0'
  
  # Bridge
  s.dependency 'TerraJsBridge', '~> 2.0'
  s.dependency 'CommonBridgeCommand', '~> 2.0'

end
