# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attitude.create(name: "Proactividad frente al trabajo")
Attitude.create(name: "Colaboración con compañeros para alcanzar objetivos comunes")
attitude_1 = Attitude.create(name: "Perseverancia ante el esfuerzo intelectual")

Ability.create(name: "Comprensión de textos literarios difíciles")
Ability.create(name: "Lectura de partituras")
Ability.create(name: "Coordinación física de brazos y piernas")
ability_1 = Ability.create(name: "Planteamiento de problemas cotidianos mediante ecuaciones")
Ability.create(name: "Ubicación de las diferentes regiones de Chile en un mapa")

previous_learning_1 = PreviousLearning.create(title: "Operaciones básicas con fracciones",
content: "Suma, resta, multiplicación y división de fracciones",
generic_activity: "Control de 10 ejercicios",
achievement_indicator: "Nota 5.5 o superior", estimated_time: 20)

previous_learning_2 = PreviousLearning.create(title: "Ecuaciones de primer grado",
content: "Planteamiento y resolución de ecuaciones de primer grado con una incógnita",
generic_activity: "Control de 10 ejercicios",
achievement_indicator: "Nota 5.5 o superior", estimated_time: 15)


unit_plan_1 = UnitPlan.create(title: "Sistemas de ecuaciones lineales",
objective: "Desarrollar habilidades de razonamiento que ayuden al alumno a plantear problemas
de la vida real en forma de sistemas de ecuaciones lineales",total_hours_unit: 40)

unit_plan_1.previous_learnings << previous_learning_1
unit_plan_1.previous_learnings << previous_learning_2
unit_plan_1.abilities << ability_1
unit_plan_1.attitudes << attitude_1
