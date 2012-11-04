
class ::Perspective::HTML::Elements::Head::Base

  include ::Perspective::HTML::View  

  self.__container_tag__ = :base

	attr_required_view	:address
	attr_view           :target
	
	attr_order          [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = @__view_rendering_empty__ )

    self_as_html_node = super

		if address_value = address.__value__
			self_as_html_node[ 'href' ]	= address_value
		end
		
		# FIX - Possible targets are: _blank, _parent, _self, _top, framename
    if target_value = target.__value__
		  self_as_html_node[ 'target' ]	= target_value
		end
    
    return self_as_html_node
  
  end

	###############
  #  configure  #
  ###############

	configure do |self_as_html_node|
		
		
	end
  
end