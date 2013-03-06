# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::List::OrderedList::OrderedListInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :ol

	attr_views	:item, ::Perspective::HTML::Elements::List::Item

	attr_order	:item

end
