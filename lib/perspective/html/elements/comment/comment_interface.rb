# -*- encoding : utf-8 -*-

module ::Perspective::HTML::Elements::Comment::CommentInterface

  include ::Perspective::HTML::View  

	attr_required_texts  :text
	attr_alias           :content, :text
	attr_alias           :comment, :text
	attr_text            :padding
  
  # accepts multiple string/views
  # * strings => rendered with paragraph breaks
  # * views => rendered as html
  attr_autobind :content
  attr_order :content

  ################
  #  initialize  #
  ################

  def initialize
    
    super
    
    self.padding = '  '
    
  end

  ##################################################################################################
      private ######################################################################################
  ##################################################################################################

  ###################################
  #  «initialize_container_node»  #
  ###################################
  
  def «initialize_container_node»( document )
        
    return ::Nokogiri::XML::Comment.new( document, padding + text + padding )
    
  end

end
