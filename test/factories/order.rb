Factory.define :order do |f|
  f.descrption "MyText"
  f.starts_on Date.today
  f.ends_on Date.today
  f.customer_id 1
end
