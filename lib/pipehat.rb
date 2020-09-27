require "pipehat/version"

module Pipehat
  class Error < StandardError; end
end

require "pipehat/parser"
require "pipehat/segment/base"
require "pipehat/node"
require "pipehat/field/base"
require "pipehat/repeat/base"
require "pipehat/component/base"
require "pipehat/subcomponent/base"
require "pipehat/define_type"
require "pipehat/message"

Dir[File.join(__dir__, "pipehat", "types", "*.rb")].sort.each { |file| require file }
Dir[File.join(__dir__, "pipehat", "segment", "*.rb")].sort.each { |file| require file }

ObjectSpace.each_object(Pipehat::Segment::Base.singleton_class).each do |segment_class|
  segment_class.field_names.freeze
end
