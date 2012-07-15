
require_relative '../../../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Form::Input::SelectInput::OptionInput do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML OPTION tag (<option>)' do

    option = ::Magnets::HTML::Elements::Form::Input::SelectInput::OptionInput.new

    option_value  = 'Example!'
    option_text   = 'Example Text!'

    option.text = option_text
    option.value = option_value
    option.disabled = true
    option_html_node = option.to_html_node

    option_html_node.name.should == 'option'
    option_html_node[ 'value' ].should == option_value
    option_html_node.content.should == option_text

  end

end

