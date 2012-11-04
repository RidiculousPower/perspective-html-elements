
require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::Paragraph do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML P tag(<p ...>)' do

    paragraph = ::Perspective::HTML::Elements::Text::Paragraph.new

    paragraph_content = 'Example!'

    paragraph.content.__value__ = paragraph_content

    paragraph_html_node = paragraph.to_html_node

    paragraph_html_node.name.should == 'p'
    paragraph_html_node.content.should == paragraph_content

  end

end

