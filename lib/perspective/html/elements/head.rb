
class ::Perspective::HTML::Elements::Head

  include ::Perspective::HTML::View  

  self.__container_tag__ = :head

	attr_view	:title, ::Perspective::HTML::Elements::Head::Title do |title_instance|
	  self.title = ::Perspective.request ? ::Perspective.request.path_info : 'Untitled'
  end
	
	attr_alias  :title_text, title.content
	
	attr_view   :base
	attr_views  :meta, :link, :style, :script

	attr_order  :title, :base, :meta, :link, :style, :script
  
end
