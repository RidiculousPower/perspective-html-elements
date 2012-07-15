
basepath = 'elements'

files = [

  'head/base',
  'head/link',
  'head/meta',
  'head/script',
  'head/style',
  'head/title',
  'head',
  
  'body',
  'anchor',
  'page_anchor',
  'button',
  'comment',
  'div',

  'hr',
  'image',

  'mail_to',

  'list/item',
  'list/ordered_list',
  'list/unordered_list',

  'table/row/header',
  'table/row/data',
  'table/row',
  'table',

  'text/h1',
  'text/h2',
  'text/h3',
  'text/h4',
  'text/h5',
  'text/h6',
  'text/paragraph',
  'text/span',
  'text/date',

  'form/input',
  'form/input/button_input',
  'form/input/checkbox_input',
  'form/input/color_input',
  'form/input/data_list_input',
  'form/input/date_input',
  'form/input/date_time_input',
  'form/input/email_input',
  'form/input/input_error',
  'form/input/file_upload_input',
  'form/input/hidden_input',
  'form/input/input_label',
  'form/input/month_input',
  'form/input/number_input',
  'form/input/password_input',
  'form/input/radio_input',
  'form/input/range_input',
  'form/input/reset_input',
  'form/input/search_input',
  'form/input/select_input',
  'form/input/select/option_input',
  'form/input/submit_button',
  'form/input/telephone_input',
  'form/input/text_input',
  'form/input/text/text_area_input',
  'form/input/time_input',
  'form/input/url_input',
  'form/input/week_input',
  'form/interface',
  'form',
  
  'html/interface',
  'html'
  
]

files.each do |this_file|
  require_relative( File.join( basepath, this_file ) + '.rb' )
end
