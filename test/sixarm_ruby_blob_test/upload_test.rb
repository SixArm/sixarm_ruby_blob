# -*- coding: utf-8 -*-
require "sixarm_ruby_blob_test"

describe Blob do

  DIR = Pathname(__FILE__).dirname + "samples" 
  BASE = "upload_output.bin"
  TEMPFILE_PATH = DIR + "upload_input.bin" 
  TEMPFILE_BINMODE = true

  let(:blob){ Blob.new(dir: DIR, base: BASE) }
  let(:original_filename){ "hello" }
  let(:content_type){ "abc/def" }

  # Mocks
  let(:tempfile){ OpenStruct.new(path: TEMPFILE_PATH, binmode: TEMPFILE_BINMODE) } 
  let(:file_field){ OpenStruct.new(content_type: content_type, original_filename: original_filename, tempfile: tempfile) }

  describe "upload" do

    before do
      @file_path = blob.file_path

      # Delete a previously-uploaded file if it exists
      File.exists?(@file_path) and File.delete(@file_path)

      # Sanity check
      File.exists?(tempfile.path).must_be_true "Temp file must exist: #{tempfile.path}"

    end

    describe ".upload" do
      
      it "uploads" do
        File.exists?(@file_path).must_be_false "Blob file must not exist: #{@file_path}"
        blob.upload(file_field).must_be_true
        File.exists?(@file_path).must_be_true "Blob file must exist: #{@file_path}"
      end

    end

    describe "#upload" do
            
      it "uploads" do
        File.exists?(@file_path).must_be_false "Blob file must not exist: #{@file_path}"
        Blob.upload(@file_path, file_field).must_be_true
        File.exists?(@file_path).must_be_true "Blob file must exist: #{@file_path}"
      end

    end

    describe "#vet_file_field" do

      before do
        # Sanity check
        file_field.must_exist
        file_field.must_respond_to :tempfile
        file_field.tempfile.must_be_exist
        file_field.tempfile.must_respond_to :path
        file_field.tempfile.must_respond_to :binmode
        file_field.tempfile.path.must_exist
      end

      it "vets" do
        Blob.vet_file_field?(file_field).must_be_true
      end

    end

  end

end
