
require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::H6 do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML H6 tag(<h6 ...>)' do

    h6 = ::Perspective::HTML::Elements::Text::H6.new

    h6_content = 'Example!'

    h6.content.value = h6_content

    h6_html_node = h6.to_html_node

    h6_html_node.name.should == 'h6'
    h6_html_node.content.should == h6_content

  end

end

