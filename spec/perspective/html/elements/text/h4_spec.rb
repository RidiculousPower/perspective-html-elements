
require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::H4 do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML H4 tag(<h4 ...>)' do

    h4 = ::Perspective::HTML::Elements::Text::H4.new

    h4_content = 'Example!'

    h4.content.value = h4_content

    h4_html_node = h4.to_html_node

    h4_html_node.name.should == 'h4'
    h4_html_node.content.should == h4_content

  end

end

