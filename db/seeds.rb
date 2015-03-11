# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Кухни

cuisines = [
  [ 'Русская кухня', 'Самый вкусный борщ' ],
  [ 'Украинская кухня', 'Сало - это миленько' ],
  [ 'Итальянская кухня', 'Паста и пицца - наще все' ]
]

cuisines.each do |title, description|
  Cuisine.create(title: title, description: description)
end

# Рецепты

recipes = [
  [ 'Борщ', 'Лучшая добавка - майонез', 90, 'Средненько' ],
  [ 'Блинчики', 'Начиночки могут быть разные', 30, 'Легко' ],
  [ 'Омлет', 'Вкуснее яичницы', 15, 'Легко' ],
  [ 'Сало с чесноком', 'Можно еще хлебушком закусить', 10, 'Легко' ],
  [ 'Борщ с пампушками', 'Как борщ, только с пампушками', 120, 'Средненько' ],
  [ 'Пицца', 'Начинка - все, что осталось в холодильнике', 60, 'Средненько' ],
  [ 'Паста', 'Лапшеничка', 20, 'Легко' ]
]

recipes.each do |title, description, time, difficulty|
  Recipe.create(title: title, description: description, time: time, difficulty: difficulty)
end

# Типы блюд

dish_types = [
  [ 'Суп', 'Для затравки организма' ],
  [ 'Основное блюдо', 'То, чем можно наесться' ],
  [ 'Закуска', 'Еще менее сытная, чем суп' ],
  [ 'Десерт', 'Всегда остается напоследок' ]
]

dish_types.each do |title, description|
  DishType.create(title: title, description: description)
end

# Ингредиенты

ingredients = [
  [ 'Морковь', 'Оранжевая' ],
  [ 'Свекла', 'Сильно красит' ],
  [ 'Курица', 'Мяско птицы' ],
  [ 'Яйцо куриное', 'Фермерское' ],
  [ 'Мука пшеничная', 'Мелкодисперсная' ],
  [ 'Вода', 'Фильтрованная' ],
  [ 'Чеснок', 'Запах остается надолго' ],
  [ 'Перец болгарский', 'Сочный' ]
]

ingredients.each do |title, description|
  Ingredient.create(title: title, description: description)
end



