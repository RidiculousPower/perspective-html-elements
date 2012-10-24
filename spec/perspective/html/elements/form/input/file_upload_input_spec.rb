
require_relative '../../../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Form::Input::FileUploadInput do


  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML file_upload tag (<input type="file">)' do

    file_upload = ::Perspective::HTML::Elements::Form::Input::FileUploadInput.new

    file_upload.name.value = :some_file_upload

    file_upload_value  = 'Example!'
    
    file_upload.value.value = file_upload_value

    file_upload_html_node = file_upload.to_html_node

    file_upload_html_node.name.should == 'input'
    file_upload_html_node[ 'type' ].should == 'file'
    file_upload_html_node[ 'value' ].should == file_upload_value

  end

end

