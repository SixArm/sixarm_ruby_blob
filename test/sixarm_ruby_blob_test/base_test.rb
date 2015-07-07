# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

describe Blob do

  let(:blob){ Factory.build(:blob, name: FAB.name) }

  describe "equality" do

    before do
      @a = Blob.new
      @b = Blob.new
    end

    describe "#==(other)" do

      it "is true iff names are equal (using ==)" do
        @a.name = "foo"
        @b.name = "foo"
        (@a==@b).must_be_true
      end

      it "is false when names are inequal (using ==)" do
        @a.name = "foo"
        @b.name = "bar"
        (@a==@b).must_be_false
      end

    end

    describe "#eql?(other)" do
      
      before do
        @a = Blob.new
        @b = Blob.new
      end
      
      it "is true iff names are equal (using #eql?)" do
        @a.name = "foo"
        @b.name = "foo"
        (@a.eql?(@b)).must_be_true
      end
      
      it "is false when names are inequal (using #eql?)" do
        @a.name = "foo"
        @b.name = "bar"
        (@a.eql?(@b)).must_be_false
      end

    end

  end
  
end
