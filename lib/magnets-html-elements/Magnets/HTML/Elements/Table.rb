
class ::Magnets::HTML::Elements::Table

  include ::Magnets::HTML::View  

  self.__container_tag__ = :table
  
	attr_required_views	:rows
	attr_alias          :content, :rows
	attr_view						:summary, :width, :rules, :frame, :cell_spacing, :cell_padding, :border_width

	attr_order		      :rows

end