# SixArm.com » Ruby » <br> Blob of data abstract base class

* Doc: <http://sixarm.com/sixarm_ruby_blob/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_blob>
* Repo: <http://github.com/sixarm/sixarm_ruby_blob>
* Email: Joel Parker Henderson, <joel@sixarm.com>

## Introduction

This is an abstract base class to help us model a blob of data.

We use this class as our parent class for image files, music files, and video files.

A blob provides a few basic capabilities:

  * Access a blob via a file path on the local filesystem.
  * Access a blob via a URI.
  * Upload a blob by using a typical web browser form.

For docs go to <http://sixarm.com/sixarm_ruby_blob/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_blob

Bundler:

    gem "sixarm_ruby_blob", "~>1.0.0"	

Require:

    require "sixarm_ruby_blob"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_blob --test --trust-policy HighSecurity


## Examples

Create a blob:

    require "sixarm_ruby_blob"
    blob = Blob.new(dir: "/my/photos", name: "photo.jpb")

Locate the blob as a file and as a URI:

    blob.file_path #=> "/my/photos/photo.jpg"
    blob.uri_path #=> "http://example.com/my/photos/photo.jpg"


## Changes

* 2013-07-30 1.0.0 Publish.


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2013 Joel Parker Henderson
