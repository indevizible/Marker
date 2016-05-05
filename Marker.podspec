#
# Be sure to run `pod lib lint Marker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Marker"
  s.version          = "0.1.0"
  s.summary          = "A light wrapper around NSAttributedString."
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = "https://github.com/prolificinteractive/Marker"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Htin Linn" => "linn@prolificinteractive.com" }
  s.source           = { :git => "https://github.com/prolificinteractive/Marker.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Marker/Classes/**/*'
end
