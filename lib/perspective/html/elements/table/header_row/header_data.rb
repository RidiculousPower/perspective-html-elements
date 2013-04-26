# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Table::HeaderRow::HeaderData

  include ::Perspective::HTML::View  

  self.«container_tag» = :th
  
	attr_views	         :content
	attr_text_property	 :alignment, :vertical_alignment, :character_alignment, :character_offset

  attr_autobind        :content
  attr_order           :content

end
