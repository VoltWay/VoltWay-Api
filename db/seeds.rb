@carlist = {
    "Tesla": {
      "Model 3": {
        "battery_capacity": 57.5,
        "charging_port": "ccs",
        "max_charging_power": 170.0
        
      },
      "Model 3 Long Range Dual Motor": {
        "battery_capacity": 75.0,
        "charging_port": "ccs",
        "max_charging_power": 250.0
      },
      "Model 3 Performance": {
        "battery_capacity": 75.0,
        "charging_port": "ccs",
        "max_charging_power": 250.0
      },
      "Model Y": {
        "battery_capacity": 57.5,
        "charging_port": "ccs",
        "max_charging_power": 175.0
      },
      "Model Y Long Range Dual Motor": {
        "battery_capacity": 75.0,
        "charging_port": "ccs",
        "max_charging_power": 250.0
      },
      "Model Y Performance": {
        "battery_capacity": 75.0,
        "charging_port": "ccs",
        "max_charging_power": 250.0
      },
      "Model S Dual Motor": {
        "battery_capacity": 95.0,
        "charging_port": "ccs",
        "max_charging_power": 250.0
      },
      "Model S Plaid": {
        "battery_capacity": 95.0,
        "charging_port": "ccs",
        "max_charging_power": 250.0
      },
      "Model X Dual Motor": {
        "battery_capacity": 95.0,
        "charging_port": "ccs",
        "max_charging_power": 250.0
      },
      "Model X Plaid": {
        "battery_capacity": 95.0,
        "charging_port": "ccs",
        "max_charging_power": 250.0
      }
    },
    "Volkswagen": {
      "ID.7 Pro": {
        "battery_capacity": 77.0,
        "charging_port": "ccs",
        "max_charging_power": 190.0
      }
    },
    "BYD": {
      "Tang": {
        "battery_capacity": 86.4,
        "charging_port": "CHAdeMO",
        "max_charging_power": 120.0
      }
    }
  }.to_h


@carlist.each do |carmake_key, carmake|
  carmake.each do |model_key, model|
    Car.create!(car_make: carmake_key, model: model_key, battery_capacity: model[:battery_capacity], charge_port: model[:charging_port], max_charging_power: model[:max_charging_power])
  end
end

User.create!(first_name: "Max", last_name: "Mustermann", email: "max@gmail.com")