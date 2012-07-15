
begin ; require 'development' ; rescue ::LoadError ; end

require 'magnets/html/view'

# namespaces that have to be declared ahead of time for proper load order
require_relative './namespaces'

# source file requires
require_relative './requires.rb'

module ::Magnets::HTML::Elements

end
