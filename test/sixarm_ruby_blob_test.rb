# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
])
SimpleCov.start

require "pathname"
require "sixarm_ruby_minitest_extensions"
require "sixarm_ruby_fab"
require "securerandom"
require "uri"
require "sixarm_ruby_blob"

FAB = Fab.new
