# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Head::Link::LinkInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :link

	attr_view	    :location, :media, :character_set, :language, 
								:mime_type, :target,
								:relationship_to_link, :link_relationship_to_self

	attr_order    [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		if location_value = location
			self_as_html_node[ 'href' ] = location_value
		end

		# FIX - media types: screen, tty, tv, projection, handheld, print, braille, aural, all
		if media_value = media
			self_as_html_node[ 'media' ] = media_value
		end

		# FIX - char_encoding
		if character_set_value = character_set
			self_as_html_node[ 'charset' ] = character_set_value
		end

		# FIX - language_code
		if language_value = language
			self_as_html_node[ 'hreflang' ] = language_value
		end

		# FIX - MIME type
		if mime_type_value = mime_type
			self_as_html_node[ 'type' ] = mime_type_value
		end

		# FIX - Possible targets are: _blank, _parent, _self, _top, framename
		if target_value = target
			self_as_html_node[ 'target' ] = target_value
		end

		# FIX - alternate, appendix, bookmark, chapter, contents, copyright, glossary, help, 
		# home, index, next, prev, section, start, stylesheet, subsection
		if relationship_to_link_value = relationship_to_link
			self_as_html_node[ 'rel' ] = relationship_to_link_value
		end

		# FIX - alternate, appendix, bookmark, chapter, contents, copyright, glossary, help, 
		# home, index, next, prev, section, start, stylesheet, subsection
		if link_relationship_to_self_value = link_relationship_to_self
			self_as_html_node[ 'rev' ] = link_relationship_to_self_value
		end

    return self_as_html_node
  
  end

end
