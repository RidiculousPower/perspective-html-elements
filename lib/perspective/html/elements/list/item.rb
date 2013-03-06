# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::List::Item

  include ::Perspective::HTML::View  
  
  self.«container_tag» = :li

	attr_views	:content

  attr_autobind :content
	attr_order	:content
	
end
