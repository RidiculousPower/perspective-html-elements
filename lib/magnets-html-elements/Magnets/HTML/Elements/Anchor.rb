
class ::Magnets::HTML::Elements::Anchor
	
  include ::Magnets::HTML::View

  self.__container_tag__ = 'a'

	attr_required_text   :url
	attr_alias           :address, :url

	attr_required_texts  :text
	attr_alias					 :content, :text

  # FIX - relationships should be moved into methods
	attr_text				     :language, :mime_type, :target, :relationship_to_link, :optimal_media
	
	attr_order           :content

	################
  #  initialize  #
  ################

  def initialize( text = nil, url = nil )
    
    super()
    
    if text
      self.text = text
    end
    
    if url
      self.url = url
    end
    
  end

  ##################
  #  to_html_node  #
  ##################

  def to_html_node( document_frame = nil )

    self_as_html_node = super
    
    self_as_html_node[ 'href' ]	= url
    
    if mime_type
      self_as_html_node[ 'type' ] = mime_type
    end

    if language
      self_as_html_node[ 'hreflang' ] = language
    end

    if optimal_media
      self_as_html_node[ 'media' ] = optimal_media
    end

    if target
      self_as_html_node[ 'target' ] = target
    end

    if relationship_to_link
      self_as_html_node[ 'rel' ] = relationship_to_link
    end
    
    return self_as_html_node

  end

	##############
  #  validate  #
  ##############

	#language.validate do |language_code|
	#  return ::Magnets::HTML::Elements::Anchor::Languages.has_key?( language_code )
  #end
  #
  #target.validate do |target_value|
	#  return ::Magnets::HTML::Elements::Anchor::Targets.has_key?( language_code )
  #end
  #
  #target.validate do |relationship_value|
	#  return ::Magnets::HTML::Elements::Anchor::Relationships.has_key?( relationship_value )
  #end

	###########################################  Language  ###########################################

  Languages = {

    'ab' => 'Abkhazian',
    'aa' => 'Afar',
    'af' => 'Afrikaans',
    'sq' => 'Albanian',
    'am' => 'Amharic',
    'ar' => 'Arabic',
    'an' => 'Aragonese',
    'hy' => 'Armenian',
    'as' => 'Assamese',
    'ay' => 'Aymara',
    'az' => 'Azerbaijani',
    'ba' => 'Bashkir',
    'eu' => 'Basque',
    'bn' => 'Bengali',
    'bn' => 'Bangla',
    'dz' => 'Bhutani',
    'bh' => 'Bihari',
    'bi' => 'Bislama',
    'br' => 'Breton',
    'bg' => 'Bulgarian',
    'my' => 'Burmese',
    'be' => 'Byelorussian',
    'be' => 'Belarusian',
    'km' => 'Cambodian',
    'ca' => 'Catalan',
    # Cherokee	 
    # Chewa	 
    'zh' => 'Chinese',
    'co' => 'Corsican',
    'hr' => 'Croatian',
    'cs' => 'Czech',
    'da' => 'Danish',
    # Divehi	 
    'nl' => 'Dutch',
    # Edo	 
    'en' => 'English',
    'eo' => 'Esperanto',
    'et' => 'Estonian',
    'fo' => 'Faeroese',
    'fa' => 'Farsi',
    'fj' => 'Fiji',
    'fi' => 'Finnish',
    # Flemish	 
    'fr' => 'French',
    'fy' => 'Frisian',
    # Fulfulde	 
    'gl' => 'Galician',
    "Gaelic (Scottish)" => 'gd',
    "Gaelic (Manx)" => 'gv',
    'ka' => 'Georgian',
    'de' => 'German',
    'el' => 'Greek',
    'kl' => 'Greenlandic',
    'gn' => 'Guarani',
    'gu' => 'Gujarati',
    # Haitian-Creole	ht
    'ha' => 'Hausa',
    # Hawaiian	 
    'he' => 'Hebrew',
    'iw' => 'Hebrew',
    'hi' => 'Hindi',
    'hu' => 'Hungarian',
    # Ibibio	 
    'is' => 'Icelandic',
    'io' => 'Ido',
    # Igbo	 
    'id' => 'Indonesian',
    'in' => 'Indonesian',
    'ia' => 'Interlingua',
    'ie' => 'Interlingue',
    'iu' => 'Inuktitut',
    'ik' => 'Inupiak',
    'ga' => 'Irish',
    'it' => 'Italian',
    'ja' => 'Japanese',
    'jv' => 'Javanese',
    'kn' => 'Kannada',
    # Kanuri	 
    'ks' => 'Kashmiri',
    'kk' => 'Kazakh',
    'rw' => 'Kinyarwanda',
    'rw' => 'Ruanda',
    'ky' => 'Kirghiz',
    'rn' => 'Kirundi',
    'rn' => 'Rundi',
    # Konkani	 
    'ko' => 'Korean',
    'ku' => 'Kurdish',
    'lo' => 'Laothian',
    'la' => 'Latin',
    'lv' => 'Latvian',
    'lv' => 'Lettish',
    'li' => 'Limburgish',
    'li' => 'Limburger',
    'ln' => 'Lingala',
    'lt' => 'Lithuanian',
    'mk' => 'Macedonian',
    'mg' => 'Malagasy',
    'ms' => 'Malay',
    'ml' => 'Malayalam',
    'mt' => 'Maltese',
    'mi' => 'Maori',
    'mr' => 'Marathi',
    'mo' => 'Moldavian',
    'mn' => 'Mongolian',
    'na' => 'Nauru',
    'ne' => 'Nepali',
    'no' => 'Norwegian',
    'oc' => 'Occitan',
    'or' => 'Oriya',
    'om' => 'Oromo',
    'om' => 'Afan',
    'om' => 'Galla',
    # Papiamentu	 
    'ps' => 'Pashto',
    'ps' => 'Pushto',
    'pl' => 'Polish',
    'pt' => 'Portuguese',
    'pa' => 'Punjabi',
    'qu' => 'Quechua',
    'rm' => 'Rhaeto-Romance',	
    'ro' => 'Romanian',
    'ru' => 'Russian',
    # Sami	 
    # Lappish
    'sm' => 'Samoan',
    'sg' => 'Sangro',
    'sa' => 'Sanskrit',
    'sr' => 'Serbian',
    # Serbo-Croatian	sh
    'st' => 'Sesotho',
    'tn' => 'Setswana',
    'sn' => 'Shona',
    # Sichuan-Yi	ii
    'sd' => 'Sindhi',
    'si' => 'Sinhalese',
    'ss' => 'Siswati',
    'sk' => 'Slovak',
    'sl' => 'Slovenian',
    'so' => 'Somali',
    'es' => 'Spanish',
    'su' => 'Sundanese',
    'sw' => 'Swahili',
    'sw' => 'Kiswahili',
    'sv' => 'Swedish',
    # Syriac	 
    'tl' => 'Tagalog',
    'tg' => 'Tajik',
    # Tamazight	 
    'ta' => 'Tamil',
    'tt' => 'Tatar',
    'te' => 'Telugu',
    'th' => 'Thai',
    'bo' => 'Tibetan',
    'ti' => 'Tigrinya',
    'to' => 'Tonga',
    'ts' => 'Tsonga',
    'tr' => 'Turkish',
    'tk' => 'Turkmen',
    'tw' => 'Twi',
    'ug' => 'Uighur',
    'uk' => 'Ukrainian',
    'ur' => 'Urdu',
    'uz' => 'Uzbek',
    # Venda	 
    'vi' => 'Vietnamese',
    #'vo' => 'Volapüvo',
    'wa' => 'Wallon',
    'cy' => 'Welsh',
    'wo' => 'Wolof',
    'xh' => 'Xhosa',
    # Yi	 
    'yi' => 'Yiddish',
    'ji' => 'Yiddish',
    'yo' => 'Yoruba',
    'zu' => 'Zulu',

  }

	#############################################  Media  ############################################

  # conditions can be joined by:
  #   and (and)
  #   not (not)
  #   ,   (or)

  # -devices-:
  #   all
  #   aural
  #   braille
  #   handheld
  #   projection
  #   print
  #   screen
  #   tty
  #   tv
  
  # width
  #   min-width
  #   max-width
  # height
  #   min-height
  #   max-height
  # device-width
  #   min-device-width
  #   max-device-width
  # device-height
  #   min-device-height
  #   max-device-height
  # orientation - "portrait" or "landscape"
  # aspect-ratio
  #   min-aspect-ratio
  #   max-aspect-ratio
  # device-aspect-ratio
  #   min-device-aspect-ratio
  #   max-device-aspect-ratio
  # color
  #   min-color
  #   max-color
  # color-index
  #   min-color-index
  #   max-color-index
  # monochrome
  #   min-monochrome
  #   max-monochrome
  # resolution
  #   min-resolution
  #   max-resolution
  # scan - "progressive" or "interlace"
  # grid - 1 for grid or 0 for bitmap

	############################################  Target  ############################################

  Targets = Hash[[
    
    '_blank',
    '_parent',
    '_self',
    '_top',
    'framename'

  ].zip]

	#########################
  #  set_target_to_blank  #
  #########################
	
	def set_target_to_blank
  end

	##########################
  #  set_target_to_parent  #
  ##########################
	
	def set_target_to_parent
  end

	########################
  #  set_target_to_self  #
  ########################

	def set_target_to_self
  end

	#######################
  #  set_target_to_top  #
  #######################

	def set_target_to_top
  end

	###################
  #  set_target_to  #
  ###################

	def set_target_to( frame_name )
  end

	########################################  Relationships  #########################################

  Relationships = Hash[[
    
    'alternate',
    'author',
    'bookmark',
    'help',
    'license',
    'next',
    'nofollow',
    'noreferrer',
    'prefetch',
    'prev',
    'search',
    'tag',
    
  ].zip]

	#########################
  #  clear_relationships  #
  #########################
	
	def clear_relationships
  end

	#######################
  #  is_alternate_link  #
  #######################

  def is_alternate_link
  end

	###########################
  #  is_not_alternate_link  #
  ###########################

  def is_not_alternate_link
  end

	####################
  #  is_author_link  #
  ####################
  
  def is_author_link
  end

	########################
  #  is_not_author_link  #
  ########################

  def is_not_author_link
  end

	######################
  #  is_bookmark_link  #
  ######################
	
	def is_bookmark_link
  end

	##########################
  #  is_not_bookmark_link  #
  ##########################

	def is_not_bookmark_link
  end

	##################
  #  is_help_link  #
  ##################

  def is_help_link
  end

	######################
  #  is_not_help_link  #
  ######################

  def is_not_help_link
  end

	#####################
  #  is_license_link  #
  #####################

  def is_license_link
  end

	#########################
  #  is_not_license_link  #
  #########################

  def is_not_license_link
  end

	##################
  #  is_next_link  #
  ##################

  def is_next_link
  end

	######################
  #  is_not_next_link  #
  ######################

  def is_not_next_link
  end

	#######################
  #  is_no_follow_link  #
  #######################

  def is_no_follow_link
  end

	###########################
  #  is_not_no_follow_link  #
  ###########################

  def is_not_no_follow_link
  end

	########################
  #  is_no_referer_link  #
  ########################
                     
  def is_no_referer_link
  end

	############################
  #  is_not_no_referer_link  #
  ############################

  def is_not_no_referer_link
  end

	######################
  #  is_prefetch_link  #
  ######################

  def is_prefetch_link
  end

	##########################
  #  is_not_prefetch_link  #
  ##########################

  def is_not_prefetch_link
  end

	######################
  #  is_previous_link  #
  ######################

  def is_previous_link
  end

	##########################
  #  is_not_previous_link  #
  ##########################

  def is_not_previous_link
  end

	####################
  #  is_search_link  #
  ####################

  def is_search_link
  end

	########################
  #  is_not_search_link  #
  ########################

  def is_not_search_link
  end

	#################
  #  is_tag_link  #
  #################

  def is_tag_link
  end

	#####################
  #  is_not_tag_link  #
  #####################

  def is_not_tag_link
  end
  
end
