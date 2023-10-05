# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Machine.create([
  { name: 'Car (gasoline)', yearly_co2_kg: 4.6 },
  { name: 'Car (electric)', yearly_co2_kg: 1.8 }
  ])

Activity.create([
  { name: '1 hour of commercial flight', co2_kg: 90 },
  { name: '1 hour of commercial flight', co2_kg: 90 },
  { name: '1 serving of Beef (100Gr)', co2_kg: 15.5 },
  { name: '1 serving of Lamb', co2_kg: 5.84 },
  { name: '1 serving of Prawns', co2_kg: 4.07 },
  { name: '1 serving of Cheese', co2_kg: 2.79 },
  { name: '1 serving of Pork', co2_kg: 2.4 },
  { name: '1 serving of Chicken', co2_kg: 1.82 },
  { name: '1 serving of Fish', co2_kg: 1.34 },
  { name: '1 serving of Dark Chocolate Bar', co2_kg: 0.95 },
  { name: '1 serving of Eggs', co2_kg: 0.53 },
  { name: '1 serving of Tomato', co2_kg: 0.32 },
  { name: '1 serving of Berries', co2_kg: 0.22 },
  { name: '1 serving of Rice', co2_kg: 0.16 },
  { name: '1 serving of Banana', co2_kg: 0.11 },
  { name: '1 serving of Tofu', co2_kg: 0.08 },
  { name: '1 serving of Apple', co2_kg: 0.06 },
  { name: '1 serving of Brassicas (Cabbage, Kale etc)', co2_kg: 0.05 },
  { name: '1 serving of Nuts (Mixed)', co2_kg: 0.05 },
  { name: '1 serving of Orange', co2_kg: 0.05 },
  { name: '1 serving of Potatoes', co2_kg: 0.05 },
  { name: '1 serving of Root Vegetables (Carrot etc)', co2_kg: 0.04 }
])
