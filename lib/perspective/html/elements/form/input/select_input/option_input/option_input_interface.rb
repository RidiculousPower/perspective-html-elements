# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::Input::SelectInput::OptionInput::OptionInputInterface

  include ::Perspective::HTML::View

  self.«container_tag» = :option
  
	attr_text_or_number  :text, :value
	
	attr_true_false	 :selected, :disabled
	
  attr_autobind :text
	attr_order    :text

  #############
  #  enable!  #
  #############
    
  def enable!
    
    return •disabled.«value» = false
    
  end

  ##############
  #  disable!  #
  ##############
    
  def disable!
    
    return •disabled.«value» = true
    
  end

  ##############
  #  enabled?  #
  ##############
  
  def enabled?
    
    return ! disabled?
    
  end
    
  ###############
  #  disabled?  #
  ###############
  
  def disabled?
    
    return •disabled.«value»
    
  end

  #############
  #  select!  #
  #############

  def select!
    
    return •selected.«value» = true
    
  end

  ###############
  #  deselect!  #
  ###############

  def deselect!
    
    return •selected.«value» = false
    
  end
    
  ###############
  #  selected?  #
  ###############
  
  def selected?
    
    return •selected.«value»
    
  end

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

    if value_value = value
		  self_as_html_node[ 'value' ] = value_value
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
