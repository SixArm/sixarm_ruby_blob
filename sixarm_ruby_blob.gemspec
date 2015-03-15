# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  SOURCES = ['base','dir','file','export','upload','uri']
  SAMPLES = ['upload_input.bin']

  s.name           = "sixarm_ruby_blob"
  s.summary        = "SixArm.com » Ruby » Blob of data abstract base class"
  s.description    = "Keep track of data as a file, or URI, with basic upload etc."
  s.version        = "1.0.1"
  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["BSD", "GPL", "MIT", "PAL", "Various"]
  s.signing_key    = '/opt/keys/sixarm/sixarm-rsa-4096-x509-20145314-private.pem'
  s.cert_chain     = ['/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem']

  s.platform       = Gem::Platform::RUBY
  s.require_path   = 'lib'
  s.has_rdoc       = true

  top_files        = [".gemtest", "CONTRIBUTING.md", "Rakefile", "README.md", "VERSION"]
  lib_files        = ["lib/#{s.name}.rb"] + SOURCES.map{|x| "lib/#{s.name}/#{x}.rb"}
  test_files       = ["test/#{s.name}_test.rb"] + SOURCES.map{|x| "test/#{s.name}_test/#{x}_test.rb"} + SAMPLES.map{|x| "test/#{s.name}_test/samples/#{x}"}

  s.files          = top_files + lib_files + test_files
  s.test_files     = test_files

  s.add_development_dependency('sixarm_minitest_extensions', '=1.0.5')
  s.add_development_dependency('sixarm_ruby_fab', '=1.0.0')

end
