# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "pathname"
require "sixarm_ruby_minitest_extensions"
require "sixarm_ruby_fab"
require "sixarm_ruby_blob"
require "securerandom"
require "uri"

FAB = Fab.new

['base','dir','file','export','upload','uri'].map{|x|
  require "sixarm_ruby_blob_test/#{x}_test.rb"
}

