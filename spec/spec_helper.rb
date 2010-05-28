$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rubygems'
require 'active_record'
require 'active_record/version'

require 'gimme'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
end

puts "Testing against ActiveRecord version #{ActiveRecord::VERSION::STRING}"