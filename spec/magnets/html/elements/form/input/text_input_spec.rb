
require_relative '../../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Form::Input::TextInput do


  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML INPUT tag (<input>)' do

    input = ::Magnets::HTML::Elements::Form::Input::TextInput.new

    input.name = :some_input
    
    input_value = 'Example!'

    input.value = input_value

    input_html_node = input.to_html_node

    input_html_node.name.should == 'input'
    input_html_node[ 'value' ].should == input_value

  end

end

