load 'ar.rb'

cus=Customer.all

cus.each do |cu|
  puts cu.inspect
end


