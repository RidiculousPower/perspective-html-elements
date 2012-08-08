
class ::Perspective::HTML::Elements::PageAnchor

  include ::Perspective::HTML::View
  
  self.__container_tag__ = :a
  
	attr_required_text   :subsection

	attr_required_views  :text
	attr_alias					 :content, :text

	attr_order           :content
  
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

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self_as_html_node[ 'href' ]	= '#' + subsection
  
    return self_as_html_node
  
  end
  
end