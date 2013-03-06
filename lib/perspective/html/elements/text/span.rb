# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Text::Span
  
  include ::Perspective::HTML::View  
  
  self.«container_tag» = :span

	attr_views	:content

  attr_autobind :content
	attr_order	:content

end
