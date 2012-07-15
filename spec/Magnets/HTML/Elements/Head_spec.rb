
require_relative '../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Head do

  ##################
  #  to_html_node  #
  ##################

  it "can render an HTML HEAD tag (<head>)." do

    module ::Magnets
      def self.request
        return nil
      end
    end

    head = ::Magnets::HTML::Elements::Head.new
    head.__bindings__
    head.__local_aliases_to_bindings__
    head_html_node = head.to_html_node

    head_html_node.name.should == 'head'
    head_html_node.children[0].content.should == 'Untitled'

    module ::Magnets
      class MockRequest
        def path_info
          return 'some path info'
        end
      end
      def self.request
        return MockRequest.new
      end
    end

    head = ::Magnets::HTML::Elements::Head.new
    head.__bindings__
    head.__local_aliases_to_bindings__

    head_html_node = head.to_html_node

    head_html_node.name.should == 'head'
    head_html_node.children[0].content.should == 'some path info'
    
    ###############

    head = ::Magnets::HTML::Elements::Head.new

    head.title = 'Title'

    head_html_node = head.to_html_node

    head_html_node.name.should == 'head'
    head_html_node.children[0].content.should == 'Title'
    
  end

end

