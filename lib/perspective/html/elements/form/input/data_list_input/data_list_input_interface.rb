# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::Input::DataListInput::DataListInputInterface

  include ::Perspective::HTML::Elements::Form::Input

  self.«container_tag» = :datalist

	attr_views	        :options

	attr_order	        :options

end
