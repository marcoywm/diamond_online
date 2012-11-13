load 'ar.rb'

load 'models\customer.rb'
load 'models\province.rb'


kyle=Customer.where(:name => "kyle Geske").first
puts kyle.inspect

kyle.destory unless kyle.nil?
puts kyle.inspect

#delete all customers from table.
#Customer.destory_all

