
Pod::Spec.new do |s|
  s.name             = 'MultipleLineChartView'
  s.version          = '1.6.0'
  s.summary          = 'A multiple line MultipleLineChartView.'



  s.description      = <<-DESC
                     'A multiple line chart view MultipleLineChartView.'
                       DESC

  s.homepage         = 'https://github.com/lingkun/MultipleLineChartView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lingkun' => '2858850100@qq.com' }
  s.source           = { :git => 'https://github.com/lingkun/MultipleLineChartView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'MultipleLineChartView/Classes/**/*'
  
   s.resource_bundles = {
     'MultipleLineChartView' => ['MultipleLineChartView/Assets/*']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
