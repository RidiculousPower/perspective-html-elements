
class ::Perspective::HTML::Elements::Comment

  include ::Perspective::HTML::View  

	attr_required_texts  :text
	attr_alias           :content, :text
	attr_alias           :comment, :text
	attr_text            :padding
  
  # accepts multiple string/views
  # * strings => rendered with paragraph breaks
  # * views => rendered as html
  attr_order :content

  ################
  #  initialize  #
  ################

  def initialize
    
    super
    
    self.padding.value = '  '
    
  end

  ##################################################################################################
      private ######################################################################################
  ##################################################################################################

  ###################################
  #  __initialize_container_node__  #
  ###################################
  
  def __initialize_container_node__( document_frame )
        
    return ::Nokogiri::XML::Comment.new( document_frame, padding.value + text.value + padding.value )
    
  end
  
end
