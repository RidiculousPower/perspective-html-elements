# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Text::Paragraph

  include ::Perspective::HTML::View  

  self.«container_tag» = :p
  
	attr_views	:content

  attr_autobind :content
	attr_order	:content
	
end
