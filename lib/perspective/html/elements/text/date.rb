# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Text::Date

  include ::Perspective::HTML::View  

  self.«container_tag» = :span

	attr_required_number	:day, :month, :year, ::Perspective::HTML::Elements::Text::Span

	attr_order :day, :month, :year
    
end
