# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Table::Row

  include ::Perspective::HTML::View  
  
  self.«container_tag» = :tr

	attr_views        	 :data, ::Perspective::HTML::Elements::Table::Row::Data
	attr_text_property	 :alignment, :vertical_alignment , :character_alignment, :character_offset

	attr_order		       :data

end
