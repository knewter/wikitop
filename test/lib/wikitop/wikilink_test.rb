require_relative '../../test_helper'
include Wikitop

describe Wikitop do
  it "parses strings" do
    tree = Parser.new.parse("foo")
    tree.must_be_instance_of Phrase
    tree.elements[0].must_be_instance_of Wikitop::String
  end

  it "parses wiki links" do
    tree = Parser.new.parse("[[link]]")
    tree.must_be_instance_of Phrase
    tree.elements[0].must_be_instance_of WikiLink
    tree.elements[0].elements[0].must_be_instance_of Wikitop::String
  end

  it "parses text embedding wiki links" do
    tree = Parser.new.parse("*foo* [[link]]")
    tree.must_be_instance_of Phrase
    tree.elements[0].must_be_instance_of Wikitop::String
    tree.elements[1].must_be_instance_of WikiLink
  end
end
