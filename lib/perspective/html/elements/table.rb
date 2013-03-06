# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Table

  include ::Perspective::HTML::View  

  self.«container_tag» = :table
  
  attr_view             :headers, ::Perspective::HTML::Elements::Table::HeaderRow
	attr_views	          :rows, ::Perspective::HTML::Elements::Table::Row
	attr_text_property	  :summary, :rules, :frame
	attr_number_property  :width, :cell_spacing, :cell_padding, :border_width

  attr_autobind       :rows
	attr_order		      :headers, :rows

end
