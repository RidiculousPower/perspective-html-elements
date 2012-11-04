
class ::Perspective::HTML::Elements::Head::Style
	
  include ::Perspective::HTML::View  

  self.__container_tag__ = :style
	Type					=	'text/css'

	attr_view	  :media

	attr_order  [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = @__view_rendering_empty__ )

    self_as_html_node = super

		# only one possible style type - text/css
		self_as_html_node[ 'type' ] = Type

		# FIX - screen, tty, tv, projection, handheld, print, braille, aural, all
		if media_value = media.__value__
			self_as_html_node[ 'media' ] = media_value
		end
    
    return self_as_html_node
    
  end

end
