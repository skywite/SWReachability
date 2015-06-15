#
# Be sure to run `pod lib lint SWReachability.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SWReachability"
  s.version          = "1.0"
  s.summary          = "Reachability with block"
  s.description      = "Reachability with blocks. One line code implementation. When change network status it will go to block."
  s.homepage         = "https://github.com/skywite/SWReachability"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "saman kumara" => "saman.usa@gmail.com" }
  s.source           = { :git => "https://github.com/skywite/SWReachability.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'SWReachability/**/*'
  s.resource_bundles = {
    'SWReachability' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'SWReachability/**/*.h'
  # s.frameworks = 'SystemConfiguration'
end
