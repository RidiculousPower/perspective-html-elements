
require_relative '../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Form do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML FORM tag (<form>)' do

    form = ::Magnets::HTML::Elements::Form.new

    form_action = 'http:://example.com'

    form.action = form_action

    form.elements = ::Magnets::HTML::Elements::Form::Input::Text.new
    form.elements.name = :some_input

    form_html_node = form.to_html_node

    form_html_node.name.should == 'form'
    form_html_node[ 'action' ].should == form_action

    form_html_node.children[ 0 ].name.should == 'input'
  end

end

