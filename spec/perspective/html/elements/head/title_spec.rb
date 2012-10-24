
require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Head::Title do

  ##################
  #  to_html_node  #
  ##################

  it "can render an HTML TITLE tag (<title...>)" do

    title = ::Perspective::HTML::Elements::Head::Title.new

    title_text = 'Example!'

    title.content.value = title_text

    title_html_node = title.to_html_node

    title_html_node.name.should == 'title'
    title_html_node.content.should == title_text
    
  end

end

