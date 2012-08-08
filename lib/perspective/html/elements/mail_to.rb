
class ::Perspective::HTML::Elements::MailTo < ::Perspective::HTML::Elements::Anchor

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super
  
  	self_as_html_node[ 'href' ]	= 'mailto:' + self_as_html_node[ 'href' ]
    
    return self_as_html_node
    
  end

end