
require_relative '../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Image do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML anchor with an image tag (<img...>)' do

    image = ::Magnets::HTML::Elements::Image.new

    image_source          = 'http://example.com'
    image_alternate_text  = 'Example!'

    image.source = image_source
    image.alternate_text = image_alternate_text

    image_html_node = image.to_html_node

    image_html_node.name.should == 'img'
    image_html_node[ 'src' ].should == image_source
    image_html_node[ 'alt' ].should == image_alternate_text

  end

end

