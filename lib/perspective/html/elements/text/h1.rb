# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Text::H1

  include ::Perspective::HTML::View  

  self.«container_tag» = 'h1'

	attr_views	:content

  attr_autobind :content
	attr_order	:content
  
end
