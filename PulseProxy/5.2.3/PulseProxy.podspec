Pod::Spec.new do |s|
  s.name         = 'PulseProxy'
  s.summary      = 'Automatic URLSession logging for Pulse via swizzling.'
  s.version      = '5.2.3'
  s.license      = { :type => 'MIT', :file => 'LICENSE.md' }
  s.authors      = { 'Alexander Grebenyuk' => 'https://github.com/kean' }
  s.homepage     = 'https://github.com/kean/Pulse'
  s.source       = { :git => 'https://github.com/kean/Pulse.git', :tag => s.version.to_s }
  s.ios.deployment_target = '15.0'
  s.swift_versions = ['5.10']
  # Pulse 5.x uses the `package` access level across its modules; SwiftPM passes this automatically, CocoaPods doesn't
  s.pod_target_xcconfig = { 'OTHER_SWIFT_FLAGS' => '$(inherited) -package-name pulse' }
  s.source_files = 'Sources/PulseProxy/**/*.swift'
  s.dependency 'Pulse', s.version.to_s
end
