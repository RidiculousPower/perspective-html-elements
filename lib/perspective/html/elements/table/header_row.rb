# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Table::HeaderRow < ::Perspective::HTML::Elements::Table::Row

  include ::Perspective::HTML::View  
  
  self.«container_tag» = :tr

	attr_views        	 :header, ::Perspective::HTML::Elements::Table::HeaderRow::HeaderData
	attr_text_property	 :alignment, :vertical_alignment , :character_alignment, :character_offset

	attr_order		       :header

end
