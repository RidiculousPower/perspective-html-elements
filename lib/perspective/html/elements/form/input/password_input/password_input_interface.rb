# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::Input::PasswordInput::PasswordInputInterface

  include ::Perspective::HTML::Elements::Form::Input

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'password'

    if value_value = value
		  self_as_html_node[ 'value' ] = value_value
		end
    
    return self_as_html_node
  
  end

end
