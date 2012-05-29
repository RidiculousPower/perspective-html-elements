
require_relative '../../../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::Form::Input::Label do

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML label tag (<label for="...">)' do

    label = ::Magnets::HTML::Elements::Form::Input::Label.new

    label_text  = 'Example!'
    label_for   = 'input_name'
    
    label.text = label_text
    label.for_input = label_for

    label_html_node = label.to_html_node

    label_html_node.name.should == 'label'
    label_html_node.content.should == label_text
    label_html_node[ 'for' ].should == label_for

  end

end

