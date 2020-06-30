class PaginaInicialObject < SitePrism::Page

  element :menu_formulario, 'body > div.row > div.col.s3 > ul > li:nth-child(1)'
  element :menu_criar_usuario, 'body > div.row > div.col.s3 > ul > li.bold.active > div > ul > li:nth-child(1) > a'
end