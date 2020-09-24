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

Dir[File.join(__dir__, "pipehat", "types", "*.rb")].sort.each { |file| require file }
Dir[File.join(__dir__, "pipehat", "segment", "*.rb")].sort.each { |file| require file }
