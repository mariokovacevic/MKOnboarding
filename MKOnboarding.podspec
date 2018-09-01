#
# Be sure to run `pod lib lint MKOnboarding.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'MKOnboarding'
    s.version          = '0.1.0'
    s.summary          = 'A short description of MKOnboarding.'
    s.homepage         = 'https://github.com/mariokovacevic/MKOnboarding'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'mariokovacevic' => 'mariofilk@gmail.com' }
    s.source           = { :git => 'https://github.com/mariokovacevic/MKOnboarding.git', :tag => s.version.to_s }
    s.platform            = :ios, "9.3"
    s.source_files = 'MKOnboarding/Classes/**/*'
    s.frameworks = 'UIKit'
end
