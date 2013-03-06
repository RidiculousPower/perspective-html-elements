# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Head::Base::BaseInterface

  include ::Perspective::HTML::View  

  self.«container_tag» = :base

	attr_required_view	:address
	attr_view           :target
	
	attr_order          [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		if address_value = address
			self_as_html_node[ 'href' ]	= address_value
		end
		
		# FIX - Possible targets are: _blank, _parent, _self, _top, framename
    if target_value = target
		  self_as_html_node[ 'target' ]	= target_value
		end
    
    return self_as_html_node
  
  end

end
