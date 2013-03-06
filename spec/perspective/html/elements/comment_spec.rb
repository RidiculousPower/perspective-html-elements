# -*- encoding : utf-8 -*-

require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Comment do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML anchor with a URI (<a href="...://..."...>)' do

    comment = ::Perspective::HTML::Elements::Comment.new

    comment_text = 'Example!'

    comment.text = comment_text

    # padding == '  '
    comment_html_node = comment.to_html_node
    comment_html_node.name.should == 'comment'
    comment_html_node.content.should == '  ' + comment_text + '  '

    # padding == ''
    comment.padding = ''
    comment_html_node = comment.to_html_node
    comment_html_node.name.should == 'comment'
    comment_html_node.content.should == '' + comment_text + ''

    # padding == "\n"
    comment.padding = "\n"
    comment_html_node = comment.to_html_node
    comment_html_node.name.should == 'comment'
    comment_html_node.content.should == "\n" + comment_text + "\n"

  end

end

