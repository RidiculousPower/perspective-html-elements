
require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::PasswordInput do


  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML password tag (<input type="password">)' do

    password = ::Perspective::HTML::Elements::Form::Input::PasswordInput.new

    password.name.value = :some_password
    
    password_value  = 'Example!'
    
    password.value.value = password_value

    password_html_node = password.to_html_node

    password_html_node.name.should == 'input'
    password_html_node[ 'type' ].should == 'password'
    password_html_node[ 'value' ].should == password_value

  end

end

