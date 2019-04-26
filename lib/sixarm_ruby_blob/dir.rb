# -*- coding: utf-8 -*-
=begin rdoc

Blob methods for accessing a blob via a dir name and base name.
Exclusively for the Blob class.

=end

class Blob
  
  #attr_accessor :dir   # Dir name of this blob, e.g. "/my/photos"
  #attr_accessor :base  # Base name of this blob, e.g. "photo.jpg"

  def dir; @dir; end
  def dir=(x); @dir=x; end

  def base; @base;  end
  def base=(x); @base=x; end

  def initialize(options = {})
    @dir ||= options[:dir]
    @base ||= options[:base]
  end

  def name
    @name ||= "#{dir}/#{base}"
  end

  def ext
    base =~ /\.(\w+)$/ ? $1 : nil
  end

end
