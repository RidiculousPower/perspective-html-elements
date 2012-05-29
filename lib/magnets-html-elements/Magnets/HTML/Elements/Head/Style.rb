
class ::Magnets::HTML::Elements::Head::Style
	
  include ::Magnets::HTML::View  

  self.__container_tag__ = 'style'
	Type					=	'text/css'

	attr_view	  :media

	attr_order  [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super

		# only one possible style type - text/css
		self_as_html_node[ 'type' ] = Type

		# FIX - screen, tty, tv, projection, handheld, print, braille, aural, all
		if media
			self_as_html_node[ 'media' ] = media
		end
    
    return self_as_html_node
    
  end

end
