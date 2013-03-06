# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Head::Title::TitleInterface

  include ::Perspective::HTML::View

  self.«container_tag» = :title

	attr_required_text_property	:content
  
  attr_autobind :content

  attr_order [ ]
  
  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super
    
    self_as_html_node.content = content
    
    return self_as_html_node
    
  end
  
end
