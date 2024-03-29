#
# Be sure to run `pod lib lint FirebasePlugin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TekoTracker'
  s.version          = '0.4.1'
  s.summary          = 'TekoTracker'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/teko-vn/tracker-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dungntm-teko' => 'dung.ntm@teko.vn' }
  s.source           = {
                         :http => 'https://api.github.com/repos/teko-vn/Specs-ios/releases/assets/29900792',
                         :type => 'zip',
                         :headers => [
                           'Authorization: token ' + ENV['GITHUB_USER_TOKEN'],
                           'Accept: application/octet-stream'
                         ]
                       }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.vendored_frameworks = 'TekoTracker.framework'
  
  s.public_header_files = 'TekoTracker.framework/Headers/*.h'
  s.source_files = 'TekoTracker.framework/Headers/*.{h, m, swift}'

  # s.pod_target_xcconfig = {
  #     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  #     'ONLY_ACTIVE_ARCH' => 'YES'
  #   }
  # s.user_target_xcconfig = { 
  #   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 
  #   'ONLY_ACTIVE_ARCH' => 'YES' 
  # }

  # s.resources = "FirebasePlugin/Module/**/*.{xcassets,json,storyboard,xib,xcdatamodeld}"

  # s.resource_bundles = {
  #   'FirebasePlugin' => ['FirebasePlugin/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  # s.static_framework = true

  s.dependency 'Alamofire', '~> 5.3.0'
  s.dependency 'DeviceKit'
  s.dependency 'ReachabilitySwift'
  s.dependency 'RxSwift'

end
