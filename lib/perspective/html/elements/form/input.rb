# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::Input

  include ::Perspective::HTML::View  

  self.«container_tag» = :input
    
  attr_required_text   :name

	attr_text_or_number	 :value
  attr_text_or_number  :placeholder
  attr_view            :suggestions

	attr_true_false      :required,
	                     :read_only, :disabled, 
	                     :autocomplete, :autofocus, 
	                     :no_validation, 
	                     :takes_multiple
  
  attr_number          :minimum_value, :maximum_value
  # FIX
  #attr_number_or_date  :minimum_value, :maximum_value
  attr_number          :step
  
  attr_integer         :size, :maximum_length

  attr_regexp          :pattern
  
  attr_order           
  
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

  ##############
  #  require!  #
  ##############
    
  def require!
    
    return •required.«value» = true
    
  end

  ###############
  #  optional!  #
  ###############
    
  def optional!
    
    return •required.«value» = false
    
  end

  ###############
  #  required?  #
  ###############
  
  def required?
    
    return •required.«value»
    
  end
    
  ###############
  #  optional?  #
  ###############
  
  def optional?
    
    return ! required?
    
  end

  ################
  #  read_only?  #
  ################
  
  def read_only?
    
    return •read_only.«value»
    
  end

  #################
  #  read_write?  #
  #################
  
  def read_write?
    
    return ! read_only?
    
  end

  ################
  #  read_only!  #
  ################
  
  def read_only!
    
    return •read_only.«value» = true

  end

  #################
  #  read_write!  #
  #################
  
  def read_write!

    return •read_only.«value» = false

  end

  ###################
  #  autocomplete!  #
  ###################
  
  def autocomplete!
  end

  ######################
  #  no_autocomplete!  #
  ######################

  def no_autocomplete!
  end

  ###################
  #  autocomplete?  #
  ###################

  def autocomplete?
  end

  ######################
  #  no_autocomplete?  #
  ######################

  def no_autocomplete?
  end

  ################
  #  autofocus!  #
  ################

  def autofocus!
  end

  ###################
  #  no_autofocus!  #
  ###################

  def no_autofocus!
  end

  ################
  #  autofocus?  #
  ################

  def autofocus?
  end

  ###################
  #  no_autofocus?  #
  ###################

  def no_autofocus?
  end

  #################
  #  validation!  #
  #################

  def validation!
  end

  ####################
  #  no_validation!  #
  ####################

  def no_validation!
  end

  #################
  #  validation?  #
  #################

  def validation?
  end

  ####################
  #  no_validation?  #
  ####################

  def no_validation?
  end

  #####################
  #  takes_multiple!  #
  #####################

  def takes_multiple!
  end

  ################
  #  takes_one!  #
  ################

  def takes_one!
  end

  #####################
  #  takes_multiple?  #
  #####################

  def takes_multiple?
  end

  ################
  #  takes_one?  #
  ################

  def takes_one?
  end
    
  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		self.value ||= ''
		
		if name_value = name
		  self_as_html_node[ 'name' ] = name_value.to_s
		end
		
		if •suggestions.«value» or •suggestions.«view»
		  self_as_html_node[ 'list' ] = suggestions.to_html_node
	  end
    
    return self_as_html_node
  
  end
  	
end
