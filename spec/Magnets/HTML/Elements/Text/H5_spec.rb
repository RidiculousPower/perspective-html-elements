
require_relative '../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Text::H5 do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML H5 tag(<h5 ...>)' do

    h5 = ::Magnets::HTML::Elements::Text::H5.new

    h5_content = 'Example!'

    h5.content = h5_content

    h5_html_node = h5.to_html_node

    h5_html_node.name.should == 'h5'
    h5_html_node.content.should == h5_content

  end

end

