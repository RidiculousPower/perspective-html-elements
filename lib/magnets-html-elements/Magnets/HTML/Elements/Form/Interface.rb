
module ::Magnets::HTML::Elements::Form::Interface
  
  include ::Magnets::HTML::View
  
  self.__container_tag__ = :form

	attr_required_view		:action

	attr_required_views		:elements
	attr_alias						:content, :elements

	attr_text						  :name, :method, :character_set, :encoding, :permitted_upload_type

  attr_order						:elements
	
	##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super

		self_as_html_node[ 'action' ] = action
    
    if name
		  self_as_html_node[ 'name' ] = name
		end
		
		if method
		  self_as_html_node[ 'method' ] = method
    end
    
    if character_set
		  self_as_html_node[ 'accept-charset' ] = character_set
    end
    
    if character_set
		  self_as_html_node[ 'enctype' ] = encoding
    end
    
    if permitted_upload_type
		  self_as_html_node[ 'accept' ] = permitted_upload_type
    end

    
    return self_as_html_node
  
  end

end
