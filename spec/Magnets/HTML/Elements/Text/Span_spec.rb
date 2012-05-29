
require_relative '../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Text::Span do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML SPAN tag(<span ...>)' do

    span = ::Magnets::HTML::Elements::Text::Span.new

    span_content = 'Example!'

    span.content = span_content

    span_html_node = span.to_html_node

    span_html_node.name.should == 'span'
    span_html_node.content.should == span_content

  end

end

