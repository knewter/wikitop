require_relative '../test_helper'
include Wikitop

describe Wikitop do
  it "outputs useful text with link" do
    output = Parser.new.parse("This: is a [[link]] to another wiki page").to_html
    output.must_equal "This: is a <a href='/link'>link</a> to another wiki page"
  end

  it "outputs useful text with link, spanning multiple lines properly" do
    output = Parser.new.parse("This is a [[link-bait]] to another \nwiki page.  Excited?").to_html
    output.must_equal "This is a <a href='/link-bait'>link-bait</a> to another \nwiki page.  Excited?"
  end
end
