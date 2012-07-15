
class ::Magnets::HTML::Elements::Form::Input::RangeInput 
 
  include ::Magnets::HTML::Elements::Form::Input

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'range'
    
    return self_as_html_node
  
  end
  
end