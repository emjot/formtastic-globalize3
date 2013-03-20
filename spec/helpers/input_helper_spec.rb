require 'spec_helper'

include FormtasticSpecHelper

describe 'Formtastic::FormBuilder#input' do

  def posts_path(*args); "/posts"; end

  before(:each) do
    @new_post = double('post')
    @new_post.stub(:class       => ::Post,
                   :id          => nil,
                   :new_record? => true,
                   :errors      => double('errors', :[] => nil),
                   :to_key      => nil,
                   :to_model    => @new_post,
                   :persisted?  => nil)
  end

  describe 'column_for type detection' do

    describe 'on an untranslated column' do

      before(:each) do
        @new_post.stub(:translations => nil)
      end

      it 'should detect a string type' do
        @new_post.stub(:column_for_attribute => :string)
        semantic_form_for(@new_post) do |builder|
          builder.send(:column_for, :foo).should == :string
        end
      end

      it 'should detect an integer type' do
        @new_post.stub(:column_for_attribute => :integer)
        semantic_form_for(@new_post) do |builder|
          builder.send(:column_for, :foo).should == :integer
        end
      end

    end

    describe 'on a translated column' do

      before(:each) do
        @translation = double('translation')
        @new_post.stub(:translations => [@translation])
      end

      it 'should detect a string type' do
        @translation.stub(:column_for_attribute => :string)
        semantic_form_for(@new_post) do |builder|
          builder.send(:column_for, :foo).should == :string
        end
      end

      it 'should detect an integer type' do
        @translation.stub(:column_for_attribute => :integer)
        semantic_form_for(@new_post) do |builder|
          builder.send(:column_for, :foo).should == :integer
        end
      end

    end

  end

end