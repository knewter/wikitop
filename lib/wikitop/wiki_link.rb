module Wikitop
  class WikiLink < Treetop::Runtime::SyntaxNode
    def link_text
      elements[0].to_html
    end
    def to_html
      "<a href='/#{link_text}'>#{link_text}</a>"
    end
  end
end
