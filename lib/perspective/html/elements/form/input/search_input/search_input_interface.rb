# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Form::Input::SearchInput::SearchInputInterface

  include ::Perspective::HTML::Elements::Form::Input

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document = «initialize_document», view_rendering_empty = @«view_rendering_empty» )

    self_as_html_node = super

		self_as_html_node[ 'type' ] = 'search'
    
    return self_as_html_node
  
  end

end
