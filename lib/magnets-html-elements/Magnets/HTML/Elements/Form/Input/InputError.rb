
class ::Magnets::HTML::Elements::Form::Input::InputError 
 
  include ::Magnets::HTML::View

  self.__css_class__ = :error
  
  ###############
  #  Constants  #
  ###############

  # Default tag or container tag
  self.__container_tag__ = :span
  
  attr_required_view		:for_input
  attr_text         		:text
	attr_alias						:content, :text
	
	attr_order            :text

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

	  self.text ||= ''

    self_as_html_node = super

		for_input_name = nil
		case for_input
  	  when ::Magnets::HTML::Elements::Form::Input
    	  for_input_name = for_input.name
  		else
    	  for_input_name = for_input
	  end
	  css_id = for_input_name.dup
	  css_id << '_error'
	  self_as_html_node[ 'for' ] = for_input_name
    
    return self_as_html_node
  
  end
	
end