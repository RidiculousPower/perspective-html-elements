
require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::H2 do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML H2 tag(<h2 ...>)' do

    h2 = ::Perspective::HTML::Elements::Text::H2.new

    h2_content = 'Example!'

    h2.content = h2_content

    h2_html_node = h2.to_html_node

    h2_html_node.name.should == 'h2'
    h2_html_node.content.should == h2_content

  end

end

