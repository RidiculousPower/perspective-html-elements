# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Head::Script::ScriptInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :script

	attr_required_view	:mime_type
	attr_view						:character_set, :wait_for_page_load, :address, :preserve_whitespace

	attr_order          [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super
  	
  	# FIX - MIME type
		self_as_html_node[ 'type' ] = mime_type

		# FIX - charset
		if character_set_value = character_set
			self_as_html_node[ 'charset' ] = character_set_value
		end

		# FIX - defer
		if wait_for_page_load_value = wait_for_page_load
			self_as_html_node[ 'defer' ] = wait_for_page_load_value
		end

		if address_value = address
			self_as_html_node[ 'src' ] = address_value
		end

		# FIX - preserve
		if preserve_whitespace_value = preserve_whitespace
			self_as_html_node[ 'xml:space' ] = preserve_whitespace_value
		end
    
    return self_as_html_node
    
  end

end
