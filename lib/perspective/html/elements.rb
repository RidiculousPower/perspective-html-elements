
begin ; require 'development' ; rescue ::LoadError ; end

require 'perspective/html/view'

# namespaces that have to be declared ahead of time for proper load order
require_relative './namespaces'

# source file requires
require_relative './requires.rb'

module ::Perspective::HTML::Elements

end
