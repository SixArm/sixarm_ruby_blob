# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_blob"
  s.summary        = "SixArm.com » Ruby » Blob of data abstract base class"
  s.description    = "Keep track of data as a file, or URI, with basic upload etc."
  s.version        = "1.0.3"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["Apache-2.0", "Artistic-2.0", "BSD-3-Clause", "GPL-3.0", "MIT", "MPL-2.0"]

  s.signing_key    =  "/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-private.pem"
  s.cert_chain     = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"
  s.has_rdoc       = true

  s.files = [
    "Rakefile",
    "lib/sixarm_ruby_blob.rb",
    "lib/sixarm_ruby_blob/base.rb",
    "lib/sixarm_ruby_blob/dir.rb",
    "lib/sixarm_ruby_blob/file.rb",
    "lib/sixarm_ruby_blob/export.rb",
    "lib/sixarm_ruby_blob/upload.rb",
    "lib/sixarm_ruby_blob/uri.rb",
  ]

  s.test_files = [
    "test/sixarm_ruby_blob_test.rb",
    "test/sixarm_ruby_blob_test/base_test.rb",
    "test/sixarm_ruby_blob_test/dir_test.rb",
    "test/sixarm_ruby_blob_test/file_test.rb",
    "test/sixarm_ruby_blob_test/export_test.rb",
    "test/sixarm_ruby_blob_test/upload_test.rb",
    "test/sixarm_ruby_blob_test/uri_test.rb",
    "test/sixarm_ruby_blob_test/samples/upload_input.bin",
  ]

  s.add_development_dependency('sixarm_ruby_fab', '=1.0.0')

  s.add_development_dependency('minitest', '>= 5.7.0', '< 6')
  s.add_development_dependency('sixarm_ruby_minitest_extensions', '= 1.0.5')
  s.add_development_dependency('rake', '> 10.4.2', '< 11')
  s.add_development_dependency('simplecov', '>= 0.10.0', '< 2')
  s.add_development_dependency('coveralls', '>= 0.8.2', '< 2')

end
