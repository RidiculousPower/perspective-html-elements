
module ::Perspective::HTML::Elements::Form::Input

  include ::Perspective::HTML::View  

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

  def to_html_node( document_frame = nil, view_rendering_empty = @__view_rendering_empty__ )

    self_as_html_node = super

		self.value ||= ''
		
		if name_value = name.__value__
		  self_as_html_node[ 'name' ] = name_value.to_s
		end
		
		if suggestions.__view__
		  self_as_html_node[ 'list' ] = suggestions.to_html_node
	  end
    
    return self_as_html_node
  
  end
  	
end
