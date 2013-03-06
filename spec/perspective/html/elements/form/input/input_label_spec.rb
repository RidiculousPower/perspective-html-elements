# -*- encoding : utf-8 -*-

require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::InputLabel do


  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML label tag (<label for="...">)' do

    label = ::Perspective::HTML::Elements::Form::Input::InputLabel.new

    label_text  = 'Example!'
    label_for   = 'input_name'
    
    label.text = label_text
    label.for_input = label_for

    label_html_node = label.to_html_node

    label_html_node.name.should == 'label'
    label_html_node.content.should == label_text
    label_html_node[ 'class' ].should == 'Perspective::HTML::Elements::Form::Input::InputLabel'
    label_html_node[ 'for' ].should == label_for

  end

end

