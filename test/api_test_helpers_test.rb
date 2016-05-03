require 'minitest/autorun'
require 'api_test_helpers'

# Tests for ApiTestHelpers
class ApiTestHelpersTest < Minitest::Test
  def setup
    @test_class = TestClass.new
  end

  def test_json_request
    assert @test_class.respond_to?(:json_request)
  end
end

# Test class to test a module
class TestClass
  include ApiTestHelpers
end
