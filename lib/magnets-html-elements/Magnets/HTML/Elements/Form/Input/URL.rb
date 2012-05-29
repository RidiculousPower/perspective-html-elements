
class ::Magnets::HTML::Elements::Form::Input::URL
  
  include ::Magnets::HTML::Elements::Form::Input

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'url'

    
    return self_as_html_node
  
  end
  
end