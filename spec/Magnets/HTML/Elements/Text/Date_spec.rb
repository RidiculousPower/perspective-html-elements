
require_relative '../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Text::Date do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML date tag(<span><span>day</span><span>month</span><span>year</span></span>)' do

    date = ::Magnets::HTML::Elements::Text::Date.new

    date.day   = 24
    date.month = 5
    date.year  = 1981

    date_html_node = date.to_html_node

    date_html_node.name.should == 'span'

    date_html_node.children[ 0 ].name.should == 'span'
    date_html_node.children[ 1 ].name.should == 'span'
    date_html_node.children[ 2 ].name.should == 'span'
    date_html_node.children[ 0 ].content.should == date.day.to_s
    date_html_node.children[ 1 ].content.should == date.month.to_s
    date_html_node.children[ 2 ].content.should == date.year.to_s

  end

end

