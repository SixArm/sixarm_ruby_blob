# SixArm.com → Ruby → <br> Blob of data abstract base class

<!--HEADER-OPEN-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_blob.svg)](http://badge.fury.io/rb/sixarm_ruby_blob)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_blob.png)](https://travis-ci.org/SixArm/sixarm_ruby_blob)
[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_blob.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_blob)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_blob/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_blob?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_blob>
* Doc: <http://sixarm.com/sixarm_ruby_blob/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_blob>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [Changes](CHANGES.md), [License](LICENSE.md), [Contributing](CONTRIBUTING.md).

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

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_blob

Or add this to your Gemfile:

    gem 'sixarm_ruby_blob'

### Require

To require the gem in your code:

    require 'sixarm_ruby_blob'

<!--INSTALL-SHUT-->


## Examples

Create a blob:

    require "sixarm_ruby_blob"
    blob = Blob.new(dir: "/my/photos", name: "photo.jpb")

Locate the blob as a file and as a URI:

    blob.file_path #=> "/my/photos/photo.jpg"
    blob.uri_path #=> "http://example.com/my/photos/photo.jpg"
