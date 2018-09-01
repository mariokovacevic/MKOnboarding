#
# Be sure to run `pod lib lint MKOnboarding.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'MKOnboarding'
    s.version          = '1.0.0'
    s.summary          = 'MKOnboarding is a simple onboarding library.'
    s.homepage         = 'https://github.com/mariokovacevic/MKOnboarding'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'mariokovacevic' => 'mariofilk@gmail.com' }
    s.source           = { :git => 'https://github.com/mariokovacevic/MKOnboarding.git', :tag => s.version }
    s.platform         = :ios, "9.3"
    s.source_files     = 'MKOnboarding/Classes/*.swift'
    s.frameworks       = 'UIKit'
    s.swift_version    = '4.0'
end
