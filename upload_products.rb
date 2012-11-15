load 'ar.rb'


i=1

81.times do
  imga=Image.new
  imga.name="images#{i}.jpg"
  imga.product_id=i
  imga.save
  i=i+1
end

