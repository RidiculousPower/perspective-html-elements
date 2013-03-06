# -*- encoding : utf-8 -*-

require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML FORM tag (<form>)' do

    ::Perspective::BindingTypes::HTMLBindings.define_binding_methods( :URI )
    form = ::Perspective::HTML::Elements::Form.new

    form_action = 'http:://example.com'
    form.action = form_action

    form.•elements.«view» = ::Perspective::HTML::Elements::Form::Input::TextInput.new

    form.elements.name = :some_input
    form.elements = 'some element'

    form_html_node = form.to_html_node

    form_html_node.name.should == 'form'
    form_html_node[ 'action' ].should == form_action

    form_html_node.children[ 0 ].name.should == 'input'
    
  end
  
end

