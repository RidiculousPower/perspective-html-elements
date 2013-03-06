# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::Input::InputError::InputErrorInterface

  include ::Perspective::HTML::View

  self.«container_tag» = :span
  
  attr_required_view		:for_input
  
  # make the binding store its value as a reference to another binding
  for_input.extend( ::Perspective::Bindings::ReferenceBinding )

  attr_text     :text
	
  attr_autobind :text
	attr_order    :text

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

	  self.text ||= ''

    self_as_html_node = super

		for_input_name = nil

		case for_input_instance = for_input
  	  when ::Perspective::HTML::Elements::Form::Input
    	  for_input_name = for_input_instance.name.to_s
  	  when ::Symbol
  	    for_input_name = for_input_instance.to_s
	    when ::Perspective::Bindings::InstanceBinding
	      for_input_name = for_input_instance.«name».to_s
  		else
    	  for_input_name = for_input_instance
	  end

	  self_as_html_node[ 'for' ] = for_input_name
    
    return self_as_html_node
  
  end

end
