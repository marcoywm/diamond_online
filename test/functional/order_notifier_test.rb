require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received
    assert_equal "Silver Store Order Confirmation", mail.subject
    assert_equal ["wyu45@academic.rrc.ca"], mail.to
    assert_equal ["marcoywm@hotmail.cocm"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped
    assert_equal "Silver Store Order Order Shipped", mail.subject
    assert_equal ["wyu45@academic.rrc.ca"], mail.to
    assert_equal ["marcoywm@hotmail.cocm"], mail.from
    assert_match  /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/, mail.body.encoded
  end

end
