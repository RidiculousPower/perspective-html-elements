# -*- encoding : utf-8 -*-

require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Table do

  let( :table ) { ::Perspective::HTML::Elements::Table.new }
  let( :table_html_node ) { table.to_html_node }
    
  ##################
  #  to_html_node  #
  ##################
  
  context '#to_html_node' do
    it 'will render an HTML LINK tag(<table ...>)' do
      
      table.headers.header[0].content = 'header1'
      table.headers.header[1].content = 'header2'
      table.headers.header[2].content = 'header3'
      table.rows[0].data[0].content = 'row1-content1'
      table.rows[0].data[1].content = 'row1-content2'
      table.rows[0].data[2].content = 'row1-content3'
      table.rows[1].data[0].content = 'row2-content1'
      table.rows[1].data[1].content = 'row2-content2'
      table.rows[1].data[2].content = 'row2-content3'
      table.rows[2].data[0].content = 'row3-content1'
      table.rows[2].data[1].content = 'row3-content2'
      table.rows[2].data[2].content = 'row3-content3'

      table_html_node.name.should == 'table'
      table_html_node.children[ 0 ].name.should == 'tr'

      # headers
      table_html_node.children[ 0 ].name.should == 'tr'
      table_html_node.children[ 0 ].children[ 0 ].name.should == 'th'
      table_html_node.children[ 0 ].children[ 1 ].name.should == 'th'
      table_html_node.children[ 0 ].children[ 2 ].name.should == 'th'
      
      # row 1
      table_html_node.children[ 1 ].name.should == 'tr'
      table_html_node.children[ 1 ].children[ 0 ].name.should == 'td'
      table_html_node.children[ 1 ].children[ 0 ].content.should == 'row1-content1'
      table_html_node.children[ 1 ].children[ 1 ].content.should == 'row1-content2'
      table_html_node.children[ 1 ].children[ 2 ].content.should == 'row1-content3'

      # row 2
      table_html_node.children[ 2 ].name.should == 'tr'
      table_html_node.children[ 2 ].children[ 0 ].name.should == 'td'
      table_html_node.children[ 2 ].children[ 0 ].content.should == 'row2-content1'
      table_html_node.children[ 2 ].children[ 1 ].content.should == 'row2-content2'
      table_html_node.children[ 2 ].children[ 2 ].content.should == 'row2-content3'

      # row 3
      table_html_node.children[ 3 ].name.should == 'tr'
      table_html_node.children[ 3 ].children[ 0 ].name.should == 'td'
      table_html_node.children[ 3 ].children[ 0 ].content.should == 'row3-content1'
      table_html_node.children[ 3 ].children[ 1 ].content.should == 'row3-content2'
      table_html_node.children[ 3 ].children[ 2 ].content.should == 'row3-content3'
    
    end
  end
  
end

