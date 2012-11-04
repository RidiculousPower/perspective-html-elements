
class ::Perspective::HTML::Elements::Form::Input::FileUploadInput

  include ::Perspective::HTML::Elements::Form::Input

  attr_text :mime_type

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = @__view_rendering_empty__ )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'file'
		
		if value_value = value.__value__
		  self_as_html_node[ 'value' ] = value_value
		end
    
    return self_as_html_node
  
  end
  
end