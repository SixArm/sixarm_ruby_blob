# Ruby » <br> Blob of data abstract base class

* Doc: <http://sixarm.com/sixarm_ruby_blob/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_blob>
* Repo: <http://github.com/sixarm/sixarm_ruby_blob>
<!--HEADER-SHUT-->

## Introduction

This is an abstract base class to help us model a blob of data.

We use this class as our parent class for image files, music files, and video files.

A blob provides a few basic capabilities:

  * Access a blob via a file path on the local filesystem.
  * Access a blob via a URI.
  * Upload a blob by using a typical web browser form.

For docs go to <http://sixarm.com/sixarm_ruby_blob/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_blob", ">= 1.0.2", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_blob -v ">= 1.0.2, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_blob -v ">= 1.0.2, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_blob"

<!--INSTALL-SHUT-->


## Examples

Create a blob:

    require "sixarm_ruby_blob"
    blob = Blob.new(dir: "/my/photos", name: "photo.jpb")

Locate the blob as a file and as a URI:

    blob.file_path #=> "/my/photos/photo.jpg"
    blob.uri_path #=> "http://example.com/my/photos/photo.jpg"
