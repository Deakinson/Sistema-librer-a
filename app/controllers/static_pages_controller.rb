class StaticPagesController < ApplicationController

	def payment_succed
		if @shopping_cart.payed?
			cookies[:shopping_cart_id] = nil	
		else
			redirect_to carrito_path
		end
	end
end
