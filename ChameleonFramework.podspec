Pod::Spec.new do |s|
  s.name         = "ChameleonFramework"
  s.version      = "1.1.3"
  s.summary      = "A Lightweight x Powerful Flat Color Framework for iOS."
  s.homepage     = "https://github.com/VAlexander/Chameleon"
  s.screenshots  = "http://i.imgur.com/GkcP4e9.png", "http://i.imgur.com/K648Zzr.png", "http://i.imgur.com/QByU4w7.png"

  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author             = { "Vicc Alexander" => "madewithchameleon@gmail.com" }
  s.social_media_url   = "http://twitter.com/ViccsMind"
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/VAlexander/Chameleon.git", 
                     :tag => "1.1.3" }
  s.source_files  = "Chameleon", "Classes/**/*.{h,m}"
  s.frameworks   = 'QuartzCore', 'CoreGraphics'
  s.requires_arc = true

end
