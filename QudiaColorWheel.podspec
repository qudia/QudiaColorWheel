Pod::Spec.new do |s|
  s.name = 'QudiaColorWheel'
  s.version = '2.0.4'
  s.summary = 'A color wheel for watchOS based on Colorful'
  s.homepage = 'https://github.com/qudia/QudiaColorWheel'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Qudia' => 'info@qudia.io' }
  s.source = { :git => 'https://github.com/qudia/QudiaColorWheel.git', :tag => s.version.to_s }
  s.watchos.deployment_target = '6.2.1'
  s.source_files = 'QudiaColorWheel/Classes/**/*'
  s.resources = 'QudiaColorWheel/Assets/**'
  s.swift_version = '5.7'
end
