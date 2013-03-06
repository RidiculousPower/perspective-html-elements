# -*- encoding : utf-8 -*-

require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::Paragraph do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML P tag(<p ...>)' do

    paragraph = ::Perspective::HTML::Elements::Text::Paragraph.new

    paragraph_content = 'Example!'

    paragraph.content = paragraph_content

    paragraph_html_node = paragraph.to_html_node

    paragraph_html_node.name.should == 'p'
    paragraph_html_node.content.should == paragraph_content

  end

end

