Pod::Spec.new do |s|

  s.name = "LSAdditions"
  s.summary = <<-DESC
                    Support for commonly used controls or objects
                DESC

  s.description = <<-DESC
                    The Category of Commonly used controls and you can create a control quickly
                DESC
  s.ios.deployment_target = '8.0'
  s.version      = "0.0.2"
  s.homepage     = "https://github.com/LSRain/LSAdditions"
  s.license= { :type => "MIT", :file => "LICENSE" }
  s.author       = { "LSRain" => "mbiaowang@gmail.com" }
  s.source       = { :git => "https://github.com/LSRain/LSAdditions.git", :tag => s.version }
  s.source_files = "LSAdditions/LSAdditions/Class/LSAdditions/*.{h,m}"
  s.public_header_files = 'LSAdditions/LSAdditions/Class/LSAdditions/*.{h}'
  s.frameworks = 'Foundation', 'CoreFoundation', 'UIKit'

end
