# -*- coding: utf-8 -*-
=begin rdoc

Blob methods for exporting.

Exclusively for the Blob class.

=end

class Blob

  # Get the blob export's directory name, e.g. "/my/photos"
  #
  # The implementation simply calls #file_dir.
  # Override this when an export needs a custom directory base.
  #
  # @return [String] the blob export's directory name
  #
  def export_dir
    file_dir
  end

  # Get the blob export's base name, e.g. "photo.jpg"
  #
  # The implementation simply calls #file_base.
  # Override this when an export needs a custom base name.
  #
  # @return [String] the blob export's base name
  #
  def export_base
    file_base
  end

  # Get the blob export's path, e.g. "/my/photos/photo.jpg"
  #
  # The implementation simply calls #file_path.
  # Override this when an export needs a custom path.
  #
  # @return [String] the blob export's path
  #
  def export_path
    export_pathname.to_s
  end

  # Get the blob export's pathname, e.g. Pathname("/my/photos/photo.jpg")
  #
  # The implementation simply calls #file_pathname.
  # Override this when an export needs a custom path.
  #
  # @return [String] the file's path suitable for export
  #
  def export_pathname
    Pathname(export_dir) + export_base
  end

end
