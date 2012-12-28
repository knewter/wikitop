module Wikitop
  class String < Treetop::Runtime::SyntaxNode
    def to_html
      text_value
    end
  end
end
