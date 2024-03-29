# -*- encoding : utf-8 -*-

require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::CheckboxInput do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML checkbox tag (<input type="checkbox">)' do

    checkbox = ::Perspective::HTML::Elements::Form::Input::CheckboxInput.new

    checkbox.name = :some_checkbox

    checkbox_value  = 'Example!'

    checkbox.checked = true
    checkbox.value = checkbox_value

    checkbox_html_node = checkbox.to_html_node

    checkbox_html_node.name.should == 'input'
    checkbox_html_node[ 'type' ].should == 'checkbox'
    checkbox_html_node[ 'value' ].should == checkbox_value

  end

end

