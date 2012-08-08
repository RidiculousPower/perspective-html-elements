
class ::Perspective::HTML::Elements::Form::Input::DateInput 
 
  include ::Perspective::HTML::Elements::Form::Input

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'date'
    
    return self_as_html_node
  
  end
  
end