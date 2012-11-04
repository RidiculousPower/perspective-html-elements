
module ::Perspective::HTML::Elements::Form::FormInterface
  
  include ::Perspective::HTML::View
  
  self.__container_tag__ = :form

	attr_uri		          :action

	attr_views		        :elements
	attr_alias						:content, :elements

	attr_text						  :name, :method, :character_set, :encoding, :permitted_upload_type

  attr_order						:elements
	
	##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = @__view_rendering_empty__ )

    self_as_html_node = super

    # nil action is permitted as self-reference
		self_as_html_node[ 'action' ] = action.__value__.to_s
    
    if name_value = name.__value__
		  self_as_html_node[ 'name' ] = name_value
		end
		
		if method_value = method.__value__
		  self_as_html_node[ 'method' ] = method_value
    end
    
    if character_set_value = character_set.__value__
		  self_as_html_node[ 'accept-charset' ] = character_set_value
    end
    
    if encoding_value = encoding.__value__
		  self_as_html_node[ 'enctype' ] = encoding_value
    end
    
    if permitted_upload_type_value = permitted_upload_type.__value__
		  self_as_html_node[ 'accept' ] = permitted_upload_type_value
    end
    
    return self_as_html_node
  
  end

end
