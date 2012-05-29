
require_relative '../../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Form::Input::Hidden do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML hidden input tag (<input type="hidden">)' do

    hidden = ::Magnets::HTML::Elements::Form::Input::Hidden.new

    hidden.name = :some_hidden

    hidden_value  = 'Example!'
    
    hidden.value = hidden_value

    hidden_html_node = hidden.to_html_node

    hidden_html_node.name.should == 'input'
    hidden_html_node[ 'type' ].should == 'hidden'
    hidden_html_node[ 'value' ].should == hidden_value

  end

end

