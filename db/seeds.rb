# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[
  "Daniel\nFor time:\n50 pull-ups\n400-meter run\n21 thrusters\n800-meter run\n21 thrusters\n400-meter run\n50 pull-ups\n\n♀ 65 lb\n♂ 95 lb\n\n\nWith heavy hearts we dedicate this workout to Army Sgt 1st Class Daniel Crabtree who was killed in Al Kut, Iraq on Thursday, June 8. To Daniel’s family and friends, we express our sorrow; to his wife, Kathy, and daughter, Mallory, we tearfully acknowledge your loss as the true cost of freedom. Fair winds, Daniel.\n\nFirst posted June 15, 2006.",
  "Murph\nFor time:\n1-mile run\n100 pull-ups\n200 push-ups\n300 squats\n1-mile run\n\n\n\nPartition the pull-ups, push-ups, and squats as needed. Start and finish with a mile run. If you’ve got a 20-lb vest or body armor, wear it.\n\nIn memory of Navy Lieutenant Michael Murphy, 29, of Patchogue, N.Y., who was killed in Afghanistan June 28, 2005.\n\nThis workout was one of Mike’s favorites and he’d named it “Body Armor.” From here on it will be referred to as “Murph” in honor of the focused warrior and great American who wanted nothing more in life than to serve this great country and the beautiful people who make it what it is.\n\nFirst posted Aug. 18, 2005.",
  "JT\n21-15-9 reps for time of:\nHandstand push-ups\nRing dips\nPush-ups\n\n\n\nIn honor of Petty Officer 1st Class Jeff Taylor, 30, of Midway, West Virginia, who was killed on June 28, 2005, while conducting combat operations in the vicinity of Asadabad, Afghanistan, in Kumar Province.\n\nHe is survived by his father, John; mother, Carrie; and wife, Erin.\n\nFirst posted July 6, 2005."
].each do |workout_text|
    Workout.find_or_create_by!(workout: workout_text)
  end
