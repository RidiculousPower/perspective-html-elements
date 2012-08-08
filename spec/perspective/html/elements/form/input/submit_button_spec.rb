
require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::SubmitButton do


  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML submit tag (<input type="submit">)' do

    submit = ::Perspective::HTML::Elements::Form::Input::SubmitButton.new

    submit.name = :some_submit
    
    submit_value  = 'Example!'
    
    submit.value = submit_value

    submit_html_node = submit.to_html_node

    submit_html_node.name.should == 'input'
    submit_html_node[ 'type' ].should == 'submit'
    submit_html_node[ 'value' ].should == submit_value

  end

end

