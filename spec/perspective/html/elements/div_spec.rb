
require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Div do

  it "can render an HTML DIV tag (<div>)" do
    
    div = ::Perspective::HTML::Elements::Div.new

    div_text = 'Example!'

    div.content.value = div_text

    div_html_node = div.to_html_node

    div_html_node.name.should == 'div'
    div_html_node.content.should == div_text

  end

end

