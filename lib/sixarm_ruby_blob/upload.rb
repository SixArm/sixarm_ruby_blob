# -*- coding: utf-8 -*-
=begin rdoc

Blob method to upload from a web page.

Exclusively for the Blob class.

=end

class Blob

  # Upload to this blob's file_path from a web form file_field.
  #
  # TODO optimize this to move the temp file into place
  #
  # @return [Boolean] true iff the upload succeeds
  #
  def upload(file_field)
    self.class.upload(file_path, file_field)
  end

  # Upload to a file_path from a web form file_field.
  #
  # TODO optimize this to move the temp file into place
  #
  # @return [Boolean] true iff the upload succeeds
  #
  def self.upload(file_path, file_field)
    if vet_file_field?(file_field)
      file_field.tempfile.binmode
      File.open(file_path, "wb") { |f| f.write(file_field.read) }
      return true
    end
    return false
  end

  # Vet the file field for all the methods that we expect
  # from a web browser upload; we call this before we upload.
  #
  def self.vet_file_field?(file_field)
    !!(
      file_field \
      && file_field.respond_to?(:tempfile) \
      && file_field.tempfile \
      && file_field.tempfile.respond_to?(:path) \
      && file_field.tempfile.respond_to?(:binmode) \
      && file_field.tempfile.path
    ) 
  end
  
  # Deprecated
  #
  def save(file_field)
    raise "Deprecated: replace with #upload"
  end

end
