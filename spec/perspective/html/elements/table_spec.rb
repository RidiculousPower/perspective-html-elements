
require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Table do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML LINK tag(<table ...>)' do

    table = ::Perspective::HTML::Elements::Table.new

    table.rows = ::Perspective::HTML::Elements::Table::Row.new
    table.rows.data = ::Perspective::HTML::Elements::Table::Row::Data.new
    table.rows.data.content = 'content'

    table_html_node = table.to_html_node

    table_html_node.name.should == 'table'
    table_html_node.children[ 0 ].name.should == 'tr'
    table_html_node.children[ 0 ].children[ 0 ].name.should == 'td'
    table_html_node.children[ 0 ].children[ 0 ].content.should == 'content'
    
  end

end

