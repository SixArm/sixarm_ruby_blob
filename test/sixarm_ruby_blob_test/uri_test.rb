# -*- coding: utf-8 -*-
require "sixarm_ruby_blob_test"

describe Blob do

  let(:dir){ "foo" }
  let(:base){ "bar" }
  let(:blob){ Blob.new(dir: dir, base: base) }

  describe "#uri_dir" do

    it "is the dir" do
      expect(blob.uri_dir).must_equal dir
    end

  end

  describe "#uri_base" do

    it "is the base" do
      expect(blob.uri_base).must_equal base
    end

  end

  describe "#uri" do

    it "returns a URI that we can parse successfully" do
      expect(URI.parse(blob.uri)).must_be_kind_of URI
    end

  end

  describe "#uri_cacheless" do

    it "gets a URI that we can parse successfully" do
      expect(URI.parse(blob.uri_cacheless)).must_be_kind_of URI
    end

    it "gets a URI that has a unique id appended" do
      expect(blob.uri_cacheless).must_match(/\?cacheless=[-0-9abcdef]{36}$/)
    end

    it "returns a URI that is different each time" do
      x = blob.uri_cacheless
      y = blob.uri_cacheless
      expect(x).wont_equal y
    end

  end

end
