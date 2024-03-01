# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.new({ first_name: 'joao', last_name: 'silva', address: 'rua jerico 193', phone: '999999999', email: 'joao@email.com', password: '123123' })
user.save!

user2 = User.new({ first_name: 'maria', last_name: 'silva', address: 'rua jerico 193', phone: '999999999', email: 'maria@email.com', password: '123123' })
user2.save!

user3 = User.new({ first_name: 'pedro', last_name: 'silva', address: 'rua jerico 193', phone: '999999999', email: 'pedro@email.com', password: '123123' })
user3.save!


    # ACESSORIOS
    product = Product.new({ name: 'Fone Wireless', price: 300, description: 'Microfone embutido com cancelamento de eco para um áudio nítido. Chega de ouvir aquele eco chato enquanto você fala ao telefone. Com o cancelamento de eco acústico, as conversas ficam nítidas e sem interferências', stock: 20, category:'Acessórios', user_id:1, photo_url: 'https://images.kabum.com.br/produtos/fotos/153395/fone-de-ouvido-sem-fio-philips-true-wireless-bluetooth-preto-tat1235bk-97_1617798935_gg.jpg' })
    product.save!

    product2 = Product.new({ name: 'Caixa Wireless', price: 500, description: 'Com um novo design inovador e ecologicamente correto, a Caixa de Som Portátil JBL GO3 tem o mesmo desempenho notável do áudio que você já conhece. Com um acessório que não pode faltar em seu próximo passeio', stock: 10, category: 'Acessórios', user_id:2, photo_url: 'https://images.kabum.com.br/produtos/fotos/421825/caixa-de-som-portatil-jbl-go3-bluetooth-4-2-w-rms-a-prova-d-agua-ate-5-hrs-de-bateria-verde-jblgo3ecogrn_1687349792_m.jpg ' })
    product2.save!

    # CADEIRAS
    product3 = Product.new({ name: 'Cadeira Gamer Moob Reclinável GT Racer', price: 1300, description: 'A Cadeira Gamer Moob GT Racer combina estilo e ergonomia para proporcionar o máximo conforto durante suas sessões de jogo.', stock: 30, category: 'Cadeiras', user_id:1, photo_url: 'https://m.media-amazon.com/images/I/51V-gfuS7HL._AC_SL1000_.jpg' })
    product3.save!

    product4 = Product.new({ name: 'HAVIT CADEIRA GAMER ', price: 1300, description: 'A Cadeira Gamer HAVIT combina estilo e ergonomia para proporcionar o máximo conforto durante suas sessões de jogo.', stock: 30, category: 'Cadeiras', user_id:1, photo_url: 'https://m.media-amazon.com/images/I/61MDSAgw4SL._AC_SX679_.jpg' })
    product4.save!

  product5 = Product.new({ name: 'CADEIRA GAMER MANCER', price: 1300, description: 'Para quem passa horas imerso no mundo dos jogos, uma cadeira confortável e de qualidade é o mínimo.', stock: 30, category: 'Cadeiras', user_id:1, photo_url: 'https://m.media-amazon.com/images/I/41S8mwXQgbL._AC_SX679_.jpg' })
    product5.save!

  product6 = Product.new({ name: 'Thunderx3 Tc3 Cadeira Gamer Tc3 All White, Branca', price: 1300, description: 'Para quem passa horas imerso no mundo dos jogos, uma cadeira confortável e de qualidade é o mínimo.', stock: 30, category: 'Cadeiras', user_id:1, photo_url: 'https://m.media-amazon.com/images/I/71+PkrrVM1L._AC_SX679_.jpg' })
    product6.save!

    # NOTEBOOKS
  product7 = Product.new({ name: 'Notebook Inspiron 15', price: 2199, description: 'Processador 12ª geração Intel® Core™ i3-1215U (6-core, cache de 10MB, até 4.4GHz)', stock: 30, category: 'Notebooks', user_id:1, photo_url: ' ' })
  product7.save!

  product8 = Product.new({ name: 'Notebook Samsung Galaxy Book2r', price: 2204.67, description: 'Intel Core i3-1215U, Windows 11 Home, 8GB, 256GB SSD, 15.6 Full HD LED 15.6', stock: 27, category: 'Notebooks', user_id:1, photo_url: ' ' })
  product8.save!

  product9 = Product.new({ name: 'Notebook VAIO®', price: 2499.69, description: 'FE15 AMD® Ryzen 5 Linux 16GB 512GB SSD Full HD - Prata Titânio', stock: 63, category: 'Notebooks', user_id:2, photo_url: ' ' })
  product9.save!

    product10 = Product.new({ name: 'Notebook Asus Vivobook 15', price: 1300, description: 'Intel Pentium Gold 4GB 128GB SSD Tela 15,6" e Windows 11 Home X1500EA-EJ4242WS', stock: 36, category: 'Notebooks', user_id:1, photo_url: ' ' })
    product10.save!

    #CELULARES
    product11 = Product.new({ name: 'Celular a14', price: 500, description: 'Com bateria de 5.000 mAh, a Inovação do Smartphone Samsung Galaxy A14 não termina aí. Com tecnologia 4G, o Galaxy A14 que permite a transferência de dados e excelente navegação na internet, além de conectividade Wi-fi e GPS', stock: 10, category: 'Smartphones', user_id:2, photo_url: 'https://images.kabum.com.br/produtos/fotos/429425/smartphone-samsung-galaxy-a14-4g-128gb-4gb-ram-octa-core-camera-tripla-de-50mp-tela-de-6-6-preto-sm-a145mzkrzto_1688750950_m.jpg' })
        product11.save!

      product12 = Product.new({ name: ' Motorola Moto G54
      ', price: 1500, description: 'Capture imagens incrivelmente nítidas mesmo em ambientes com pouca luz e grave vídeos fluidos com nossa câmera de 50 MP, equipada com Estabilização Óptica de Imagem (OIS), que corrige automaticamente qualquer movimento acidental ', stock: 10, category: 'Smartphones', user_id:2, photo_url: 'https://images.kabum.com.br/produtos/fotos/482431/smartphone-motorola-moto-g54-5g-256gb-8gb-ram-octa-core-camera-50mp-ois-tela-de-6-5-azul-pays0052br_1700686698_gg.jpg' })
        product12.save!

# 10.times do
#   product = Product.new({ name: 'Acessório', price: 15.00 , description: 'Acessório para celular', stock: 10, category: 'Acessórios', user_id:1 })
#   product.save!
# end

# 10.times do
#   product = Product.new({ name: 'Iphone', price: 2500.00, description: 'Smartphone super caro', stock: 5, category: 'Smartphones', user_id:1 })
#   product.save!
# end

# 10.times do
#   product = Product.new({ name: 'Notebook Gamer', price: 7600.00, description: 'Notebook para jogos', stock: 10, category: 'Notebooks', user_id:1 })
#   product.save!
# end

# 10.times do
#   product = Product.new({ name: 'Cadeira Gamer', price: 1300, description: 'Cadeira super maneira para gamers', stock: 30, category: 'Cadeiras', user_id:1 })
#   product.save!
# end
