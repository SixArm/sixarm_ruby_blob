# -*- coding: utf-8 -*-
=begin rdoc

Blob URI methods for accessing a blob via the web. 

Exclusively for the Blob class.

=end

class Blob

  # Get the blob URI's dir name e.g. "/my/photos".
  #
  # This impl calls #dir which is typically fine.
  #
  # Override this if the local storage file dir
  # name is different than the generic base name.
  #
  # @return [String] the blob URI's dir name
  #
  def uri_dir
    dir
  end

  # Get the blob's URI base name e.g. "photo.jpg".
  #
  # This impl calls #base which is typically fine.
  #
  # Override this when the URI base name
  # is different than the generic base name.
  #
  # @return [String] the blob URI's base name
  #
  def uri_base    
    base
  end

  # Get the blob's URI to access this blob from the web.
  #
  # This impl calls #uri_dir and #uri_base.
  # Override this e.g. for assets, CDNs, etc.
  #
  # @return [String] the blob URI's path
  #
  def uri
    return "/#{uri_dir}/#{uri_base}"
  end

  # Get the blob's URI to access this blob from the web,
  # with a random chaff query appended as a cache buster.
  #
  # @return [String] the blob URI's path?uuid=chaff
  #
  def uri_cacheless
    return "#{uri}?cacheless=#{SecureRandom.uuid}"
  end

  # Deprecated
  #
  def url
    raise "Deprecated: replace with #uri"
  end

  # Deprecated
  #
  def url_cacheless
    raise "Deprecated: replace with #uri_cacheless"
  end

end
