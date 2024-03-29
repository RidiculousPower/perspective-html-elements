# -*- encoding : utf-8 -*-

require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::MailTo do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML anchor with a mailto URI (<a href="mailto:..."...>)' do

    mail = ::Perspective::HTML::Elements::MailTo.new

    mail_address  = 'example@example.com'
    mail_link     = 'Example!'

    mail.address = mail_address
    mail.text = mail_link

    mail_html_node = mail.to_html_node

    mail_html_node.name.should == 'a'
    mail_html_node[ 'href' ].should == 'mailto:' + mail_address
    mail_html_node.content.should == mail_link

  end

end

