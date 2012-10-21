# -*- encoding : utf-8 -*-
require 'active_record'
require 'paging_helper'

# PaginatingFast
module PaginatingFast
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
    DEFAULT_PAGE_SIZE = 10
    
    def paginate_fast(page_options=nil)
      if page_options
        @current = page_options[:current] && page_options[:current].to_i > 0 ? page_options[:current].to_i : 1
        @first = page_options[:first] || 1
        @total_size = count || 0
        page_size = page_options[:size] || [@total_size, DEFAULT_PAGE_SIZE].min
        @last = page_size > 0 ? (@total_size.to_f/page_size.to_f).ceil : 0
        @item_offset = (@current - 1) * page_size
        @item_limit = (page_size) < @total_size ? page_size : @total_size
        where("#{name.tableize}.id in (?)", select("#{name.tableize}.id").limit(@item_limit).offset(@item_offset).map(&:id))
      else
        raise ArgumentError, "No define argument :current"
      end
    end
    
    def page
      @current.to_i
    end
    
    def first_page
      @first.to_i
    end
    
    def last_page
      @last.to_i
    end
    
    def first_item
	@item_offset.to_i>0 ? @item_offset.to_i+1 : 1
    end
    
    def last_item
      @item_offset.to_i+@item_limit.to_i < @total_size.to_i ? @item_offset.to_i+@item_limit.to_i : @total_size.to_i
    end
    
    def total_size
      @total_size.to_i
    end
    
  end
  
end

ActiveRecord::Base.send(:include, PaginatingFast)
