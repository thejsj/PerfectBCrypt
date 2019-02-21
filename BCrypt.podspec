#
# Be sure to run `pod lib lint BCrypt.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BCrypt'
  s.version          = '1.0.0'
  s.summary          = 'A Swift version of the BCrypt.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This CocoaPod is a Swift version of PerfectBCrypt adopted to iOS.
                       DESC

  s.homepage         = 'https://github.com/aberkunov/PerfectBCrypt'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alexander Berkunov' => 'alexander.berkunov@gmail.com' }
  s.source           = { :git => 'https://github.com/aberkunov/PerfectBCrypt.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.1'
  s.swift_version = '4.2'
  
  #s.module_map = 'bcryptc/include/module.modulemap'
  #s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/bcrypt/include' }
  #s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/BCrypt/module' }
  s.pod_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/BCrypt/Classes/bcryptc',
      'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/BCrypt/Classes/bcryptc/include'
  }
  #s.preserve_paths = 'bcryptc/include/module.modulemap'
  
  s.source_files = 'BCrypt/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BCrypt' => ['BCrypt/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
