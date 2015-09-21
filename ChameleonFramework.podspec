Pod::Spec.new do |s|
  s.name         		= "ChameleonFramework"
  s.version     		= “2.0.0”
  s.summary      		= "Color Framework for iOS (Obj-C & Swift)"
  s.homepage    		= "https://github.com/ViccAlexander/Chameleon"
  s.license      		= { :type => "MIT", :file => "LICENSE.md" }
  s.author       		= "Vicc Alexander"
  s.social_media_url   	= "http://twitter.com/ViccsMind"
  s.platform     		= :ios
  s.ios.deployment_target = '7.0'
  s.source       		= { :git => "https://github.com/ViccAlexander/Chameleon.git", 
                     		:tag => s.version.to_s }

  s.public_header_files = 'Pod/Classes/Objective-C/**/*.h'
  s.frameworks   = 'UIKit', 'QuartzCore', 'CoreGraphics'

  s.default_subspecs = 'Default'

  s.subspec 'Default' do |ss|
    ss.source_files = 'Pod/Classes/Objective-C/**/*.{h,m}'
  end

  s.subspec 'Swift' do |ss|
      ss.ios.deployment_target = '8.0'
      ss.source_files = 'Pod/Classes/Swift/ChameleonShorthand.swift'
      ss.dependency 'ChameleonFramework/Default'
  end
end
