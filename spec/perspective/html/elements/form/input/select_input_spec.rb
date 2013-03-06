# -*- encoding : utf-8 -*-

require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::SelectInput do


  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML SELECT tag (<select>)' do

    select = ::Perspective::HTML::Elements::Form::Input::SelectInput.new

    select.name = :some_select
    
    select_html_node = select.to_html_node

    select_html_node.name.should == 'select'

  end

end

