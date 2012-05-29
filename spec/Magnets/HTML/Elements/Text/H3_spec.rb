
require_relative '../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Text::H3 do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML H3 tag(<h3 ...>)' do

    h3 = ::Magnets::HTML::Elements::Text::H3.new

    h3_content = 'Example!'

    h3.content = h3_content

    h3_html_node = h3.to_html_node

    h3_html_node.name.should == 'h3'
    h3_html_node.content.should == h3_content

  end

end

