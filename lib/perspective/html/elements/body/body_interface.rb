# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Body::BodyInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :body

	attr_required_views	 :content
	attr_text						 :xml_namespace
	
  attr_autobind :content
	attr_order		:content

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		if xml_namespace
			self_as_html_node[ 'xmlns' ] = xml_namespace
		end
    
    return self_as_html_node
  
  end

end
