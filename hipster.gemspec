lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hipsteripsum'

Gem::Specification.new do |s|
  s.name        = 'hipsteripsum'
  s.version     = '0.0.8'
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = "Hipster Ipsum"
  s.description = "http://hipsterjesus.com/"
  s.authors     = ["Shane McDonald"]
  s.email       = 'me@shanemcd.com'
  s.files       = ["lib/hipsteripsum.rb"]
  s.homepage    = 'https://github.com/anatomyofashane/hipsteripsum'
  s.add_dependency('faraday')
  s.add_dependency('faraday_middleware')
  s.executables = %w( hipsteripsum )
  s.files       += Dir.glob("lib/**/*")
  s.files       += Dir.glob("bin/**/*")
  s.has_rdoc    = false
end