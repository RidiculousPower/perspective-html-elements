
class ::Magnets::HTML::Elements::Table::Row::Data

  include ::Magnets::HTML::View  

  self.__container_tag__ = :td
  
	attr_required_views	 :content
	attr_view						 :alignment, :vertical_alignment, :character_alignment, :character_offset,
											 :abbreviated_content, :axis, :headers, :column_span, :row_span, :scope

  attr_order           :content

end