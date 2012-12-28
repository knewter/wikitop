# Based on
# https://github.com/aarongough/koi-reference-parser/blob/development/lib/parser/parser.rb
module Wikitop
  class Parser
    require 'treetop'
    Treetop.load(File.expand_path(File.join(File.dirname(__FILE__), 'wikitop.treetop')))
    @@parser = WikitopParser.new
    def parse(input)
      tree = @@parser.parse(input)

      if(tree.nil?)
        raise ParseError, "Parse error at offset: #{@@parser.index}"
      end
      
      # clean up the tree by removing all nodes of default type 'SyntaxNode'
      clean_tree(tree)

      return tree
    end

    def clean_tree(root_node)
      return if(root_node.elements.nil?)
      root_node.elements.delete_if{|node| node.class.name == "Treetop::Runtime::SyntaxNode" }
      root_node.elements.each {|node| self.clean_tree(node) }
    end
  end
end
