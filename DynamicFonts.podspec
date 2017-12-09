#
# Be sure to run `pod lib lint DynamicallySizedText.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DynamicFonts'
  s.version          = '0.1.0'
  s.summary          = 'The easy way to support dynamic text'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This library helps to create dynamic and fixed size fonts programmaticaly, with wide wariety of font sizes and easy way to make the font bold or italic.
                       DESC

  s.homepage         = 'https://github.com/DenisLitvin/DynamicFonts'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DenisLitvin' => 'den.litvinn@gmail.com' }
  s.source           = { :git => 'https://github.com/DenisLitvin/DynamicallySizedText.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NAME_OF_POD/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DynamicallySizedText' => ['DynamicFonts/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
