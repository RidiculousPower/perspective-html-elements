
class ::Perspective::HTML::Elements::Form::Input::TextInput::TextAreaInput < 
      ::Perspective::HTML::Elements::Form::Input::TextInput

  self.__container_tag__ = :textarea
  
	attr_alias           :content, :value
	
	attr_number					 :columns, :rows
	attr_true_false      :readonly, :disabled

  # accepts multiple string/views
  # * strings => rendered with paragraph breaks
  # * views => rendered as html
  attr_order           :content

end
