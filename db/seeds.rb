# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Image.delete_all
Image.reset_pk_sequence
Image.create([

               {name: 'P.-A. Renoir, Бал в Мулен де ла Галетт'},
               {name: 'P.-A. Renoir, Букет'},
               {name: 'P. Picasso, Фабрика'},
               {name: 'H. Matiss, Балерина'},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

               {name: "-----"},      # 1 Нет темы
               {name: "Какое из произведений художника О.Ренуара наилучшим образом характеризует его творчество?"},      # 2
               {name: "Какое из произведений художника П.Пикассо наилучшим образом характеризует его творчество?"},      # 3
               {name: "Какое из произведений художника А.Матисса наилучшим образом характеризует его творчество?"},      # 4
             ])
