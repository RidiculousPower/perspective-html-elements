# -*- encoding : utf-8 -*-

require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::Header1 do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML Header1 tag(<h1 ...>)' do

    h1 = ::Perspective::HTML::Elements::Text::Header1.new

    h1_content = 'Example!'

    h1.content = h1_content

    h1_html_node = h1.to_html_node

    h1_html_node.name.should == 'h1'
    h1_html_node.content.should == h1_content

  end

end

