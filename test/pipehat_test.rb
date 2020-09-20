# frozen_string_literal: true

require "test_helper"

class PipehatTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Pipehat::VERSION
  end
end
