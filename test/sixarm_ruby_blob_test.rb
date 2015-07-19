# -*- coding: utf-8 -*-
require "minitest/autorun"
require "coveralls"
require "simplecov"
Coveralls.wear!
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

require "pathname"
require "sixarm_ruby_minitest_extensions"
require "sixarm_ruby_fab"
require "securerandom"
require "uri"
require "sixarm_ruby_blob"

FAB = Fab.new
