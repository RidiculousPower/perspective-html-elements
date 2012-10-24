
require_relative '../../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::SelectInput::OptionInput do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML OPTION tag (<option>)' do

    option = ::Perspective::HTML::Elements::Form::Input::SelectInput::OptionInput.new

    option_value  = 'Example!'
    option_text   = 'Example Text!'

    option.text.value = option_text
    option.value.value = option_value
    option.disabled?.value = true
    option_html_node = option.to_html_node

    option_html_node.name.should == 'option'
    option_html_node[ 'value' ].should == option_value
    option_html_node.content.should == option_text

  end

end

