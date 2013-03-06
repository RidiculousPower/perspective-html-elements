# -*- encoding : utf-8 -*-

class ::Perspective::HTML::Elements::Form::Input::TextInput::TextAreaInput < 
      ::Perspective::HTML::Elements::Form::Input::TextInput

  self.«container_tag» = :textarea
  
	attr_number			:columns, :rows
	attr_true_false :readonly, :disabled
  attr_alias      :text, :value

  # accepts multiple string/views
  # * strings => rendered with paragraph breaks
  # * views => rendered as html
  attr_autobind :value
  attr_order    :value

end
