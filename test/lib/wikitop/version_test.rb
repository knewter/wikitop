require_relative '../../test_helper'

describe Wikitop do
  it "must be defined" do
    Wikitop::VERSION.wont_be_nil
  end
end
