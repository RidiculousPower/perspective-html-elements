
require_relative '../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Button do

  it "can render an HTML BUTTON tag (<button...>)" do
    
    button = ::Magnets::HTML::Elements::Button.new

    button_text = 'Example!'

    button.label = button_text

    button_html_node = button.to_html_node

    button_html_node.name.should == 'button'
    button_html_node.content.should == button_text

  end

end

