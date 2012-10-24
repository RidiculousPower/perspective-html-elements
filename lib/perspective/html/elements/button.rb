
class ::Perspective::HTML::Elements::Button

  include ::Perspective::HTML::View  

  self.__container_tag__ = :button

	attr_view	:label, :name, :type, :value, :disabled
  
  attr_order :value
  
  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self_as_html_node.content	= label.value
    
    return self_as_html_node
  
  end
  
end