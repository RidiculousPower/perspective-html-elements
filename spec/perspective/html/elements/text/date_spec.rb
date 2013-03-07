# -*- encoding : utf-8 -*-

require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Text::Date do
  
  let( :date ) { ::Perspective::HTML::Elements::Text::Date.new }
  let( :date_html_node ) { date.to_html_node }
  
  ##################
  #  to_html_node  #
  ##################

  it 'will render an HTML date tag(<span><span>day</span><span>month</span><span>year</span></span>)' do
    
    date.day   = 24
    date.month = 5
    date.year  = 1981

    date_html_node.name.should == 'span'

    date_html_node.children[ 0 ].name.should == 'span'
    date_html_node.children[ 1 ].name.should == 'span'
    date_html_node.children[ 2 ].name.should == 'span'
    date_html_node.children[ 0 ].content.should == date.day.to_s
    date_html_node.children[ 1 ].content.should == date.month.to_s
    date_html_node.children[ 2 ].content.should == date.year.to_s

  end

end

