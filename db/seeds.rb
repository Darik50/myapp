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

               {name: 'Обед', file: 'Obed.jpg', theme_id: 1},
               {name: 'Дрон', file: 'Drone.jpg', theme_id: 2},
               {name: 'Число', file: '7.jpg', theme_id: 2},
               {name: 'Лист', file: 'List.jpg', theme_id: 4},
               {name: 'Лого', file: 'Logo.jpg', theme_id: 4},
               {name: 'Ноутбук', file: 'Nout.jpg', theme_id: 2},
               {name: 'Нефть', file: 'Oil.jpg', theme_id: 3},
               {name: 'Скидка', file: 'Sales.jpg', theme_id: 4},
               {name: 'Дым', file: 'Smoke.jpg', theme_id: 3},
               {name: 'Чай', file: 'Tea.jpg', theme_id: 1},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

               {name: "Что лучше попить чай или съеть обед?"},      # 1 Нет темы
               {name: "На какой из картинок изображено число?"},      # 2
               {name: "Что опаснее дым или нефть?"},      # 3
               {name: "В какой магазин бы ты пошел со скидкой или с красивым лого?"},      # 4
             ])
User.delete_all
User.reset_pk_sequence
User.create([

              {name: "Gena", email: "gena@gmail.com"},
              {name: "Dima", email: "dima@gmail.com"},
              {name: "Olga", email: "olga@gmail.com"},
              {name: "Alina", email: "alina@gmail.com"},
              {name: "Sanya", email: "sanya@gmail.com"},
              {name: "Ivan", email: "ivan@gmail.com"},
            ])

