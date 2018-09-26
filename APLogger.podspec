
Pod::Spec.new do |s|

  s.name         = "APLogger"
  s.version      = "1.3"
  s.summary      = "Yet another logger framework for Swift/Objective-C"
  s.description  = <<-DESC
  					This is a light-weight logger helper framework for Swift/Objective-C. It also can be custumizable for your taste!
                   DESC

  s.homepage     = "https://github.com/AppsComTr/APLogger"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Orhun Mert Simsek" => "mert@apps.com.tr" }
  s.social_media_url   = "http://twitter.com/orhunmertsimsek"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/AppsComTr/APLogger.git", :tag => s.version }

  s.source_files  = "APLogger/*.{h,m,swift}"
  s.swift_version = "4.2"

  s.documentation_url = "http://apps.com.tr/APLogger/docs/"

end
