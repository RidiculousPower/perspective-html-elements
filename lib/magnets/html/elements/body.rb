
class ::Magnets::HTML::Elements::Body

  include ::Magnets::HTML::View  

  self.__container_tag__ = :body

	attr_required_views	 :content
	attr_text						 :xml_namespace
	
	attr_order		       :content

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		if xml_namespace
			self_as_html_node[ 'xmlns' ] = xml_namespace
		end
    
    return self_as_html_node
  
  end

end