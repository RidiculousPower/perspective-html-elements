
class ::Perspective::HTML::Elements::Form::Input::SelectInput::OptionInput

  include ::Perspective::HTML::View

  self.__container_tag__ = :option
  
	attr_text_or_number  :text, :value
	attr_alias           :content, :text
	
	attr_true_false	 :selected?, :disabled?
	
	attr_order  :text

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

    if value_value = value.__value__
		  self_as_html_node[ 'value' ] = value_value
		end
		
		if disabled?.__value__
		  self_as_html_node[ 'disabled' ] = 'disabled'
    end
    
    if selected?.__value__
		  self_as_html_node[ 'selected' ] = 'selected'
		end
    
    return self_as_html_node
  
  end
	
end