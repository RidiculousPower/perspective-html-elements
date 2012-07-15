
class ::Magnets::HTML::Elements::Button

  include ::Magnets::HTML::View  

  self.__container_tag__ = :button

	attr_view	:label, :name, :type, :value, :disabled
  
  attr_order :value
  
  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self_as_html_node.content	= label
    
    return self_as_html_node
  
  end
  
end