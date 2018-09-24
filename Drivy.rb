cars_data = [
 {
   "id" => 1,
   "price_per_day" => 2000,
   "price_per_km" => 10
 },
 {
   "id" => 2,
   "price_per_day" => 3000,
   "price_per_km" => 15
 }
]

rentals_data = [
  {
    "id" => 1,
    "car_id" => 2,
    "days" => 3,
    "kms" => 500
  },
  {
    "id" => 2,
    "car_id" => 1,
    "days" => 1,
    "kms" => 100
  },
  {
    "id" => 3,
    "car_id" => 1,
    "days" => 7,
    "kms" => 1200
  }
]

class Car

  def initialize(id, price_per_day, price_per_km)
    @id = id
    @price_per_day = price_per_day
    price_per_km = price_per_km
  end

  def to_s
   "Car: id:" + @id.to_s
  end

end

cars = []

cars_data.each do |car_hash|
  car = Car.new(car_hash["id"], car_hash["price_per_day"], car_hash["price_per_km"])
  cars = cars + [car] 
end

puts cars