# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start

describe Blob do

  let(:dir){ "foo" }
  let(:base){ "bar" }
  let(:blob){ Blob.new(dir: dir, base: base) }

  describe "#uri_dir" do

    it "is the dir" do
      blob.uri_dir.must_equal dir
    end

  end

  describe "#uri_base" do

    it "is the base" do
      blob.uri_base.must_equal base
    end

  end

  describe "#uri" do

    it "returns a URI that we can parse successfully" do
      URI.parse(blob.uri)
    end

  end

  describe "#uri_cacheless" do

    it "gets a URI that we can parse successfully" do
      URI.parse(blob.uri_cacheless)
    end

    it "gets a URI that has a unique id appended" do
      blob.uri_cacheless.must_match /\?cacheless=[-0-9abcdef]{36}$/
    end

    it "returns a URI that is different each time" do
      x = blob.uri_cacheless
      y = blob.uri_cacheless
      x.wont_equal y
    end

  end

end
