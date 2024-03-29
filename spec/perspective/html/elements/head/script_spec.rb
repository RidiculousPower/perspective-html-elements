# -*- encoding : utf-8 -*-

require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Head::Script do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML SCRIPT tag (<script ...>)' do

    script = ::Perspective::HTML::Elements::Head::Script.new

    script_type  = 'text/javascript'

    script.mime_type = script_type

    script_html_node = script.to_html_node

    script_html_node.name.should == 'script'
    script_html_node[ 'type' ].should == script_type

  end

end

