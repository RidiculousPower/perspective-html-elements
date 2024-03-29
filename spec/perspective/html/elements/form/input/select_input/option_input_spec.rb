# -*- encoding : utf-8 -*-

require_relative '../../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::SelectInput::OptionInput do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML OPTION tag (<option>)' do

    option = ::Perspective::HTML::Elements::Form::Input::SelectInput::OptionInput.new

    option_value  = 'Example!'
    option_text   = 'Example Text!'

    option.text = option_text
    option.value = option_value
    option.disable!
    option_html_node = option.to_html_node

    option_html_node.name.should == 'option'
    option_html_node[ 'value' ].should == option_value
    option_html_node.content.should == option_text

  end

end

