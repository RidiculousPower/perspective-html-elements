# -*- encoding : utf-8 -*-

require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::Header5 do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML Header5 tag(<h5 ...>)' do

    h5 = ::Perspective::HTML::Elements::Text::Header5.new

    h5_content = 'Example!'

    h5.content = h5_content

    h5_html_node = h5.to_html_node

    h5_html_node.name.should == 'h5'
    h5_html_node.content.should == h5_content

  end

end

