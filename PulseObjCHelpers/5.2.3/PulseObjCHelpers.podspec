Pod::Spec.new do |s|
  s.name         = 'PulseObjCHelpers'
  s.summary      = 'Objective-C helpers used by Pulse.'
  s.version      = '5.2.3'
  s.license      = { :type => 'MIT', :file => 'LICENSE.md' }
  s.authors      = { 'Alexander Grebenyuk' => 'https://github.com/kean' }
  s.homepage     = 'https://github.com/kean/Pulse'
  s.source       = { :git => 'https://github.com/kean/Pulse.git', :tag => s.version.to_s }
  s.ios.deployment_target = '15.0'
  s.swift_versions = ['5.10']
  s.source_files = 'Sources/PulseObjCHelpers/**/*.{h,m}'
  s.public_header_files = 'Sources/PulseObjCHelpers/include/*.h'
end
