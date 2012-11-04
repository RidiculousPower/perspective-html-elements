
require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Anchor do

  ################
  #  initialize  #
  ################

  it 'can be initialized with link text' do
    
    link_url  = 'http://example.com'
    link_text = 'Example!'
    
    link = ::Perspective::HTML::Elements::Anchor.new( link_text )
    link.text.should == link_text
    
  end
  
  it 'can be initialized with link text and url' do
    
    link_url  = 'http://example.com'
    link_text = 'Example!'
    
    link = ::Perspective::HTML::Elements::Anchor.new( link_text, link_url )
    link.url.should == link_url
    
  end

  ##################
  #  to_html_node  #
  ##################

  it 'can render an HTML anchor with a URI (<a href="...://..."...>)' do

    link = ::Perspective::HTML::Elements::Anchor.new

    link_url  = 'http://example.com'
    link_text = 'Example!'

    link.url.__value__ = link_url
    link.text.__value__ = link_text

    link_html_node = link.to_html_node

    link_html_node.name.should == 'a'
    link_html_node[ 'href' ].should == link_url
    link_html_node.content.should == link_text

  end

  #-------------#
  #  mime_type  #
  #-------------#
  
  it 'can specify mime type' do

    link_url  = 'http://example.com'
    link_text = 'Example!'
    link = ::Perspective::HTML::Elements::Anchor.new( link_text, link_url )
    link.mime_type.__value__ = 'text/html'
    
    link_html_node = link.to_html_node

    link_html_node[ 'type' ].should == link.mime_type.__value__
    
  end
  
  #------------#
  #  language  #
  #------------#

  it 'can specify language' do

    link_url  = 'http://example.com'
    link_text = 'Example!'
    link = ::Perspective::HTML::Elements::Anchor.new( link_text, link_url )
    link.language.__value__ = 'en'
    
    link_html_node = link.to_html_node

    link_html_node[ 'hreflang' ].should == link.language.__value__
    
  end

  #-----------------#
  #  optimal_media  #
  #-----------------#

  it 'can specify optimal media' do

    link_url  = 'http://example.com'
    link_text = 'Example!'
    link = ::Perspective::HTML::Elements::Anchor.new( link_text, link_url )
    link.optimal_media.__value__ = 'all'
    
    link_html_node = link.to_html_node

    link_html_node[ 'media' ].should == link.optimal_media.__value__
    
  end

  #----------#
  #  target  #
  #----------#

  it 'can specify target' do

    link_url  = 'http://example.com'
    link_text = 'Example!'
    link = ::Perspective::HTML::Elements::Anchor.new( link_text, link_url )
    link.target.__value__ = '_self'
    
    link_html_node = link.to_html_node

    link_html_node[ 'target' ].should == link.target.__value__
    
  end

  #------------------------#
  #  relationship_to_link  #
  #------------------------#

  it 'can specify relationship of current document to link' do

    link_url  = 'http://example.com'
    link_text = 'Example!'
    link = ::Perspective::HTML::Elements::Anchor.new( link_text, link_url )
    link.relationship_to_link.__value__ = 'alternate'
    
    link_html_node = link.to_html_node

    link_html_node[ 'rel' ].should == link.relationship_to_link.__value__
    
  end

end

