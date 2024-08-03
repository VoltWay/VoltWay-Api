json.cars(@cars) do |car|
  json.set!("id", car.id)
  json.set!("car_make", car.car_make)
  json.set!("model", car.model)
  json.set!("battery_capacity", car.battery_capacity)
  json.set!("max_charging_power", car.max_charging_power)
  json.set!("charge_port", car.charge_port)
end