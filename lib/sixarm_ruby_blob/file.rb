# -*- coding: utf-8 -*-
=begin rdoc

Blob file methods for accessing a blob via the filesystem.

Exclusively for the Blob class.

=end

class Blob

  # Get the blob file's dir name e.g. "/my/photos".
  #
  # This impl calls #dir which is typically fine.
  #
  # Override this if the local storage file dir
  # name is different than the generic base name.
  #
  # @return [String] the blob file's dir name
  #
  def file_dir
    dir
  end

  # Get the blob file's base name e.g. "photo.jpg".
  #
  # This impl calls #base which is typically fine.
  #
  # Override this when the local storage file base
  # name is different than the generic base name.
  #
  # @return [String] the blob file's base name
  #
  def file_base
    base
  end

  # Get the blob file's path e.g. "/my/photos/photo.jpg"
  #
  # This impl calls #file_dir and #file_base.
  # Subclasses can likely use this as-is.
  #
  # @return [Pathname] the blob file's path
  #
  def file_path
    file_pathname.to_s
  end

  # Get the blob file's pathname e.g. Pathname("/my/photos/photo.jpg")
  #
  # This impl calls #file_dir and #file_base.
  # Subclasses can likely use this as-is.
  #
  # @return [Pathname] the blob file's pathname
  #
  def file_pathname
    Pathname(file_dir) + file_base
  end

  # Does the file exist on the local filesystem?
  #
  # @return [boolean] iff the file exists
  #
  def file_exist?
    FileTest.exist? file_path
  end

end
