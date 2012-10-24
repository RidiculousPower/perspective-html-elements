
require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Comment do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML anchor with a URI (<a href="...://..."...>)' do

    comment = ::Perspective::HTML::Elements::Comment.new

    comment_text = 'Example!'

    comment.text.value = comment_text

    # padding == '  '
    comment_html_node = comment.to_html_node
    comment_html_node.name.should == 'comment'
    comment_html_node.content.should == '  ' + comment_text + '  '

    # padding == ''
    comment.padding.value = ''
    comment_html_node = comment.to_html_node
    comment_html_node.name.should == 'comment'
    comment_html_node.content.should == '' + comment_text + ''

    # padding == "\n"
    comment.padding.value = "\n"
    comment_html_node = comment.to_html_node
    comment_html_node.name.should == 'comment'
    comment_html_node.content.should == "\n" + comment_text + "\n"

  end

end

