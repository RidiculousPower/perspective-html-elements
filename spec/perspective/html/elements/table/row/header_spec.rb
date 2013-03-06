# -*- encoding : utf-8 -*-

require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Table::Row::Header do

  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML LINK tag(<td ...>)' do

    table_data_header = ::Perspective::HTML::Elements::Table::Row::Header.new

    table_data_header_content = 'Example!'

    table_data_header.content = table_data_header_content

    table_data_header_html_node = table_data_header.to_html_node

    table_data_header_html_node.name.should == 'th'
    table_data_header_html_node.content.should == table_data_header_content

  end

end

