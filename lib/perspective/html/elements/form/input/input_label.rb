
class ::Perspective::HTML::Elements::Form::Input::InputLabel

  include ::Perspective::HTML::View  

  self.__container_tag__ = :label

	attr_required_view  :for_input
	
	for_input.extend( ::Perspective::Bindings::ReferenceBinding )

	attr_required_view  :text
	attr_alias					:content, :text
	
	attr_order          :text

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil, view_rendering_empty = @__view_rendering_empty__ )

    self_as_html_node = super

		for_input_name = nil

		case for_input_instance = for_input.__value__
  	  when ::Perspective::HTML::Elements::Form::Input
    	  for_input_name = for_input_instance.name.to_s
  	  when ::Symbol
  	    for_input_name = for_input_instance.to_s
  		else
    	  for_input_name = for_input_instance
	  end

	  self_as_html_node[ 'for' ] = for_input_name

    return self_as_html_node
  
  end
	  
end