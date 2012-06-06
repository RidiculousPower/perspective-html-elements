
require_relative '../../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Form::Input::SelectInput do


  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML SELECT tag (<select>)' do

    select = ::Magnets::HTML::Elements::Form::Input::SelectInput.new

    select.name = :some_select
    
    select_html_node = select.to_html_node

    select_html_node.name.should == 'select'

  end

end

