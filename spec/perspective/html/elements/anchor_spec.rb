# -*- encoding : utf-8 -*-

require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Anchor do

  let( :link_url ) { 'http://example.com' }
  let( :link_text ) { 'Example!' }

  let( :link ) { ::Perspective::HTML::Elements::Anchor.new( link_text, link_url ) }
  let( :link_html_node ) { link.to_html_node }

  ################
  #  initialize  #
  ################
  
  context '#initialize' do
    context 'with link text' do
      let( :link ) { ::Perspective::HTML::Elements::Anchor.new( link_text ) }
      it 'will initialize with link text' do
        link.text.should == link_text
      end
    end
    context 'with link text and url' do
      it 'will initialize with link text and url' do
        link.text.should == link_text
        link.url.should == link_url
      end
    end
  end
  
  ##################
  #  to_html_node  #
  ##################

  context '#to_html_node' do
    before :each do
      link.url = link_url
      link.text = link_text
    end
    it 'will render an HTML anchor with a URI (<a href="...://..."...>)' do
      link_html_node.name.should == 'a'
      link_html_node[ 'href' ].should == link_url
      link_html_node.content.should == link_text
    end
  end

  ###############
  #  mime_type  #
  ###############
  
  context '#mime_type' do
    before :each do
      link.mime_type = 'text/html'
    end
    it 'will specify mime type' do
      link_html_node[ 'type' ].should == link.mime_type
    end
  end
    
  ##############
  #  language  #
  ##############

  context '#language' do
    before :each do
      link.language = 'en'
    end
    it 'will specify language' do
      link_html_node[ 'hreflang' ].should == link.language
    end
  end

  ###################
  #  optimal_media  #
  ###################

  context '#optimal_media' do
    before :each do
      link.optimal_media = 'all'
    end
    it 'will specify optimal media' do
      link_html_node[ 'media' ].should == link.optimal_media
    end
  end

  ############
  #  target  #
  ############

  context '#target' do
    it 'will specify target' do
      link.target = '_self'
      link_html_node[ 'target' ].should == link.target
    end
  end

  ##########################
  #  relationship_to_link  #
  ##########################

  context '#relationship_to_link' do
    before :each do
      link.relationship_to_link = 'alternate'
    end
    it 'will specify relationship of current document to link' do
      link_html_node[ 'rel' ].should == link.relationship_to_link
    end
  end

end

