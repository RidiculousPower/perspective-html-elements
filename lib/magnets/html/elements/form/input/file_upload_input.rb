
class ::Magnets::HTML::Elements::Form::Input::FileUploadInput

  include ::Magnets::HTML::Elements::Form::Input

  attr_text :mime_type

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'file'
		
		if value
		  self_as_html_node[ 'value' ] = value
		end
    
    return self_as_html_node
  
  end
  
end