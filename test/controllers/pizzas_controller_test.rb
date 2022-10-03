require "test_helper"

class PizzasControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    assert(last_response.body).to include_json(
      "id": 3,
      "name": "Silician Pizza",
      "ingredients": "Anchovies"
    )
  end
end
