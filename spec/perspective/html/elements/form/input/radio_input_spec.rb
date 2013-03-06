# -*- encoding : utf-8 -*-

require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::RadioInput do


  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML radio tag (<input type="radio">)' do

    radio = ::Perspective::HTML::Elements::Form::Input::RadioInput.new

    radio.name = :some_radio
    
    radio_value  = 'Example!'
    
    radio.value = radio_value

    radio_html_node = radio.to_html_node

    radio_html_node.name.should == 'input'
    radio_html_node[ 'type' ].should == 'radio'
    radio_html_node[ 'value' ].should == radio_value

  end

end

