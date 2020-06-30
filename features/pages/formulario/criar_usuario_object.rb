class CriarUsuarioObject < SitePrism::Page
  element :nome, '#user_name'
  element :ultimo_nome, '#user_lastname'
  element :email, '#user_email'
  element :endereco, '#user_address'
  element :universidade, '#user_university'
  element :profissao, '#user_profile'
  element :genero, '#user_gender'
  element :idade, '#user_age'

  element :criar, 'input[name="commit"]'
  element :voltar, '#user_name'

  def setar_elements(args)
    :nome.set args['nome']
    :ultimo_nome.set args['ultimo_nome']
    :email.set args['email']
    :endereco.set args['endereco']
    :universidade.set args['universidade']
    :profissao.set args['profissao']
    :genero.set args['genero']
    :idade.set args['idade']
  end

end