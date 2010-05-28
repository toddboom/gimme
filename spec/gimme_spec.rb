require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Gimme #random" do
  before do
    class GimmeTest < ActiveRecord::Base; end
    GimmeTest.stub(:find)
  end

  it "calls #find(:all) under the hood" do
    GimmeTest.should_receive(:find).once
    GimmeTest.random
  end
  
  it "defaults to :limit => 1" do
    GimmeTest.should_receive(:find).once.with(:all, {:limit => 1, :order => "RAND()"})
    GimmeTest.random
  end

  it "respects passed-in :limit when provided" do
    GimmeTest.should_receive(:find).once.with(:all, {:limit => 5, :order => "RAND()"})
    GimmeTest.random(:limit => 5)
  end

  it "ignores all other :order directives" do
    GimmeTest.should_receive(:find).once.with(:all, {:limit => 1, :order => "RAND()"})
    GimmeTest.random(:order => :name)    
  end
end
