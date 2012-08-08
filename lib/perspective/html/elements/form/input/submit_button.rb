
class ::Perspective::HTML::Elements::Form::Input::SubmitButton

  include ::Perspective::HTML::Elements::Form::Input

  attr_uri     :image
  
  attr_number  :height
  attr_number  :width
  
  attr_alias   :button_text, :value
  
  attr_text    :encoding
  
  attr_text    :request_method

  attr_text    :target
  
  attr_uri     :form_action

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		if image

  		self_as_html_node[ 'type' ] = 'image'
  		if button_text
  		  self_as_html_node[ 'alt' ] = button_text
		  else
  		  self_as_html_node[ 'alt' ] = 'submit'
      end
      
  		case image
  		  when File
      		self_as_html_node[ 'src' ] = image.path
  	    when String
      		self_as_html_node[ 'src' ] = image
		  end
		  
		  if height
    		self_as_html_node[ 'height' ] = height	    
	    end
	    
	    if width
    		self_as_html_node[ 'width' ] = width	    
      end

		else

  		self_as_html_node[ 'type' ] = 'submit'

  		if button_text
  		  self_as_html_node[ 'value' ] = button_text
		  else
  		  self_as_html_node[ 'value' ] = 'Submit'
      end

	  end
    
    return self_as_html_node
  
  end

end