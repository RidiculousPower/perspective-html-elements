
class ::Magnets::HTML::Elements::Table::Row

  include ::Magnets::HTML::View  
  
  self.__container_tag__ = :tr

	attr_required_views	 :data
	attr_alias           :content, :data
	attr_views					 :headers
	attr_view						 :alignment, :vertical_alignment , :character_alignment, :character_offset

	attr_order		       :headers, :data

end