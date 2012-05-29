
class ::Magnets::HTML::Elements::Head::Meta
	
  include ::Magnets::HTML::View  

  self.__container_tag__ = 'meta'

	attr_required_view	:page_content
	attr_text     			:name, :page_content_format, :header_for_page_content

	attr_order          [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super

		# FIX - author, description, keywords, generator, revised, others
		if name
			self_as_html_node[ 'name' ] = name
		end

		# FIX - media types: screen, tty, tv, projection, handheld, print, braille, aural, all
		if page_content
			self_as_html_node[ 'content' ] = page_content
		end

		# FIX - format/URI
		if page_content_format
			self_as_html_node[ 'scheme' ] = page_content_format
		end

		# FIX - content-type, content-style-type, expires, set-cookie, others
		if header_for_page_content
			self_as_html_node[ 'http-equiv' ] = header_for_page_content
		end

    return self_as_html_node
    
  end

end
