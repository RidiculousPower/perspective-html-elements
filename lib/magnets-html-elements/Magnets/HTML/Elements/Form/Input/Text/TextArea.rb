
class ::Magnets::HTML::Elements::Form::Input::Text::TextArea < ::Magnets::HTML::Elements::Form::Input::Text

  self.__container_tag__ = 'textarea'
  
	attr_alias           :content, :value
	
	attr_number					 :columns, :rows
	attr_true_false      :readonly, :disabled

  # accepts multiple string/views
  # * strings => rendered with paragraph breaks
  # * views => rendered as html
  attr_order           :content

end
