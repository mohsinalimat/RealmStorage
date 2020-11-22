
Pod::Spec.new do |s|
  s.name             = 'RealmStorage'
  s.version          = '1.0.0'
  s.summary          = 'RealmStorage'

  s.description      = <<-DESC
Modern wrapper for Realm Database [iOS, macOS, tvOS & watchOS]
                       DESC

  s.homepage         = 'https://github.com/AndrewKochulab/RealmStorage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = 'Andrew Kochulab'

  s.source           = {
    :git => 'https://github.com/AndrewKochulab/RealmStorage.git',
    :tag => s.version.to_s
  }

  s.social_media_url = 'https://github.com/AndrewKochulab'
  s.platform = :ios, "8.0"

  s.cocoapods_version = '>= 1.4.0'
  s.swift_version = '5.2'

  s.requires_arc = true
  s.source_files = "Sources/RealmStorage/**/*.{swift, h}"
  
end
