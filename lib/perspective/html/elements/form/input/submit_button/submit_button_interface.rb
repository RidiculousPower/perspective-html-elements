# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::Input::SubmitButton::SubmitButtonInterface

  include ::Perspective::HTML::Elements::Form::Input

  #attr_uri     :image
  
  attr_number  :height, :width
  
  attr_alias   :button_text, :value
  attr_text    :encoding, :request_method, :target
  
  attr_order   [ ]
  
  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		#if image_value = image

  		#self_as_html_node[ 'type' ] = 'image'
  		#
  		#if button_text
  		#  self_as_html_node[ 'alt' ] = button_text
		  #else
  		#  self_as_html_node[ 'alt' ] = 'submit'
      #end
      #
  		#case image_value
  		#  when ::File
      #		self_as_html_node[ 'src' ] = image_value.path
  	  #  when ::String
      #		self_as_html_node[ 'src' ] = image_value
		  #end
		  #
		  #if height_value = height
    	#	self_as_html_node[ 'height' ] = height_value	    
	    #end
	    #
	    #if width_value = width
    	#	self_as_html_node[ 'width' ] = width_value	    
      #end

		#else

  		self_as_html_node[ 'type' ] = 'submit'

  		if button_text_value = button_text
  		  self_as_html_node[ 'value' ] = button_text_value
		  else
  		  self_as_html_node[ 'value' ] = 'Submit'
      end

	  #end
    
    return self_as_html_node
  
  end

end
