
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
	class Form
  end
	class HTML
  end
end

basepath = 'magnets-html-elements/Magnets/HTML/Elements'

files = [

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
  'List/OrderedList',
  'List/UnorderedList',

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

  'Form/Input',
  'Form/Input/ButtonInput',
  'Form/Input/CheckboxInput',
  'Form/Input/ColorInput',
  'Form/Input/DataListInput',
  'Form/Input/DateInput',
  'Form/Input/DateTimeInput',
  'Form/Input/EmailInput',
  'Form/Input/InputError',
  'Form/Input/FileUploadInput',
  'Form/Input/HiddenInput',
  'Form/Input/InputLabel',
  'Form/Input/MonthInput',
  'Form/Input/NumberInput',
  'Form/Input/PasswordInput',
  'Form/Input/RadioInput',
  'Form/Input/RangeInput',
  'Form/Input/ResetInput',
  'Form/Input/SearchInput',
  'Form/Input/SelectInput',
  'Form/Input/Select/OptionInput',
  'Form/Input/SubmitButton',
  'Form/Input/TelephoneInput',
  'Form/Input/TextInput',
  'Form/Input/Text/TextAreaInput',
  'Form/Input/TimeInput',
  'Form/Input/URLInput',
  'Form/Input/WeekInput',
  'Form/Interface',
  'Form',
  
  'HTML/Interface',
  'HTML'
  
]

files.each do |this_file|
  require_relative( File.join( basepath, this_file ) + '.rb' )
end

require_relative( basepath + '.rb' )
