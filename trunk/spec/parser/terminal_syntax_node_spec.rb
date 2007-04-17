require 'rubygems'
require 'spec'

dir = File.dirname(__FILE__)
require "#{dir}/../spec_helper"

context "A terminal syntax node" do
  setup do
    input = "foobar"
    consumed_interval = 0...3
    @node = TerminalSyntaxNode.new(input, consumed_interval)
  end
  
  specify "has the text value of the input over its consumed_interval " do
    @node.text_value.should_eql "foo"
  end  
end

context "An empty terminal syntax node" do
  setup do
    input = ""
    consumed_interval = 0...0
    @node = TerminalSyntaxNode.new(input, consumed_interval)
  end
  
  specify "should be epsilon" do
    @node.should_be_epsilon
  end
end