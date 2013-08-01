# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start

describe Blob do

  let(:dir){ "abc" }
  let(:base){ "def" }
  let(:blob){ Blob.new(dir: dir, base: base) }

  # We choose to use Unix-friendly file names: lowercase a-z and underscores,
  # always with "/" as a directory separator, typically with a dot extension,
  # never with non-ASCII characters.
  #
  BASE_MATCH = /^[0-1a-z\_\.]+$/
  DIR_MATCH = /^[0-1a-z\_\/]+$/
  PATH_MATCH = /^[0-1a-z\_\/\.]+$/

  describe "#file_dir" do

    it "is the dir" do
      blob.file_dir.must_equal dir
    end

    it "uses a good unix name" do
      blob.file_dir.must_match DIR_MATCH
    end

  end

  describe "#file_base" do

    it "is the base" do
      blob.file_base.must_equal base
    end

    it "uses a good unix name" do
      blob.file_base.must_match BASE_MATCH
    end

  end

  describe "#file_path" do

    it "combines the dir and base" do
      blob.file_path.must_equal "#{dir}/#{base}"
    end

    it "uses a good unix name" do
      blob.file_path.must_match PATH_MATCH
    end

  end

  describe "#file_exist?" do

    it "returns true iff the file exists" do
      blob.file_exist?  #TODO
    end

  end

end
