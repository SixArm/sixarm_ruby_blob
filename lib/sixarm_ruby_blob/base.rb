# -*- coding: utf-8 -*-
=begin rdoc

Blob abstract model suitable for our
typical kinds of data files in our app.

We can store the blob on the local file system (see BlobFile),
We can make the blob accessible via URI (see BlobURI).
We can export the blob to an external system (see BlobExport).

=end

class Blob

  def name; @name; end
  def name=x; @name=x; end

  def initialize(options = {})
    @name ||= options[:name]
  end

  def ==(other)
    self.name == other.name
  end

  def eql?(other)
    self.name.eql?(other.name)
  end

end
