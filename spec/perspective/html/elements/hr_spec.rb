
require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::HR do

  ##################
  #  to_html_node  #
  ##################

  it "can render an HTML HR tag (<hr>)." do

    hr = ::Perspective::HTML::Elements::HR.new

    hr_html_node = hr.to_html_node

    hr_html_node.name.should == 'hr'
    
  end

end

