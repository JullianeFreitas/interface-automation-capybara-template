Dir[File.join(File.dirname(__FILE__), '../pages/*_object.rb')].each { |file| require file}


module PageObjects

  def home
    @home ||= PaginaInicialObject.new
  end

  def criar_usuario
    @criar_usuario ||= CriarUsuarioObject.new
  end
end