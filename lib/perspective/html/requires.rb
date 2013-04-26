# -*- encoding : utf-8 -*-

[

  'elements/head/base/base_interface',
  'elements/head/base',
  'elements/head/link/link_interface',
  'elements/head/link',
  'elements/head/meta/meta_interface',
  'elements/head/meta',
  'elements/head/script/script_interface',
  'elements/head/script',
  'elements/head/style/style_interface',
  'elements/head/style',
  'elements/head/title/title_interface',
  'elements/head/title',
  'elements/head',
  
  'elements/body/body_interface',
  'elements/body',
  'elements/anchor/anchor_interface',
  'elements/anchor',
  'elements/page_anchor/page_anchor_interface',
  'elements/page_anchor',
  'elements/button/button_interface',
  'elements/button',
  'elements/comment/comment_interface',
  'elements/comment',
  'elements/div/div_interface',
  'elements/div',

  'elements/hr',
  'elements/image/image_interface',
  'elements/image',

  'elements/mail_to/mail_to_interface',
  'elements/mail_to',

  'elements/list/item',
  'elements/list/ordered_list/ordered_list_interface',
  'elements/list/ordered_list',
  'elements/list/unordered_list',

  'elements/table/header_row/header_data',
  'elements/table/header_row',
  'elements/table/row/data',
  'elements/table/row',
  'elements/table',

  'elements/text/header1',
  'elements/text/header2',
  'elements/text/header3',
  'elements/text/header4',
  'elements/text/header5',
  'elements/text/header6',
  'elements/text/paragraph',
  'elements/text/span',
  'elements/text/date',

  'elements/form/input',
  'elements/form/input/button_input/button_input_interface',
  'elements/form/input/button_input',
  'elements/form/input/checkbox_input/checkbox_input_interface',
  'elements/form/input/checkbox_input',
  'elements/form/input/color_input/color_input_interface',
  'elements/form/input/color_input',
  'elements/form/input/datalist_input/datalist_input_interface',
  'elements/form/input/datalist_input',
  'elements/form/input/date_input/date_input_interface',
  'elements/form/input/date_input',
  'elements/form/input/datetime_input/datetime_input_interface',
  'elements/form/input/datetime_input',
  'elements/form/input/email_input/email_input_interface',
  'elements/form/input/email_input',
  'elements/form/input/input_error/input_error_interface',
  'elements/form/input/input_error',
  'elements/form/input/file_input/file_input_interface',
  'elements/form/input/file_input',
  'elements/form/input/hidden_input/hidden_input_interface',
  'elements/form/input/hidden_input',
  'elements/form/input/input_label/input_label_interface',
  'elements/form/input/input_label',
  'elements/form/input/month_input/month_input_interface',
  'elements/form/input/month_input',
  'elements/form/input/number_input/number_input_interface',
  'elements/form/input/number_input',
  'elements/form/input/password_input/password_input_interface',
  'elements/form/input/password_input',
  'elements/form/input/radio_input/radio_input_interface',
  'elements/form/input/radio_input',
  'elements/form/input/range_input/range_input_interface',
  'elements/form/input/range_input',
  'elements/form/input/reset_button/reset_button_interface',
  'elements/form/input/reset_button',
  'elements/form/input/search_input/search_input_interface',
  'elements/form/input/search_input',
  'elements/form/input/select_input/select_input_interface',
  'elements/form/input/select_input',
  'elements/form/input/select_input/option_input/option_input_interface',
  'elements/form/input/select_input/option_input',
  'elements/form/input/submit_button/submit_button_interface',
  'elements/form/input/submit_button',
  'elements/form/input/telephone_input/telephone_input_interface',
  'elements/form/input/telephone_input',
  'elements/form/input/text_input/text_input_interface',
  'elements/form/input/text_input',
  'elements/form/input/text_input/textarea_input',
  'elements/form/input/time_input/time_input_interface',
  'elements/form/input/time_input',
  'elements/form/input/url_input/url_input_interface',
  'elements/form/input/url_input',
  'elements/form/input/week_input/week_input_interface',
  'elements/form/input/week_input',
  'elements/form/form_interface',
  'elements/form',
  
  'elements/html/html_interface',
  'elements/html',
  
  '../binding_types/html_elements_html',
  '../binding_types/html_elements_html_bindings',
  '../binding_types/html_elements_html_bindings/class_binding',
  '../binding_types/html_elements_html_bindings/instance_binding',
  '../binding_types/html_elements_html_bindings/head/class_binding',
  '../binding_types/html_elements_html_bindings/body/class_binding',

  '../binding_types/html_elements_head',
  '../binding_types/html_elements_head_bindings',
  '../binding_types/html_elements_head_bindings/class_binding',
  '../binding_types/html_elements_head_bindings/instance_binding',
  '../binding_types/html_elements_head_bindings/base/class_binding',
  '../binding_types/html_elements_head_bindings/link/class_binding',
  '../binding_types/html_elements_head_bindings/meta/class_binding',
  '../binding_types/html_elements_head_bindings/script/class_binding',
  '../binding_types/html_elements_head_bindings/style/class_binding',
  '../binding_types/html_elements_head_bindings/title/class_binding',

  '../binding_types/html_elements_body',
  '../binding_types/html_elements_body_bindings',
  '../binding_types/html_elements_body_bindings/class_binding',
  '../binding_types/html_elements_body_bindings/instance_binding',
  '../binding_types/html_elements_body_bindings/class_binding',
  '../binding_types/html_elements_body_bindings/anchor/class_binding',
  '../binding_types/html_elements_body_bindings/button/class_binding',
  '../binding_types/html_elements_body_bindings/comment/class_binding',
  '../binding_types/html_elements_body_bindings/date/class_binding',
  '../binding_types/html_elements_body_bindings/div/class_binding',
  '../binding_types/html_elements_body_bindings/form/class_binding',
  '../binding_types/html_elements_body_bindings/header1/class_binding',
  '../binding_types/html_elements_body_bindings/header2/class_binding',
  '../binding_types/html_elements_body_bindings/header3/class_binding',
  '../binding_types/html_elements_body_bindings/header4/class_binding',
  '../binding_types/html_elements_body_bindings/header5/class_binding',
  '../binding_types/html_elements_body_bindings/header6/class_binding',
  '../binding_types/html_elements_body_bindings/image/class_binding',
  '../binding_types/html_elements_body_bindings/mail_to/class_binding',
  '../binding_types/html_elements_body_bindings/page_anchor/class_binding',
  '../binding_types/html_elements_body_bindings/paragraph/class_binding',
  '../binding_types/html_elements_body_bindings/span/class_binding',
  '../binding_types/html_elements_body_bindings/table/class_binding',
  '../binding_types/html_elements_body_bindings/ordered_list/class_binding',
  '../binding_types/html_elements_body_bindings/unordered_list/class_binding',

  '../binding_types/html_elements_list',
  '../binding_types/html_elements_list_bindings',
  '../binding_types/html_elements_list_bindings/class_binding',
  '../binding_types/html_elements_list_bindings/instance_binding',
  '../binding_types/html_elements_list_bindings/item/class_binding',

  '../binding_types/html_elements_table',
  '../binding_types/html_elements_table_bindings',
  '../binding_types/html_elements_table_bindings/class_binding',
  '../binding_types/html_elements_table_bindings/instance_binding',
  '../binding_types/html_elements_table_bindings/header_row/class_binding',
  '../binding_types/html_elements_table_bindings/row/class_binding',

  '../binding_types/html_elements_table_header_row',
  '../binding_types/html_elements_table_header_row_bindings',
  '../binding_types/html_elements_table_header_row_bindings/class_binding',
  '../binding_types/html_elements_table_header_row_bindings/instance_binding',
  '../binding_types/html_elements_table_header_row_bindings/header_data/class_binding',

  '../binding_types/html_elements_table_row',
  '../binding_types/html_elements_table_row_bindings',
  '../binding_types/html_elements_table_row_bindings/class_binding',
  '../binding_types/html_elements_table_row_bindings/instance_binding',
  '../binding_types/html_elements_table_row_bindings/data/class_binding',

  '../binding_types/html_elements_input',
  '../binding_types/html_elements_input_bindings',
  '../binding_types/html_elements_input_bindings/class_binding',
  '../binding_types/html_elements_input_bindings/instance_binding',
  '../binding_types/html_elements_input_bindings/input_error/class_binding',
  '../binding_types/html_elements_input_bindings/input_label/class_binding',
  '../binding_types/html_elements_input_bindings/button_input/class_binding',
  '../binding_types/html_elements_input_bindings/checkbox_input/class_binding',
  '../binding_types/html_elements_input_bindings/color_input/class_binding',
  '../binding_types/html_elements_input_bindings/datalist_input/class_binding',
  '../binding_types/html_elements_input_bindings/date_input/class_binding',
  '../binding_types/html_elements_input_bindings/datetime_input/class_binding',
  '../binding_types/html_elements_input_bindings/email_input/class_binding',
  '../binding_types/html_elements_input_bindings/file_input/class_binding',
  '../binding_types/html_elements_input_bindings/hidden_input/class_binding',
  '../binding_types/html_elements_input_bindings/month_input/class_binding',
  '../binding_types/html_elements_input_bindings/number_input/class_binding',
  '../binding_types/html_elements_input_bindings/password_input/class_binding',
  '../binding_types/html_elements_input_bindings/radio_input/class_binding',
  '../binding_types/html_elements_input_bindings/range_input/class_binding',
  '../binding_types/html_elements_input_bindings/search_input/class_binding',
  '../binding_types/html_elements_input_bindings/select_input/class_binding',
  '../binding_types/html_elements_input_bindings/submit_button/class_binding',
  '../binding_types/html_elements_input_bindings/telephone_input/class_binding',
  '../binding_types/html_elements_input_bindings/textarea_input/class_binding',
  '../binding_types/html_elements_input_bindings/text_input/class_binding',
  '../binding_types/html_elements_input_bindings/time_input/class_binding',
  '../binding_types/html_elements_input_bindings/url_input/class_binding',
  '../binding_types/html_elements_input_bindings/week_input/class_binding',
  '../binding_types/html_elements_input_bindings/reset_button/class_binding',

  '../binding_types/html_elements_input_select',
  '../binding_types/html_elements_input_select_bindings',
  '../binding_types/html_elements_input_select_bindings/class_binding',
  '../binding_types/html_elements_input_select_bindings/instance_binding',
  '../binding_types/html_elements_input_select_bindings/option_input/class_binding',

  '../../../lib_ext/perspective/html/view/singleton_instance'
  
  
].each { |this_file| require_relative( this_file << '.rb' ) }
