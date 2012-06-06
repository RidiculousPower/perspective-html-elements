
class ::Magnets::HTML::Elements::Form::Input::SelectInput::OptionInput

  include ::Magnets::HTML::View

  self.__container_tag__ = 'option'
  
	attr_text_or_number  :text, :value
	attr_alias           :content, :text
	
	attr_true_false	 :selected?, :disabled?
	
	attr_order  :text

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super

    if value
		  self_as_html_node[ 'value' ] = value
		end
		
		if disabled?
		  self_as_html_node[ 'disabled' ] = 'disabled'
    end
    
    if selected?
		  self_as_html_node[ 'selected' ] = 'selected'
		end
    
    return self_as_html_node
  
  end
	
end