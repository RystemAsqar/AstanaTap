Pod::Spec.new do |s|
  s.name             = 'DashboardView'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DashboardView.'

  s.dependency 'SnapKit', '~> 5.0.0'
  
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/RystemAsqar/AstanaTap'
  s.author           = { 'Rustem' => 'bornqazaqi@gmail.com' }
  s.source           = { :git => 'https://github.com/RystemAsqar/AstanaTap', :tag => s.version.to_s }
  s.ios.deployment_target = '14.0'

  s.source_files = ['DashboardView/Classes/**/*.{h,m,swift,json,csv,strings,xib,storyboard, xcassets, xcdatamodeld}']
  
  s.resource_bundles = {
      'DashboardView' => ['DashboardView/**/*.{xcdatamodeld,csv}']
  }

  s.public_header_files = 'Pod/Classes/**/*.{h,swift}'  
  
end 
