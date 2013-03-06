# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Table::Row::Data

  include ::Perspective::HTML::View  

  self.«container_tag» = :td
  
	attr_views	         :content
	attr_text_property	 :alignment, :vertical_alignment, :character_alignment, :character_offset,
											 :abbreviated_content, :axis, :headers, :column_span, :row_span, :scope

  attr_autobind        :content
  attr_order           :content

end
