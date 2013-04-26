# -*- encoding : utf-8 -*-

require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::Header4 do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML Header4 tag(<h4 ...>)' do

    h4 = ::Perspective::HTML::Elements::Text::Header4.new

    h4_content = 'Example!'

    h4.content = h4_content

    h4_html_node = h4.to_html_node

    h4_html_node.name.should == 'h4'
    h4_html_node.content.should == h4_content

  end

end

