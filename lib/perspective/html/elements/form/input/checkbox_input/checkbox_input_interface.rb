# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::Input::CheckboxInput::CheckboxInputInterface

  include ::Perspective::HTML::Elements::Form::Input

	attr_true_false	 :checked
	
  attr_autobind :value
	attr_order    [ ]

  ############
  #  check!  #
  ############

  def check!
    
    return •checked.«value» = true
    
  end

  ##############
  #  uncheck!  #
  ##############

  def uncheck!
    
    return •checked.«value» = false
    
  end
    
  ##############
  #  checked?  #
  ##############
  
  def checked?
    
    return •checked.«value»
    
  end

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'checkbox'
		
		if checked
		  self_as_html_node[ 'checked' ] = 'checked'
		end
		
		if value_value = value
		  self_as_html_node[ 'value' ] = value_value
		end
    
    return self_as_html_node
  
  end

end
