
class ::Perspective::HTML::Elements::Image

  include ::Perspective::HTML::View  

  self.__container_tag__ = :img

	attr_required_text	:source
	attr_text					  :alternate_text, :height, :width, :long_description_address,
											:server_side_image_map, :client_side_image_map

  attr_order          :source

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self_as_html_node[ 'src' ] = source.__value__
		
		self_as_html_node[ 'alt' ] = alternate_text.__value__ || __name__.to_s
      
		if height_value = height.__value__
			self_as_html_node[ 'height' ] = height_value
		end
		
		if width_value = width.__value__
			self_as_html_node[ 'width' ] = width_value
		end

		if long_description_address_value = long_description_address.__value__
			self_as_html_node[ 'longdesc' ] = long_description_address_value
		end

		if server_side_image_map_value = server_side_image_map.__value__
			self_as_html_node[ 'ismap' ] = server_side_image_map_value
		end

		if client_side_image_map_value = client_side_image_map.__value__
			self_as_html_node[ 'usemap' ] = client_side_image_map_value
		end

    return self_as_html_node
    
  end

	###############
  #  configure  #
  ###############

	configure do |self_as_html_node|


	end
  
end