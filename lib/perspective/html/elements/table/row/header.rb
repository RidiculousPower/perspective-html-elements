
class ::Perspective::HTML::Elements::Table::Row::Header

  include ::Perspective::HTML::View  

  self.__container_tag__ = :th
  
	attr_required_views	 :content
	attr_view						 :alignment, :vertical_alignment, :character_alignment, :character_offset

  attr_order           :content

end
