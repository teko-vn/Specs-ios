#
# Be sure to run `pod lib lint FirebasePlugin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TekoMediaPreview'
  s.version          = '0.4.1'
  s.summary          = 'TekoMediaPreview'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/teko-vn/ios-media-preview'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dungntm-teko' => 'dung.ntm@teko.vn' }
  s.source           = { :http => 'http://github.com/teko-vn/Specs-ios/releases/download/' + s.name.to_s + '-v' + s.version.to_s + '/' + s.name.to_s + '.framework.zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.vendored_frameworks = 'TekoMediaPreview.framework'
  
  s.public_header_files = 'TekoMediaPreview.framework/Headers/*.h'
  s.source_files = 'TekoMediaPreview.framework/Headers/*.{h, m, swift}'

  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
      'ONLY_ACTIVE_ARCH' => 'YES'
    }
  s.user_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 
    'ONLY_ACTIVE_ARCH' => 'YES' 
  }

  # s.resources = "FirebasePlugin/Module/**/*.{xcassets,json,storyboard,xib,xcdatamodeld}"

  # s.resource_bundles = {
  #   'FirebasePlugin' => ['FirebasePlugin/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  # s.static_framework = true

  s.dependency 'Kingfisher'

end
