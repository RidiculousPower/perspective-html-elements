
class ::Magnets::HTML::Elements::Form::Input::Telephone
  
  include ::Magnets::HTML::Elements::Form::Input

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'tel'
    
    return self_as_html_node
  
  end
  
end