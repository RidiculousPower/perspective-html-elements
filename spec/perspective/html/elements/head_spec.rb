# -*- encoding : utf-8 -*-

RSpec.configure do |config|
  # RSpec automatically cleans stuff out of backtraces;
  # sometimes this is annoying when trying to debug something e.g. a gem
  config.backtrace_clean_patterns = [
    #/\/lib\d*\/ruby\//,
    #/bin\//,
    #/gems/,
    #/spec\/spec_helper\.rb/,
    /mate\/runner/,
    /textmate-command/,
    /objects/,
    /lib\/rspec\/(core|expectations|matchers|mocks)/
  ]
end

require_relative '../../../../lib/perspective/html/elements.rb'

describe ::Perspective::HTML::Elements::Head do

  let( :head ) { ::Perspective::HTML::Elements::Head.new }
  let( :html_node ) { head.to_html_node }
  
  ##################
  #  to_html_node  #
  ##################
  
  context '#to_html_node' do
    before :all do
      module Perspective
        alias_singleton_method :orig_path_info, :path_info if respond_to?( :path_info )
        alias_singleton_method :orig_request, :request if respond_to?( :request )
        def self.path_info
          return 'some path info'
        end
        def self.request
          if @has_request
            return self
          else
            return nil
          end
        end
        def self.has_request=( true_or_false )
          @has_request = true_or_false
        end
      end
    end
    after :all do
      alias_singleton_method :path_info, :orig_path_info if respond_to?( :orig_path_info )
      alias_singleton_method :request, :orig_request if respond_to?( :orig_request )
    end
    context 'when request is nil' do
      context 'when title has text' do
        it 'will use the text' do
          head.title = 'Title'
          head.title.should == 'Title'
          html_node.name.should == 'head'
          html_node.children[0].content.should == 'Title'
        end
      end
      context 'when title does not have text' do
        it 'will automatically insert "Untitled"' do
          html_node.name.should == 'head'
          html_node.children[0].content.should == 'Untitled'
        end
      end
    end
    context 'when request has path info' do
      before :all do
        Perspective.has_request = true
      end
      after :all do
        Perspective.has_request = false
      end
      context 'when title has text' do
        it 'will use the text' do
          head.title = 'Title'
          html_node.name.should == 'head'
          html_node.children[0].content.should == 'Title'
        end
      end
      context 'when title does not have text' do
        it 'will insert path trnaslated into title' do
          html_node.name.should == 'head'
          html_node.children[0].content.should == 'some path info'
        end
      end
    end
  end
  
end

