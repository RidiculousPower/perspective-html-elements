
class ::Perspective::HTML::Elements::Form::Input::TextInput

  include ::Perspective::HTML::Elements::Form::Input

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		if value
		  self_as_html_node[ 'value' ] = value
		end
    
    return self_as_html_node
  
  end

end