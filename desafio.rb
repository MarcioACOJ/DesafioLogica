def contar_diamantes_e_areias(string, diamantes = 0)
    puts(string)
    return "#{diamantes} diamantes" if string == ''
    string = string.gsub('.', '') # removendo areias
    extraido = string.slice!('<>') # remove a primeira ocorrencia de <> da string
    if extraido.present?
      diamantes += 1
    else # se nao removeu é pq acabaram os diamantes
      string = ''
    end
    contar_diamantes_e_areias(string, diamantes)
end