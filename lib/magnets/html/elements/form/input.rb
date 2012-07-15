
module ::Magnets::HTML::Elements::Form::Input

  include ::Magnets::HTML::View  

  self.__container_tag__ = :input
    
  attr_required_text   :name

	attr_text_or_number	 :value
  attr_text_or_number  :placeholder
  attr_view            :suggestions

	attr_true_false      :required?,
	                     :read_only?, :disabled?, 
	                     :autocomplete?, :autofocus?, 
	                     :no_validation?, 
	                     :takes_multiple?
  
  attr_number          :minimum_value, :maximum_value
  # FIX
  #attr_number_or_date  :minimum_value, :maximum_value
  attr_number          :step
  
  attr_integer         :size, :maximum_length


  
  attr_regexp          :pattern
  
  attr_order           
  
  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		self.value ||= ''
		
		if name
		  self_as_html_node[ 'name' ] = name.to_s
		end
		
		if suggestions
		  self_as_html_node[ 'list' ] = suggestions.to_html_node
	  end
    
    return self_as_html_node
  
  end
  	
end
