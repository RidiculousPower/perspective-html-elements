
require_relative '../../../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Form::Input::TextInput::TextAreaInput do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML TEXTAREA tag(<text_area ...>)' do

    text_area = ::Magnets::HTML::Elements::Form::Input::TextInput::TextAreaInput.new

    text_area.name = :some_text_area
    
    text_area_content = 'Example!'

    text_area.content = text_area_content

    text_area_html_node = text_area.to_html_node

    text_area_html_node.name.should == 'textarea'
    text_area_html_node.content.should == text_area_content

  end

end

