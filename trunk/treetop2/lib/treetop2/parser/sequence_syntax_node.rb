module Treetop2
  module Parser
    class SequenceSyntaxNode < SyntaxNode
      attr_reader :elements
    
      def initialize(input, interval, elements, nested_results=elements)
        super(input, interval, nested_results)
        @elements = elements
      end
    
      def empty?
        elements.empty?
      end
    end
  end
end