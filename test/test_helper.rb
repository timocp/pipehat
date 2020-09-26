# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "pry"
require "pipehat"

FrozenError = RuntimeError if RUBY_VERSION < "2.5"

require "minitest/autorun"
