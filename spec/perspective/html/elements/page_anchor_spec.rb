
require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::PageAnchor do

  it 'can render an HTML anchor with a page section (<a href="#...">)' do
    
    anchor = ::Perspective::HTML::Elements::PageAnchor.new

    anchor_subsection = 'example_section'
    anchor_text = 'Example!'

    anchor.subsection = anchor_subsection
    anchor.text = anchor_text

    anchor_html_node = anchor.to_html_node

    anchor_html_node.name.should == 'a'
    anchor_html_node[ 'href' ].should == '#' + anchor_subsection
    anchor_html_node.content.should == anchor_text

  end

end

