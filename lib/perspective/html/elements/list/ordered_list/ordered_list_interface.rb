# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::List::OrderedList::OrderedListInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :ol

	attr_views	:items, ::Perspective::HTML::Elements::List::Item

	attr_order	:items

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		if items_value = items and
		   items_value.is_a?( ::Array )

			items_value.each do |this_item|
			  add_list_item( self_as_html_node, this_item )
			end

		else

		  add_list_item( self_as_html_node, items_value )

		end
    
    return self_as_html_node
    
  end

	###################
  #  add_list_item  #
  ###################
	
	def add_list_item( self_as_html_node, content_item )

		if content_item.is_a?( ::Perspective::HTML::Elements::List::Item )

			self_as_html_node.add_child( content_item.to_html_node )

		else

			list_item = ::Perspective::HTML::Elements::List::Item.new
			list_item.content = content_item
			self_as_html_node.add_child( list_item.to_html_node )

		end
	  
  end

end
