# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Head::Meta::MetaInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :meta

	attr_required_view	:page_content
	attr_text     			:name, :page_content_format, :header_for_page_content

	attr_order          [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		# FIX - author, description, keywords, generator, revised, others
		if name_value = name
			self_as_html_node[ 'name' ] = name_value
		end

		# FIX - media types: screen, tty, tv, projection, handheld, print, braille, aural, all
		if page_content_value = page_content
			self_as_html_node[ 'content' ] = page_content_value
		end

		# FIX - format/URI
		if page_content_format_value = page_content_format
			self_as_html_node[ 'scheme' ] = page_content_format_value
		end

		# FIX - content-type, content-style-type, expires, set-cookie, others
		if header_for_page_content_value = header_for_page_content
			self_as_html_node[ 'http-equiv' ] = header_for_page_content_value
		end

    return self_as_html_node
    
  end

end
