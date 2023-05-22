# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_blob"
  s.summary        = "SixArm.com → Ruby → Blob of data abstract base class"
  s.description    = "Keep track of data as a file, or URI, with basic upload etc."
  s.version        = "3.0.0"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["Apache-2.0", "Artistic-2.0", "BSD-3-Clause", "GPL-2.0", "GPL-3.0", "MIT", "MPL-2.0"]

  s.signing_key    = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20180113-private.pem"
  s.cert_chain     = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20180113-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"


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

  s.add_development_dependency('sixarm_ruby_fab', '>= 2.0.0', '< 3')

  s.add_development_dependency("minitest", ">= 5.12", "< 6")
  s.add_development_dependency("sixarm_ruby_minitest_extensions", ">= 1.0.8", "< 2")
  s.add_development_dependency("rake", ">= 12.3.3", "< 13")
  s.add_development_dependency("simplecov", ">= 0.18.0", "< 2")
  s.add_development_dependency("flog", ">= 4.6.1", "< 5")
  s.add_development_dependency("flay", ">= 2.10.0", "< 3")
  s.add_development_dependency("reek", ">= 4.7.3", "< 5")
  s.add_development_dependency("rubycritic", ">= 3.3.0", "< 4")
  s.add_development_dependency("rubocop", ">= 0.52.1", "< 1")

  s.required_ruby_version = ">= 2.5"

end
