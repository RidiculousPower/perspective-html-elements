
require_relative '../../view/lib/magnets-html-view.rb'

module ::Magnets::HTML::Elements
	class List
  end
	class Table
	  class Row
    end
  end
	class Head
	end
	module Text
	end
end

basepath = 'magnets-html-elements/Magnets/HTML/Elements'

files = [

  'Attributes',

  'Head/Base',
  'Head/Link',
  'Head/Meta',
  'Head/Script',
  'Head/Style',
  'Head/Title',
  'Head',
  
  'Body',
  'Anchor',
  'PageAnchor',
  'Button',
  'Comment',
  'Div',

  'HR',
  'Image',

  'MailTo',

  'List/Item',
  'List/Ordered',
  'List/Unordered',

  'Table/Row/Header',
  'Table/Row/Data',
  'Table/Row',
  'Table',

  'Text/H1',
  'Text/H2',
  'Text/H3',
  'Text/H4',
  'Text/H5',
  'Text/H6',
  'Text/Paragraph',
  'Text/Span',
  'Text/Date',

  'Form',
  'Form/Input',
  'Form/Input/Button',
  'Form/Input/Checkbox',
  'Form/Input/Color',
  'Form/Input/DataList',
  'Form/Input/Date',
  'Form/Input/DateTime',
  'Form/Input/Email',
  'Form/Input/Error',
  'Form/Input/FileUpload',
  'Form/Input/Hidden',
  'Form/Input/Label',
  'Form/Input/Month',
  'Form/Input/Number',
  'Form/Input/Password',
  'Form/Input/Radio',
  'Form/Input/Range',
  'Form/Input/Reset',
  'Form/Input/Search',
  'Form/Input/Select',
  'Form/Input/Select/Option',
  'Form/Input/Submit',
  'Form/Input/Telephone',
  'Form/Input/Text',
  'Form/Input/Text/TextArea',
  'Form/Input/Time',
  'Form/Input/URL',
  'Form/Input/Week'
  
]

files.each do |this_file|
  require_relative( File.join( basepath, this_file ) + '.rb' )
end

require_relative( basepath + '.rb' )
