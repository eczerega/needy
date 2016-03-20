# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.where(:email => 'admin@example.com').first_or_create
admin.password = 'admin'
admin.password_confirmation = 'admin'
admin.first_name = 'My'
admin.last_name = 'Name'
admin.save
admin.slug = nil
admin.save
admin.update_attribute :active, true
admin.update_attribute :admin, true

User.create(:email => "eczec1@gmail.com", :password => "asdasdasd",:password_confirmation => "asdasdasd")

categories = [
'Ambiental',
'Energía',
'Social',
'Comodidad',
'Salud',
'Economía',
'Ocio',
'Tecnología',
'Educación',
'Legal',
'Obras públicas',
'Seguridad',
'Empresas',
'Animal',
'Cultura',
'Política',
'Deportes'
]

categories.each do |category|
	Category.create(:name => category)
end

names = [ "Una necesidad mala", "Una necesidad buena", "cosas malas que pasan",
"donde esta elisa", "Mi perro me mordio", "como hacemos para tener relaciones", "Hola bebe",
"Sugar reeca", "o yea yea", "no lo creo pero es verdad", "algunas caca huelen mal", "comer pajas con caca", "pipi malo", "mandar mensajes gratis", "estoy chato",
"needy culiao", "que wea weon revisa las cosa", "mas labia para garchar", "Me gusta el poto" ]

100.times do
	@need = SocialsNeed.create(:name => names[Random.new.rand(16).to_i], :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", :category_id => Random.new.rand(1..17).to_i, :latitude=>"Dead Valley", :user_id=>1)
	SocialsNeedImage.create(:image_content => 'http://biodiv.org.ar/wp-content/themes/fearless/images/missing-image-640x360.png', :socials_need_id => @need.id)
end

