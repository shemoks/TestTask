# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
 use_frameworks!

target 'TestTask' do
 pod 'RealmSwift'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0' # or '3.0'
      config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.10'
    end
  end
end