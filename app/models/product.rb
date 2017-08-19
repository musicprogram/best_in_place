class Product < ApplicationRecord
	validates :name, presence: true, uniqueness: true

	validate :validacion_personalized

	def validacion_personalized
		if self.price < 100
			errors.add(:price, "Debe ser mayor a 100")
		end	
	end

end
