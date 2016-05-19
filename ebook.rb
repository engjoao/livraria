require_relative "produto"

class EBook < Produto
	include Impresso
	
	def initialize(titulo, preco, ano_lancamento, editora)
		super(titulo, preco, ano_lancamento, editora)
	end

	def matches?(query)
		["ebook", "digital"].include?(query)
	end
end

