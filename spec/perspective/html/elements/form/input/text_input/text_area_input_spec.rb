# -*- encoding : utf-8 -*-

require_relative '../../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::TextInput::TextAreaInput do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML TEXTAREA tag(<text_area ...>)' do

    text_area = ::Perspective::HTML::Elements::Form::Input::TextInput::TextAreaInput.new

    text_area.name = :some_text_area
    
    text_area_content = 'Example!'

    text_area.text = text_area_content

    text_area_html_node = text_area.to_html_node

    text_area_html_node.name.should == 'textarea'
    text_area_html_node.content.should == text_area_content

  end

end

