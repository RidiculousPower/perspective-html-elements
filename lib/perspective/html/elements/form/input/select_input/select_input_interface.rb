# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::Input::SelectInput::SelectInputInterface
  
  include ::Perspective::HTML::Elements::Form::Input

  self.«container_tag» = :select

	attr_views	        :options

	attr_order	        :options
  
end
