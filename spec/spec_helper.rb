require "libxml"
require File.join(File.dirname(__FILE__), "..", "css")

HTML = <<HERE
<html>
  <body>
    <div foo='bar' class='foo'>Hello
      <span foo='bard' class='foo bar'>My name</span>
      <span food='bar' class='bar foo'>is wycats</span>
      <span foo='bar baz' class='food'>Span</span>
      <span foo='baz bar'>Span</span>
    </div>
    <p>Some text</p>
  </body>
</html>
HERE

module Nokogiri
  module Test
    module Matchers

      class HaveNodes
        def initialize(selector, count)
          @selector, @count = selector, count
        end
        
        def matches?(text)
          @doc = LibXML::XML::HTMLParser.string(text).parse
          @xpath = Nokogiri::CSS::Parser.new.parse(@selector)[0].to_xpath
          begin
            @actual_count = @doc.find(@xpath).size
          rescue LibXML::XML::XPath::InvalidPath => e
            @error = "Invalid XPath: #{@xpath}"
            return nil
          end
          @actual_count == @count
        end
        
        def failure_message
          @error ||
          "Expected the following text to have #{@count} nodes matching " \
          "#{@selector}, but it had #{@actual_count}. The generated " \
          "xpath was #{@xpath}:\n#{@doc.inspect}" \
        end
      end
      
      def have_nodes(selector, count)
        HaveNodes.new(selector, count)
      end
      
    end
  end
end

Spec::Runner.configure do |config|
  config.include Nokogiri::Test::Matchers
end