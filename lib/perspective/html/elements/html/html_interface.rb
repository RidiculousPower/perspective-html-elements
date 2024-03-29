# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::HTML::HTMLInterface

  include ::Perspective::HTML::View

  self.«container_tag» = :html
  
  attr_view  :head, ::Perspective::HTML::Elements::Head
  attr_alias :title, head.title
  

  attr_view  :body, ::Perspective::HTML::Elements::Body

  attr_text  :xml_namespace
  
  attr_autobind :body
  attr_order :head, :body

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super
    
    self_as_html_node.add_child( head.to_html_node )
    self_as_html_node.add_child( body.to_html_node )

  end

end
