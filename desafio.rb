def contar_diamantes_e_areias(string, diamantes = 0)
    puts(string)
    return "#{diamantes} diamantes" if string == ''
    string = string.gsub('.', '') 
    extraido = string.slice!('<>') 
    if extraido.present?
      diamantes += 1
    else 
      string = ''
    end
    contar_diamantes_e_areias(string, diamantes)
end