# -*- encoding : utf-8 -*-

require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::Header3 do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML Header3 tag(<h3 ...>)' do

    h3 = ::Perspective::HTML::Elements::Text::Header3.new

    h3_content = 'Example!'

    h3.content = h3_content

    h3_html_node = h3.to_html_node

    h3_html_node.name.should == 'h3'
    h3_html_node.content.should == h3_content

  end

end

