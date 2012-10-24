
require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Body do

  it "can render an HTML BODY tag (<body...>)" do
    
    body = ::Perspective::HTML::Elements::Body.new

    body_text = 'Example!'

    body.content.value = body_text

    body_html_node = body.to_html_node

    body_html_node.name.should == 'body'
    body_html_node.content.should == body_text

  end

end

