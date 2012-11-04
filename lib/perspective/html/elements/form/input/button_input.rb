
class ::Perspective::HTML::Elements::Form::Input::ButtonInput

  include ::Perspective::HTML::Elements::Form::Input

	attr_alias       :content, :value

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = @__view_rendering_empty__ )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'button'
    
    return self_as_html_node
  
  end

end