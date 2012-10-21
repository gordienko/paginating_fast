# -*- encoding : utf-8 -*-
require 'paginating_fast.rb'

ActiveRecord::Base.send(:include, PaginatingFast)
ActionView::Base.send(:include, PaginatingFast::Helpers)
