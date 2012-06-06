
class ::Magnets::HTML::Elements::Form::Input::RadioInput

  include ::Magnets::HTML::Elements::Form::Input

	attr_true_false	 :selected?
	attr_alias       :checked?, :selected?

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'radio'
		
		if selected?
		  # Radio buttons don't get "checked"! --But HTML5 says they do...
		  self_as_html_node[ 'checked' ] = 'checked'
		end

		if value
		  self_as_html_node[ 'value' ] = value
		end
    
    return self_as_html_node
  
  end
  
end