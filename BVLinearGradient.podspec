require 'json'
Pod::Spec.new do |s|

  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))


  s.name            = "BVLinearGradient"
  s.version       = package['version']
  s.summary       = package['description']
  s.homepage        = "https://github.com/brentvatne/react-native-linear-gradient"
  s.summary         = "A <LinearGradient /> component for react-native"
  s.license         = "MIT"
  s.author          = { "Brent Vatne" => "brentvatne@gmail.com" }
  s.platforms     = { :ios => "9.0" }
  s.source          = { :git => "https://github.com/react-native-community/react-native-linear-gradient.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.frameworks = 'UIKit', 'QuartzCore', 'Foundation'

  s.dependency 'React'

end
