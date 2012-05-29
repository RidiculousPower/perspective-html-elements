
class ::Magnets::HTML::Elements::Text::Date

  include ::Magnets::HTML::View  

  self.__container_tag__ = 'span'

	attr_required_number	:day, :month, :year, ::Magnets::HTML::Elements::Text::Span

	attr_order :day, :month, :year
    
end