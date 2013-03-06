# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Head::Style::StyleInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :style
	Type					=	'text/css'

	attr_view	  :media

	attr_order  [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		# only one possible style type - text/css
		self_as_html_node[ 'type' ] = Type

		# FIX - screen, tty, tv, projection, handheld, print, braille, aural, all
		if media_value = media
			self_as_html_node[ 'media' ] = media_value
		end
    
    return self_as_html_node
    
  end

end
