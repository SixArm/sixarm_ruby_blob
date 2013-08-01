Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_blob"
  s.summary        = "SixArm.com » Ruby » Blob of data abstract base class"
  s.description    = "Keep track of data as a file, or URI, with basic upload etc."
  s.version        = "1.0.0"
  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["BSD", "GPL", "MIT", "PAL", "Various"]
  s.signing_key    = '/home/sixarm/keys/certs/sixarm-rsa1024-x509-private.pem'
  s.cert_chain     = ['/home/sixarm/keys/certs/sixarm-rsa1024-x509-public.pem']

  s.platform       = Gem::Platform::RUBY
  s.require_path   = 'lib'
  s.has_rdoc       = true

  top_files        = [".gemtest", "CONTRIBUTING.md", "Rakefile", "README.md", "VERSION"]
  lib_files        = ["lib/#{s.name}.rb"]
  test_files       = ["test/#{s.name}_test.rb"]

  s.files          = top_files + lib_files + test_files
  s.test_files     = test_files

  s.add_development_dependency('sixarm_minitest_extensions', '=1.0.5')
  s.add_development_dependency('sixarm_ruby_fab', '=1.0.0')

end
