# -*- encoding : utf-8 -*-

require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::HiddenInput do


  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML hidden input tag (<input type="hidden">)' do

    hidden = ::Perspective::HTML::Elements::Form::Input::HiddenInput.new

    hidden.name = :some_hidden

    hidden_value  = 'Example!'
    
    hidden.value = hidden_value

    hidden_html_node = hidden.to_html_node

    hidden_html_node.name.should == 'input'
    hidden_html_node[ 'type' ].should == 'hidden'
    hidden_html_node[ 'value' ].should == hidden_value

  end

end

