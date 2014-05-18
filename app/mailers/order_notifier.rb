class OrderNotifier < ActionMailer::Base
  default from: "Marco Yu <marcoywm@hotmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @greeting = "Hi"
     @order = order
    mail to: order.email, subject: 'Silver Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @greeting = "Hi"
    @order = order
    mail to: order.email, subject: 'Silver Store Order Order Shipped'
  end
end
