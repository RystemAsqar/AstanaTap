Pod::Spec.new do |spec|
  spec.name             = 'SignIn'
  spec.version          = '0.1.0'
  spec.summary          = 'A short description of CommonUI.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ShyngysSaktagan/CommonUI'
  s.author           = { 'Shyngys' => 'mr.shyngys@gmail.com' }
  s.source           = { :git => 'https://github.com/ShyngysSaktagan/CommonUI', :tag => s.version.to_s }
  s.ios.deployment_target = '14.0'

  s.source_files = ['CommonUI/Classes/**/*.{h,m,swift,json,csv,strings,xib,storyboard, xcassets, xcdatamodeld}']
  
  s.resource_bundles = {
      'CommonUI' => ['CommonUI/**/*.{xcdatamodeld,csv}']
  }

  s.public_header_files = 'Pod/Classes/**/*.{h,swift}'  
  
end 