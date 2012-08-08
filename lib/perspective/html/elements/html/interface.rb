
module ::Perspective::HTML::Elements::HTML::Interface

  include ::Perspective::HTML::View

  self.__container_tag__ = :html
  
  attr_view  :head, ::Perspective::HTML::Elements::Head
  attr_alias :title, head.title
  

  attr_view  :body, ::Perspective::HTML::Elements::Body
  attr_alias :content, :body

  attr_text  :xml_namespace
  
  attr_order :head, :body

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super
    
    self_as_html_node.add_child( head.to_html_node )
    self_as_html_node.add_child( body.to_html_node )

  end

end
