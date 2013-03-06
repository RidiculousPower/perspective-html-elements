# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::FormInterface
  
  include ::Perspective::HTML::View
  
  self.«container_tag» = :form

	attr_uri		          :action

	attr_views		        :elements
	attr_alias						:content, :elements

	attr_text						  :name, :method, :character_set, :encoding, :permitted_upload_type

  attr_autobind :elements
  attr_order		:elements
	
	##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

    # nil action is permitted as self-reference
		self_as_html_node[ 'action' ] = action.to_s
    
    if name_value = name
		  self_as_html_node[ 'name' ] = name_value
		end
		
		if method_value = method
		  self_as_html_node[ 'method' ] = method_value
    end
    
    if character_set_value = character_set
		  self_as_html_node[ 'accept-charset' ] = character_set_value
    end
    
    if encoding_value = encoding
		  self_as_html_node[ 'enctype' ] = encoding_value
    end
    
    if permitted_upload_type_value = permitted_upload_type
		  self_as_html_node[ 'accept' ] = permitted_upload_type_value
    end
    
    return self_as_html_node
  
  end

end
