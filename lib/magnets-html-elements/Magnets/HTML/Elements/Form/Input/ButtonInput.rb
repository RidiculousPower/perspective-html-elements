
class ::Magnets::HTML::Elements::Form::Input::ButtonInput

  include ::Magnets::HTML::Elements::Form::Input

	attr_alias       :content, :value

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'button'
    
    return self_as_html_node
  
  end

end