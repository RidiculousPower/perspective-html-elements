
class ::Magnets::HTML::Elements::Head::Link
	
  include ::Magnets::HTML::View  

  self.__container_tag__ = :link

	attr_view	    :location, :media, :character_set, :language, 
								:mime_type, :target,
								:relationship_to_link, :link_relationship_to_self

	attr_order    [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super

		if location
			self_as_html_node[ 'href' ] = location
		end

		# FIX - media types: screen, tty, tv, projection, handheld, print, braille, aural, all
		if media
			self_as_html_node[ 'media' ] = media
		end

		# FIX - char_encoding
		if character_set
			self_as_html_node[ 'charset' ] = character_set
		end

		# FIX - language_code
		if language
			self_as_html_node[ 'hreflang' ] = language
		end

		# FIX - MIME type
		if mime_type
			self_as_html_node[ 'type' ] = mime_type
		end

		# FIX - Possible targets are: _blank, _parent, _self, _top, framename
		if target
			self_as_html_node[ 'target' ] = target
		end

		# FIX - alternate, appendix, bookmark, chapter, contents, copyright, glossary, help, 
		# home, index, next, prev, section, start, stylesheet, subsection
		if relationship_to_link
			self_as_html_node[ 'rel' ] = relationship_to_link
		end

		# FIX - alternate, appendix, bookmark, chapter, contents, copyright, glossary, help, 
		# home, index, next, prev, section, start, stylesheet, subsection
		if link_relationship_to_self
			self_as_html_node[ 'rev' ] = link_relationship_to_self
		end

    return self_as_html_node
  
  end

end
