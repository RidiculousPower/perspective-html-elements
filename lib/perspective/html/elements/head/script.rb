
class ::Perspective::HTML::Elements::Head::Script
	
  include ::Perspective::HTML::View  

  self.__container_tag__ = :script

	attr_required_view	:mime_type
	attr_view						:character_set, :wait_for_page_load, :address, :preserve_whitespace

	attr_order          [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super
  	
  	# FIX - MIME type
		self_as_html_node[ 'type' ] = mime_type.__value__

		# FIX - charset
		if character_set_value = character_set.__value__
			self_as_html_node[ 'charset' ] = character_set_value
		end

		# FIX - defer
		if wait_for_page_load_value = wait_for_page_load.__value__
			self_as_html_node[ 'defer' ] = wait_for_page_load_value
		end

		if address_value = address.__value__
			self_as_html_node[ 'src' ] = address_value
		end

		# FIX - preserve
		if preserve_whitespace_value = preserve_whitespace.__value__
			self_as_html_node[ 'xml:space' ] = preserve_whitespace_value
		end
    
    return self_as_html_node
    
  end

	###############
  #  configure  #
  ###############

	configure do |self_as_html_node|
		

	end

end
