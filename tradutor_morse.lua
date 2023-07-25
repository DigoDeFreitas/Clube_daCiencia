caractere_para_morse = {					-- tabela de correspondências
	a = '._ ',
	b = '_...',
	c = '_._.',
	d = '_..',
	e = '.',
	f = '.._.',
	g = '_ _.',
	h = '....',
	i = '..',
	j = '._ _ _ ', 
	k = '_._ ',
	l = '._..',
	m = '_ _ ',
	n = '_.',
	o = '_ _ _ ',
	p = '._ _.',
	q = '_ _._ ',
	r = '._.',
	s = '...',
	t = '_ ',
	u = '.._ ',
	v = '..._ ',
	w = '._ _ ',
	x = '_.._ ',
	y = '_._ _ ',
	z = '_ _..',
	["1"] = '._ _ _ _ ',
	["2"] = '.._ _ _ ',
	["3"] = '..._ _ ',
	["4"] = '...._ ',
	["5"] = '.....',
	["6"] = '_....',
	["7"] = '_ _...',
	["8"] = '_ _ _..',
	["9"] = '_ _ _ _.',
	["0"] = '_ _ _ _ _ ',
}
print("Tradutor Morse versao 1.0\nFeito por Rodrigo de Freitas\nEscreva um texto na escrita padrao para ele ser traduzido para codigo morse!\n(o tradutor traduz apenas letras sem sinais e numeros. Espacos e outros caracteres serão ignorados)")							-- printa o texto de boas-vindas
texto_normal = io.read()					-- recebe o input

function trad_p_morse(texto)
	texto_traduzido = {}
	for i = 1 ,#texto do					-- itera sobre cada caractere do texto
		local caractere = string.sub(texto, i, i)	-- define caractere
		caractere = string.lower(caractere)		-- faz o caractere ser minúsculo (para poder traduzir)
		caractere = caractere_para_morse[caractere]
		if caractere == nil then
			caractere = ""				-- caso não haja tradução
		end
		table.insert(texto_traduzido, caractere)	-- coloca caraactere em uma tabela
	end
	return table.concat(texto_traduzido)			-- transforma a tabela em uma string e a retorna
end
print(trad_p_morse(texto_normal))				-- printa o texto traduzido