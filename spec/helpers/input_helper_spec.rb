require 'spec_helper'


describe 'Formtastic::FormBuilder#input' do

  include FormtasticSpecHelper

  def posts_path(*args); "/posts"; end
  def untranslateds_path(*args); "/untranslateds"; end

  describe 'column_for' do

    describe 'on an untranslated model' do

      before(:each) do
        @untranslated = Untranslated.new
      end

      it 'should detect the type' do
        semantic_form_for(@untranslated) do |builder|
          builder.send(:column_for, :name).type.should == :string
          builder.send(:column_for, :rating).type.should == :integer
        end
      end

    end

    describe 'on a translated model' do

      before(:each) do
        @post = Post.new
      end

      it 'should detect the type of a translated column' do
        semantic_form_for(@post) do |builder|
          builder.send(:column_for, :title).type.should == :string
          builder.send(:column_for, :published).type.should == :boolean
          builder.send(:column_for, :published_at).type.should == :datetime
        end
      end

      it 'should detect the type of an untranslated column' do
        semantic_form_for(@post) do |builder|
          builder.send(:column_for, :rating).type.should == :integer
        end
      end

    end

  end

end