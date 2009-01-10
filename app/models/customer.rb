class Customer < ActiveRecord::Base
  acts_as_quickbooks_model
  has_many :orders
  
  def Customer.how_many
    Customer.count
  end
  
  def to_qbxml
xml_string = <<-XML
<CustomerRet>
  <ListID>#{ list_id }</ListID>
  <Name>#{name}</Name>
  <IsActive>true</IsActive>
  <Notes>foo bar</Notes>
</CustomerRet>
XML
 
  end
end
