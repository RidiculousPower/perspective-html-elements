# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::PageAnchor::PageAnchorInterface

  include ::Perspective::HTML::View
  
  self.«container_tag» = :a
  
	attr_required_text   :subsection

	attr_required_views  :text

  attr_autobind        :text
	attr_order           :text
  
	################
  #  initialize  #
  ################

  def initialize( text = nil, subsection = nil )
    
    super()
    
    if text
      self.text = text
    end
    
    if subsection
      self.subsection = subsection
    end
    
  end

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		self_as_html_node[ 'href' ]	= '#' + subsection
  
    return self_as_html_node
  
  end

end
