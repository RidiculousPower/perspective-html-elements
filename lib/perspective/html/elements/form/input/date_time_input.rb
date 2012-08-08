
class ::Perspective::HTML::Elements::Form::Input::DateTimeInput 
 
  include ::Perspective::HTML::Elements::Form::Input

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'datetime-local'
    
    return self_as_html_node
  
  end

end