module Gimme
  module ClassMethods
    def random(*args)
      options = args.extract_options!
      options[:order]   = "RAND()"
      options[:limit] ||= 1
      find(:all, options.merge(:order => "RAND()"))
    end
  end
end

if Object.const_defined?("ActiveRecord")
  ActiveRecord::Base.send(:extend, Gimme::ClassMethods)
end