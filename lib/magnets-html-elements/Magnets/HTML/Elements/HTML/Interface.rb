
module ::Magnets::HTML::Elements::HTML::Interface

  include ::Magnets::HTML::View

  self.__container_tag__ = :html
  
  attr_view  :head, ::Magnets::HTML::Elements::Head
  attr_alias :title, head.title
  

  attr_view  :body, ::Magnets::HTML::Elements::Body
  attr_alias :content, :body

  attr_text  :xml_namespace
  
  attr_order :head, :body

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super
    
    self_as_html_node.add_child( head.to_html_node )
    self_as_html_node.add_child( body.to_html_node )

  end

end
