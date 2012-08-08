
class ::Perspective::HTML::Elements::Text::Date

  include ::Perspective::HTML::View  

  self.__container_tag__ = :span

	attr_required_number	:day, :month, :year, ::Perspective::HTML::Elements::Text::Span

	attr_order :day, :month, :year
    
end