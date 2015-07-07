# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

describe Blob do

  let(:dir){ FAB.dirname }
  let(:base){ FAB.basename }
  let(:blob){ Blob.new(dir: dir, base: base) }

  # We choose to use Unix-friendly file names: lowercase a-z and underscores,
  # always with "/" as a directory separator, typically with a dot extension,
  # never with non-ASCII characters.
  #
  let(:base_match){ /^[0-1a-z\_\.]+$/ }
  let(:dir_match){ /^[0-1a-z\_\/]+$/ }
  let(:path_match){ /^[0-1a-z\_\/\.]+$/ }

  describe "#base" do
    it "uses a good unix name" do
      blob.base.must_match base_match
    end
  end

  describe "#dir" do
    it "uses a good unix name" do
      blob.dir.must_match dir_match
    end
  end

  describe "#name" do
    it "concats the name" do
      blob.name.must_equal "#{dir}/#{base}"
    end
  end

  describe "#ext" do

    it "returns the file base name extension, if it exists" do
      blob.base = "foo.goo.hoo"
      blob.ext.must_equal "hoo"
    end

    it "returns nil, if there is no extension" do
      blob.base = "foogoohoo"
      blob.ext.must_be_nil
    end

  end

end
