require "pipehat/version"

module Pipehat
  class Error < StandardError; end
  # Your code goes here...
end

require "pipehat/parser"
require "pipehat/segment/base"
require "pipehat/node"
require "pipehat/field/base"
require "pipehat/repeat/base"
require "pipehat/component/base"
require "pipehat/subcomponent/base"

require "pipehat/segment/pid"
