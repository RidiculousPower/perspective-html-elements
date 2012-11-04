
require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Head do

  ##################
  #  to_html_node  #
  ##################

  it "can render an HTML HEAD tag (<head>)." do

    module ::Perspective
      def self.request
        return nil
      end
    end

    head = ::Perspective::HTML::Elements::Head.new
    head_html_node = head.to_html_node

    head_html_node.name.should == 'head'
    head_html_node.children[0].content.should == 'Untitled'

    module ::Perspective
      class MockRequest
        def path_info
          return 'some path info'
        end
      end
      def self.request
        return MockRequest.new
      end
    end

    head = ::Perspective::HTML::Elements::Head.new

    head_html_node = head.to_html_node

    head_html_node.name.should == 'head'
    head_html_node.children[0].content.should == 'some path info'
    
    ###############

    head = ::Perspective::HTML::Elements::Head.new

    head.title = 'Title'

    head_html_node = head.to_html_node

    head_html_node.name.should == 'head'
    head_html_node.children[0].content.should == 'Title'
    
  end

end

