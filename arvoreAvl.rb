class No
	attr_accessor :pai, :fb, :valor, :fEsq, :fDir
	
	def initialize( valor)
		@valor = valor
		@fb = 0
		@filhoEsquer = nil
		@filhoDir = nil
		@pai = nil

	end

	def procura(valor)
		return self if valor = @valor
		return @filhoEsquer.procura(valor) if @filhoEsquer and valor < @valor
		return @filhoDir.procura(valor) if @filhoDir and valor > @valor
		return nil
	end

	def inserir(valor)
		if valor >= @valor
			#inserir a direita
			if @filhoDir.nil?
				#se tiver vazio bota qui
				@filhoDir = No.new(valor)
				@filhoDir.pai = self
			else
				#se nao tiver prcura pr aqui
				@filhoDir.inserir(valor)
		else
			#inserir a esquerda
			
		end
		
	end

end