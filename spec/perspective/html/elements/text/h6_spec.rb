# -*- encoding : utf-8 -*-

require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::Header6 do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML Header6 tag(<h6 ...>)' do

    h6 = ::Perspective::HTML::Elements::Text::Header6.new

    h6_content = 'Example!'

    h6.content = h6_content

    h6_html_node = h6.to_html_node

    h6_html_node.name.should == 'h6'
    h6_html_node.content.should == h6_content

  end

end

