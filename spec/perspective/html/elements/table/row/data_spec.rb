
require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Table::Row::Data do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML LINK tag(<td ...>)' do

    table_data = ::Perspective::HTML::Elements::Table::Row::Data.new

    table_data_content = 'Example!'

    table_data.content.__value__ = table_data_content

    table_data_html_node = table_data.to_html_node

    table_data_html_node.name.should == 'td'
    table_data_html_node.content.should == table_data_content

  end

end

