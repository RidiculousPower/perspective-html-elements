
require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::InputError do


  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML error tag (<error for="...">)' do

    error = ::Perspective::HTML::Elements::Form::Input::InputError.new

    error_text  = 'Error!'
    error_for   = 'input_name'
    
    error.text = error_text
    error.for_input = error_for

    error_html_node = error.to_html_node

    error_html_node.name.should == 'span'
    error_html_node.content.should == error_text
    error_html_node[ 'class' ].should == 'Perspective::HTML::Elements::Form::Input::InputError'
    error_html_node[ 'for' ].should == error_for

  end

end

