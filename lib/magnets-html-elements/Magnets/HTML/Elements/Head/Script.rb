
class ::Magnets::HTML::Elements::Head::Script
	
  include ::Magnets::HTML::View  

  self.__container_tag__ = :script

	attr_required_view	:mime_type
	attr_view						:character_set, :wait_for_page_load, :address, :preserve_whitespace

	attr_order          [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super
  	
  	# FIX - MIME type
		self_as_html_node[ 'type' ] = mime_type

		# FIX - charset
		if character_set
			self_as_html_node[ 'charset' ] = character_set
		end

		# FIX - defer
		if wait_for_page_load
			self_as_html_node[ 'defer' ] = wait_for_page_load
		end

		if address
			self_as_html_node[ 'src' ] = address
		end

		# FIX - preserve
		if preserve_whitespace
			self_as_html_node[ 'xml:space' ] = preserve_whitespace
		end
    
    return self_as_html_node
    
  end

	###############
  #  configure  #
  ###############

	configure do |self_as_html_node|
		

	end

end
