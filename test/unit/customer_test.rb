require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_customer_has_orders
    cust = Customer.create(:name=>'fred')
    assert cust.orders
  end
  
  def test_to_qbxml
    cust = Customer.create(:name=>'fred')
    assert cust.to_qbxml
  end

end
