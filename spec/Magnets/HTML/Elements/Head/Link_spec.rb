
require_relative '../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Head::Link do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML LINK tag(<link ...>)' do

    link = ::Magnets::HTML::Elements::Head::Link.new

    link_location  = 'http://example.com'

    link.location = link_location

    link_html_node = link.to_html_node

    link_html_node.name.should == 'link'
    link_html_node[ 'href' ].should == link_location

  end

end

