
require_relative '../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Head::Style do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML SCRIPT tag (<style ...>)' do

    style = ::Magnets::HTML::Elements::Head::Style.new

    style_html_node = style.to_html_node

    style_html_node.name.should == 'style'
    style_html_node[ 'type' ].should == ::Magnets::HTML::Elements::Head::Style::Type

  end

end

