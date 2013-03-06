# -*- encoding : utf-8 -*-

require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Table::Row do
  
  let( :table_row ) { ::Perspective::HTML::Elements::Table::Row.new }
  let( :table_row_html_node ) { table_row.to_html_node }
 
  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML LINK tag(<tr ...>)' do

    table_row_content = 'Example!'

    table_row.data[0] = 'content1'
    table_row.data[1] = 'content2'
    table_row.data[2] = 'content3'
    table_row.data[3] = 'content4'

    table_row_html_node.name.should == 'tr'
    table_row_html_node.children[0].name.should == 'td'
    table_row_html_node.children[0].content.should == 'content1'
    table_row_html_node.children[1].name.should == 'td'
    table_row_html_node.children[1].content.should == 'content2'
    table_row_html_node.children[2].name.should == 'td'
    table_row_html_node.children[2].content.should == 'content3'
    table_row_html_node.children[3].name.should == 'td'
    table_row_html_node.children[3].content.should == 'content4'

  end

end

