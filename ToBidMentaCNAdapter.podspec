Pod::Spec.new do |s|
    s.name             = 'ToBidMentaCNAdapter'
    s.version          = '7.01.01'
    s.summary          = 'ToBidMentaCNAdapter.'
    s.description      = 'This is the ToBidMentaCNAdapter. Please proceed to https://www.mentamob.com for more information.'
    s.homepage         = 'https://www.mentamob.com/'
    s.license          = "Custom"
    s.author           = { 'mentasdk' => 'mentasdk.vip@gmail.com' }
    s.source           = { :git => "https://github.com/mentasdk/ToBidDemo-iOS.git", :tag => "#{s.version}" }
  
    s.ios.deployment_target = '11.0'
    s.frameworks = 'UIKit', 'MapKit', 'MediaPlayer', 'CoreLocation', 'AdSupport', 'CoreMedia', 'AVFoundation', 'CoreTelephony', 'StoreKit', 'SystemConfiguration', 'MobileCoreServices', 'CoreMotion', 'Accelerate','AudioToolbox','JavaScriptCore','Security','CoreImage','AudioToolbox','ImageIO','QuartzCore','CoreGraphics','CoreText'
    s.libraries = 'c++', 'resolv', 'z', 'sqlite3', 'bz2', 'xml2', 'iconv', 'c++abi'
    s.weak_frameworks = 'WebKit', 'AdSupport'
    s.static_framework = true
  
    s.source_files = 'ToBidMentaCNAdapter/**/*'

    s.dependency 'MentaVlionBaseSDK', '~> 7.00.19'
    s.dependency 'MentaUnifiedSDK',   '~> 7.00.19'
    s.dependency 'MentaVlionSDK',     '~> 7.00.19'
    s.dependency 'MentaVlionAdapter', '~> 7.00.19'
    s.dependency 'ToBid-iOS-RC'
  
  end
