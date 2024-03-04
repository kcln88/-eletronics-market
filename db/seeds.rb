# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"
p "starting the Seed!"
user = User.new({ first_name: 'joao', last_name: 'silva', address: 'rua jerico 193', phone: '999999999', email: 'joao@email.com', password: '123123' })
user.save!
user2 = User.new({ first_name: 'maria', last_name: 'silva', address: 'rua jerico 193', phone: '999999999', email: 'maria@email.com', password: '123123' })
user2.save!
user3 = User.new({ first_name: 'pedro', last_name: 'silva', address: 'rua jerico 193', phone: '999999999', email: 'pedro@email.com', password: '123123' })
user3.save!
# file16 = URI.open("https://www.fastshop.com.br//wcsstore/FastShopCAS/images/catalog/AEMPV03BRARXO_PRD/AEMPV03BRARXO_PRD_447_1.jpeg")
#   product16 = Product.new(name: 'iPhone 14 Apple (128GB) Roxo', price_cents: 3000, description: 'O iPhone 14 tem o sistema de câmera dupla mais impressionante em um iPhone para fazer fotos espetaculares em pouca e muita luz. E Detecção de Acidente1, um recurso essencial de segurança capaz de identificar se você sofreu um acidente grave de carro e ligar para a emergência.', stock: 10, category: 'Smartphones', user_id:1)
#   product16.photo.attach(io: file16, filename: "product16.png", content_type: "image/png")
#   product16.save!
  # ACESSORIOS
  file = URI.open("https://images.kabum.com.br/produtos/fotos/153395/fone-de-ouvido-sem-fio-philips-true-wireless-bluetooth-preto-tat1235bk-97_1617798935_gg.jpg")
  product = Product.new(name: 'Fone Wireless', price_cents: 30000, description: 'Microfone embutido com cancelamento de eco para um áudio nítido. Chega de ouvir aquele eco chato enquanto você fala ao telefone. Com o cancelamento de eco acústico, as conversas ficam nítidas e sem interferências', stock: 20, category:'Acessórios', user_id:1)
  product.photo.attach(io: file, filename: "product.png", content_type: "image/png")
  product.save!
  file2 = URI.open("https://images.kabum.com.br/produtos/fotos/421825/caixa-de-som-portatil-jbl-go3-bluetooth-4-2-w-rms-a-prova-d-agua-ate-5-hrs-de-bateria-verde-jblgo3ecogrn_1687349792_m.jpg")
  product2 = Product.new(name: 'Caixa Wireless', price_cents: 50000, description: 'Com um novo design inovador e ecologicamente correto, a Caixa de Som Portátil JBL GO3 tem o mesmo desempenho notável do áudio que você já conhece. Com um acessório que não pode faltar em seu próximo passeio', stock: 10, category: 'Acessórios', user_id:2)
  product2.photo.attach(io: file2, filename: "product2.png", content_type: "image/png")
  product2.save!
  file3 = URI.open("https://m.media-amazon.com/images/I/51vqYPmotDL._AC_UL480_FMwebp_QL65_.jpg")
  product3 = Product.new(name: 'Phone charger', price_cents: 3989, description: 'The 20W USB-C port PD fast adapter USB C wall charger and 6ft usb c to ligh.tning cable, which can reach up to 3X faster than the original 5W charger.', stock: 9, category: 'Acessórios', user_id:2)
  product3.photo.attach(io: file3, filename: "product3.png", content_type: "image/png")
  product3.save!
  file4 = URI.open("https://m.media-amazon.com/images/I/61AsLefMRqL._AC_SX466_.jpg")
  product4 = Product.new(name: 'Pacote com 2 cabos USB C de 3 m', price_cents: 1989, description: 'Carregamento rápido 3A, cabo de carregamento USB A para tipo C, trançado compatível com Samsung Galaxy A10e A20 A50 A51 A71, S20 S10 S9 S8 Plus S10E, Note 20 10 9 8, Moto G7 G8.', stock: 17, category: 'Acessórios', user_id:2)
  product4.photo.attach(io: file4, filename: "product4.png", content_type: "image/png")
  product4.save!
  # CADEIRAS
  file5 = URI.open("https://m.media-amazon.com/images/I/51V-gfuS7HL._AC_SL1000_.jpg")
  product5 = Product.new(name: 'Cadeira Gamer Moob Reclinável GT Racer', price_cents: 130000, description: 'A Cadeira Gamer Moob GT Racer combina estilo e ergonomia para proporcionar o máximo conforto durante suas sessões de jogo.', stock: 30, category: 'Cadeiras', user_id:1)
  product5.photo.attach(io: file5, filename: "product5.png", content_type: "image/png")
  product5.save!
  file6 = URI.open("https://m.media-amazon.com/images/I/61MDSAgw4SL._AC_SX679_.jpg")
  product6 = Product.new(name: 'HAVIT CADEIRA GAMER ', price_cents: 130000, description: 'A Cadeira Gamer HAVIT combina estilo e ergonomia para proporcionar o máximo conforto durante suas sessões de jogo.', stock: 30, category: 'Cadeiras', user_id:1)
  product6.photo.attach(io: file6, filename: "product6.png", content_type: "image/png")
  product6.save!
  file7 = URI.open("https://images.kabum.com.br/produtos/fotos/471934/cadeira-gamer-kbm-gaming-cg500-preta-e-roxa-com-almofadas-descanso-para-pernas-retratil-reclinavel-kgcg500ptrx_1700677396_gg.jpg")
  product7 = Product.new(name: 'CADEIRA GAMER MANCER', price_cents: 130000, description: 'Para quem passa horas imerso no mundo dos jogos, uma cadeira confortável e de qualidade é o mínimo.', stock: 30, category: 'Cadeiras', user_id:1)
  product7.photo.attach(io: file7, filename: "product7.png", content_type: "image/png")
  product7.save!
  file8 = URI.open("https://static.mundomax.com.br/produtos/72994/550/1.webp")
  product8 = Product.new(name: 'Thunderx3 Tc3 Cadeira Gamer Tc3 All White, Branca', price_cents: 130000, description: 'Para quem passa horas imerso no mundo dos jogos, uma cadeira confortável e de qualidade é o mínimo.', stock: 30, category: 'Cadeiras', user_id:1)
  product8.photo.attach(io: file8, filename: "product8.png", content_type: "image/png")
  product8.save!
  # NOTEBOOKS
  file9 = URI.open("https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/inspiron-notebooks/15-3520/media-gallery/notebook-inspiron-15-3520-black-gallery-10.psd?fmt=png-alpha&pscan=auto&scl=1&hei=402&wid=606&qlt=100,1&resMode=sharp2&size=606,402&chrss=full")
  product9 = Product.new(name: 'Notebook Inspiron 15', price_cents: 219900, description: 'Processador 12ª geração Intel® Core™ i3-1215U (6-core, cache de 10MB, até 4.4GHz)', stock: 30, category: 'Notebooks', user_id: 1)
  product9.photo.attach(io: file9, filename: "product9.png", content_type: "image/png")
  product9.save!
  file10 = URI.open("https://a-static.mlcdn.com.br/800x560/notebook-samsung-galaxy-book-2-intel-core-i5-8gb-ssd-256gb-156-full-hd-windows-11-np550xed-kf2br/magazineluiza/238037000/45853b41ecada0baf03da053be05e526.jpg")
  product10 = Product.new(name: 'Notebook Samsung Galaxy Book2r', price_cents: 220467, description: 'Intel Core i3-1215U, Windows 11 Home, 8GB, 256GB SSD, 15.6 Full HD LED 15.6', stock: 27, category: 'Notebooks', user_id:1)
  product10.photo.attach(io: file10, filename: "product10.png", content_type: "image/png")
  product10.save!
  file11 = URI.open("https://vaiobr.vtexassets.com/arquivos/ids/160338-800-800?v=638025721328630000&width=800&height=800&aspect=true")
  product11 = Product.new(name: 'Notebook VAIO®', price_cents: 249969, description: 'FE15 AMD® Ryzen 5 Linux 16GB 512GB SSD Full HD - Prata Titânio', stock: 63, category: 'Notebooks', user_id:2)
  product11.photo.attach(io: file11, filename: "product11.png", content_type: "image/png")
  product11.save!
  file12 = URI.open("https://www.fastshop.com.br//wcsstore/FastShopCAS/images/catalog/UXEJ1756W_PRD/UXEJ1756W_PRD_447_1.jpeg")
  product12 = Product.new(name: 'Notebook Asus Vivobook 15', price_cents: 130000, description: 'Intel Pentium Gold 4GB 128GB SSD Tela 15,6" e Windows 11 Home X1500EA-EJ4242WS', stock: 36, category: 'Notebooks', user_id:1)
  product12.photo.attach(io: file12, filename: "product12.png", content_type: "image/png")
  product12.save!
  #CELULARES
  file13 = URI.open("https://images.kabum.com.br/produtos/fotos/429425/smartphone-samsung-galaxy-a14-4g-128gb-4gb-ram-octa-core-camera-tripla-de-50mp-tela-de-6-6-preto-sm-a145mzkrzto_1688750950_m.jpg")
  product13 = Product.new(name: 'Celular a14', price_cents: 50000, description: 'Com bateria de 5.000 mAh, a Inovação do Smartphone Samsung Galaxy A14 não termina aí. Com tecnologia 4G, o Galaxy A14 que permite a transferência de dados e excelente navegação na internet, além de conectividade Wi-fi e GPS', stock: 10, category: 'Smartphones', user_id:2)
  product13.photo.attach(io: file13, filename: "product13.png", content_type: "image/png")
  product13.save!
  file14 = URI.open("https://images.kabum.com.br/produtos/fotos/482431/smartphone-motorola-moto-g54-5g-256gb-8gb-ram-octa-core-camera-50mp-ois-tela-de-6-5-azul-pays0052br_1700686698_gg.jpg")
  product14 = Product.new(name: ' Motorola Moto G54
  ', price_cents: 150000, description: 'Capture imagens incrivelmente nítidas mesmo em ambientes com pouca luz e grave vídeos fluidos com nossa câmera de 50 MP, equipada com Estabilização Óptica de Imagem (OIS), que corrige automaticamente qualquer movimento acidental ', stock: 10, category: 'Smartphones', user_id:2)
  product14.photo.attach(io: file14, filename: "product14.png", content_type: "image/png")
  product14.save!
  file15 = URI.open("https://www.fastshop.com.br//wcsstore/FastShopCAS/images/catalog/AEMLPF3BRAPTO_PRD/AEMLPF3BRAPTO_PRD_447_1.jpeg")
  product15 = Product.new(name: 'iPhone 13', price_cents: 150000, description: 'iPhone 13. O sistema de câmera dupla mais avançado em um iPhone. Chip A15 Bionic com velocidade impressionante. Um grande salto em bateria. Design resistente. 5G ultrarrápido* . E tela Super Retina XDR mais brilhante.', stock: 14, category: 'Smartphones', user_id:2)
  product15.photo.attach(io: file15, filename: "product15.png", content_type: "image/png")
  product15.save!
  file16 = URI.open("https://www.fastshop.com.br//wcsstore/FastShopCAS/images/catalog/AEMPV03BRARXO_PRD/AEMPV03BRARXO_PRD_447_1.jpeg")
  product16 = Product.new(name: 'iPhone 14 Apple (128GB) Roxo', price_cents: 150000, description: 'O iPhone 14 tem o sistema de câmera dupla mais impressionante em um iPhone para fazer fotos espetaculares em pouca e muita luz. E Detecção de Acidente1, um recurso essencial de segurança capaz de identificar se você sofreu um acidente grave de carro e ligar para a emergência.', stock: 10, category: 'Smartphones', user_id:2)
  product16.photo.attach(io: file16, filename: "product16.png", content_type: "image/png")
  product16.save!
  p " Seed Finished!"
