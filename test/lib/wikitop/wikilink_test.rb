require_relative '../../test_helper'
include Wikitop

describe Wikitop do
  it "parses wiki links" do
    tree = Parser.new.parse("[[link]]")
    assert_kind_of WikiLink, tree
    assert_kind_of Wikitop::String, tree.elements[0]
  end
end
