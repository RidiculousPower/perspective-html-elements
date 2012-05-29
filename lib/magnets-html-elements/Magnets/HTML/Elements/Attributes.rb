
module ::Magnets::Bindings::AttributeContainer::HTMLView
  
  #define_binding_type( :head,             base::Head )
  #define_binding_type( :base,             base::Base )
  #define_binding_type( :link,             base::Link )
  #define_binding_type( :meta,             base::Meta )
  #define_binding_type( :script,           base::Script )
  #define_binding_type( :style,            base::Style )
  #define_binding_type( :title,            base::Title )
  #
  #define_binding_type( :body,             base::Body )
  #
  #define_binding_type( :anchor,           base::Anchor )
  #define_binding_type( :page_anchor,      base::PageAnchor )
  #define_binding_type( :mailto,           base::MailTo )
  #
  #define_binding_type( :button,           base::Button )
  #define_binding_type( :comment,          base::Comment )
  #define_binding_type( :div,              base::Div )
  #
  #
  #define_binding_type( :hr,               base::HR )
  #define_binding_type( :image,            base::Image )
  #define_binding_type( :ordered_list,     base::OrderedList )
  #define_binding_type( :unordered_list,   base::UnorderedList )
  #define_binding_type( :table,            base::Table )
  #define_binding_type( :date,             base::Date )
  #define_binding_type( :h1,               base::H1 )
  #define_binding_type( :h2,               base::H2 )
  #define_binding_type( :h3,               base::H2 )
  #define_binding_type( :h4,               base::H2 )
  #define_binding_type( :h5,               base::H2 )
  #define_binding_type( :h6,               base::H2 )
  #define_binding_type( :paragraph,        base::Paragraph )
  #define_binding_type( :span,             base::Span )
  #
  #define_binding_type( :form,             base::Form )
  
  define_binding_type( :url, ::Magnets::Bindings::Attributes::URI )
  
end
