
require_relative '../../../../lib/magnets-html-elements.rb'

describe ::Magnets::HTML::Elements::HR do

  ##################
  #  to_html_node  #
  ##################

  it "can render an HTML HR tag (<hr>)." do

    hr = ::Magnets::HTML::Elements::HR.new

    hr_html_node = hr.to_html_node

    hr_html_node.name.should == 'hr'
    
  end

end

