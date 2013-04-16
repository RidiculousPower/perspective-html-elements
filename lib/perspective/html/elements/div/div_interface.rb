# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Div::DivInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :div
  
	attr_views	:content

  attr_autobind :content
	attr_order	:content

end
