E('clico no menu {string}') do |option|
  home.menu_formulario.click
  home.menu_criar_usuario.click
end

E('preencho o formulário com os parâmetros:') do |parameters|
  args = parameters.hashes.first
  criar_usuario.nome.set args['nome']
  criar_usuario.ultimo_nome.set args['ultimo_nome']
  criar_usuario.email.set args['email']
  criar_usuario.endereco.set args['endereco']
  criar_usuario.universidade.set args['universidade']
  criar_usuario.profissao.set args['profissao']
  criar_usuario.genero.set args['genero']
  criar_usuario.idade.set args['idade']
end

E('crio o usuário') do
  criar_usuario.criar.click
end