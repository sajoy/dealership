require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
   Vehicle.clear()
  end

  describe("#make") do
    it("returns the make of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe("#model") do
    it("returns the model of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(test_vehicle.model()).to(eq("Prius"))
    end
  end

  describe("#year") do
    it("returns the year of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

 describe("#save") do
   it("saves the given car to an array") do
     test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
     test_vehicle.save()
     expect(Vehicle.all()).to(eq([test_vehicle]))
   end
 end

 describe(".all") do
   it("is empty at first") do
     expect(Vehicle.all()).to(eq([]))
   end
 end

 describe(".clear") do
   it("empties out all of the saved vehicles") do
     Vehicle.new("Toyota", "Prius",  2000).save()
     Vehicle.clear()
     expect(Vehicle.all()).to(eq([]))
   end
 end

end
