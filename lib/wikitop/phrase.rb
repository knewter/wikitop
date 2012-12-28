module Wikitop
  class Phrase < Treetop::Runtime::SyntaxNode
    def to_html
      elements.map(&:to_html).join("")
    end
  end
end
