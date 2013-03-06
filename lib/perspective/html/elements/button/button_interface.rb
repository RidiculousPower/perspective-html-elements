# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Button::ButtonInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :button

	attr_view	:label, :name, :type, :value, :disabled
  
  attr_order :value
  
  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		self_as_html_node.content	= label
    
    return self_as_html_node
  
  end

end
