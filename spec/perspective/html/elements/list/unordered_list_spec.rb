
require_relative '../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::List::UnorderedList do

  it "can render an HTML UL tag (<ul...>)" do
    
    unordered_list = ::Perspective::HTML::Elements::List::UnorderedList.new

    list_item_one = ::Perspective::HTML::Elements::List::Item.new
    list_item_two = ::Perspective::HTML::Elements::List::Item.new
    
    unordered_list_item_one = 'Example One!'
    unordered_list_item_two = 'Example Two!'

    unordered_list.items.value = [ unordered_list_item_one, unordered_list_item_two ]

    unordered_list_html_node = unordered_list.to_html_node

    unordered_list_html_node.name.should == 'ul'
    unordered_list_html_node.children[ 0 ].name.should == 'li'
    unordered_list_html_node.children[ 0 ].content.should == unordered_list_item_one
    unordered_list_html_node.children[ 1 ].name.should == 'li'
    unordered_list_html_node.children[ 1 ].content.should == unordered_list_item_two

  end

end

