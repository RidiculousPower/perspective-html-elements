# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::MailTo::MailToInterface
  
  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super
  
  	self_as_html_node[ 'href' ]	= 'mailto:' + self_as_html_node[ 'href' ]
    
    return self_as_html_node
    
  end
  
end
