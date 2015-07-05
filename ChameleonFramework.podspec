Pod::Spec.new do |s|
  s.name         		= "ChameleonFramework"
  s.version     		= "1.2.0"
  s.summary      		= "Flat Color Framework for iOS."
  s.homepage    		= "https://github.com/ViccAlexander/Chameleon"
  s.screenshots  		= "http://i.imgur.com/GkcP4e9.png", "http://i.imgur.com/K648Zzr.png", "http://i.imgur.com/QByU4w7.png"

  s.license      		= { :type => "MIT", :file => "LICENSE.md" }
  s.author       		= "Vicc Alexander"
  s.social_media_url   	= "http://twitter.com/ViccsMind"
  s.platform     		= :ios, "7.0"
  s.source       		= { :git => "https://github.com/ViccAlexander/Chameleon.git", 
                     		:tag => s.version.to_s }
  
  s.source_files  = 'Pod/Classes/**/*.{h,m}'
  s.public_header_files = 'Pod/Classes/Objective-C/**/*.h'
  s.frameworks   = 'UIKit', 'QuartzCore', 'CoreGraphics'

  s.default_subspecs = 'Default'

  s.subspec 'Default' do |ss|
    ss.source_files = 'Pod/Classes/Objective-C/**/*.{h,m}'
  end

  s.subspec 'Swift' do |ss|
      ss.ios.deployment_target = '8.0'
      ss.osx.deployment_target = '10.10'
      ss.source_files = 'Pod/Classes/Swift/ChameleonShorthand.swift'
      ss.dependency 'ChameleonFramework/Default'
  end
end
