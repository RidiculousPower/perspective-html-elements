
class ::Perspective::HTML::Elements::Head::Base

  include ::Perspective::HTML::View  

  self.__container_tag__ = :base

	attr_required_view	:address
	attr_view           :target
	
	attr_order          [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		if address
			self_as_html_node[ 'href' ]	= address
		end
		
		# FIX - Possible targets are: _blank, _parent, _self, _top, framename
    if target
		  self_as_html_node[ 'target' ]	= target
		end
    
    return self_as_html_node
  
  end

	###############
  #  configure  #
  ###############

	configure do |self_as_html_node|
		
		
	end
  
end