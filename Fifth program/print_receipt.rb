class Receipt
	def initialize
		@list = []
		@price_total = 0
		@tax_total = 0
	end

	def add_to_receipt(item)
		@list << item
		item.calculate_tax
		@price_total += item.price
		@tax_total += item.tax
		@grand_total = @price_total + @tax_total
	end

	def print_list
		@list.each do |product|
			puts "#{product.item_name}, #{product.price}"
		end
		puts "Subtotal: #{@price_total.round}"
		puts "Tax total: #{@tax_total.round}"
		puts "Grand total: #{@grand_total.round}"
	end
end