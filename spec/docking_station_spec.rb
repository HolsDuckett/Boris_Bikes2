require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  # it "should release bike" do
  #   DockingStation.new respond_to(release_bike)
  #   end
  it "releases working bikes" do
    bike = subject.release_bike
    #creates a varaible from the return value of the method release_bike of an instance of
    #the docking class
    expect(bike).to be_working
    #checks impliciltly that bike is a member of the Bike class.
    # If it wasnt it throw an error as working? is a method defined within the Bike class
    #Predicate syntax => be_working = expect(working?).to eq true
  end

# Long version of test for above
  # it "should get a bike" do
  #   docking_station = DockingStation.new
  #   bike = docking_station.release_bike
  #   expect(bike).to be_a Bike
  #   #checking to see if its an instance of the class bike
  # end
  #
  # it "should check bike is working" do
  #   docking_station = DockingStation.new
  #   bike = docking_station.release_bike
  #   expect(bike.working?).to eq true
  #   #checking to see if bike.working equals to true
  # end
  it "should dock bike in docking station" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq @bike
  end




end

# Add a test to your DockingStation specification that a) gets a bike, and then b) expects the bike to be working
