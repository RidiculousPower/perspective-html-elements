
class ::Magnets::HTML::Elements::Form::Input::InputLabel

  include ::Magnets::HTML::View  

  self.__container_tag__ = :label
	
	attr_required_view  :text, :for_input
	attr_alias					:content, :text
	
	attr_order          :text

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = false )

    self_as_html_node = super

		for_input_name = nil
		case for_input
  	  when ::Magnets::HTML::Elements::Form::Input
    	  for_input_name = for_input.name
  		else
    	  for_input_name = for_input
	  end
	  css_id = for_input_name.dup
	  css_id << '_label'
	  self_as_html_node[ 'for' ] = for_input_name

	  self.__css_class__ ||= :label
	  self.__css_id__ ||= css_id
  
    return self_as_html_node
  
  end
	  
end