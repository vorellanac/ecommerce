# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
# seed category
category = Category.create(
			[
				{ name: 'DECO'},
				{ name: 'COCINA'},
				{ name: 'JARDIN'},
				{ name: 'MODA'},
				{ name: 'INFANTIL'}
				{ name: 'TOOLS'}
			]
		)
# seed product
Product.destroy_all
product = Product.create(
			[	
				{ name: 'Adornos', stock: 10, photo: 'picture', price: 1500, category: Category.find_by_name("DECO")},
				{ name: 'Vajilla', stock: 20, photo: 'picture', price: 2500, category: Category.find_by_name("COCINA")},
				{ name: 'Hamacas', stock: 30, photo: 'picture', price: 23000, category: Category.find_by_name("JARDIN")},
				{ name: 'Cinturon', stock: 20, photo: 'picture', price: 2500, category: Category.find_by_name("MODA")},
				{ name: 'Juguetes', stock: 20, photo: 'picture', price: 2500, category: Category.find_by_name("INFANTIL")},
				{ name: 'Herramientas', stock: 50, photo: 'picture', price: 7500, category: Category.find_by_name("TOOLS")},
			]
		)

