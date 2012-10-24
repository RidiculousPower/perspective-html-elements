
class ::Perspective::HTML::Elements::Form::Input::CheckboxInput 
 
  include ::Perspective::HTML::Elements::Form::Input

	attr_true_false	 :checked
	attr_alias       :content, :value
	
	attr_order       [ ]

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'checkbox'
		
		if checked
		  self_as_html_node[ 'checked' ] = 'checked'
		end
		
		if value_value = value.__value__
		  self_as_html_node[ 'value' ] = value_value
		end
    
    return self_as_html_node
  
  end
  
end