# -*- coding: utf-8 -*-
require "sixarm_ruby_blob_test"

describe Blob do

  let(:dir){ "abc" }
  let(:base){ "def" }
  let(:blob){ Blob.new(dir: dir, base: base) }

  describe "#export_dir" do

    it "defaults to the file dir" do
      blob.export_dir.must_equal blob.file_dir
      blob.export_dir.must_equal "#{dir}"
    end

  end

  describe "#export_base" do

    it "it defaults to the file base" do
      blob.export_base.must_equal blob.file_base
      blob.export_base.must_match "#{base}"
    end

  end

  describe "#export_path" do

    it "combines the dir and base" do
      blob.export_path.must_equal "#{dir}/#{base}"
    end

  end

end
