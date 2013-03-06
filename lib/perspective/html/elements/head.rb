# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Head

  include ::Perspective::HTML::View  

  self.«container_tag» = :head

	attr_text	:title, ::Perspective::HTML::Elements::Head::Title do |title_instance|
    self.title = ::Perspective.request ? ::Perspective.request.path_info : 'Untitled' unless title
  end
		
	attr_view   :base
	attr_views  :meta, :link, :style, :script
  
  attr_autobind :content
	attr_order    :title, :base, :meta, :link, :style, :script
  
end
