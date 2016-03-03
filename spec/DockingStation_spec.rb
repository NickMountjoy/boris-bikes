require 'dockingstation'

describe DockingStation do
	it {expect(subject).to respond_to :release_bike }

	it 'should raise an error when no bikes available' do
		expect {subject.release_bike}.to raise_error('No bikes available')
	end

	it 'should raise an error when station is full' do
		subject.capacity.times{subject.dock(double(:bike))}
		expect {subject.dock double(:bike)}.to raise_error('Station is full')
	end

	it 'checks whether release_bike gets a bike' do
		bike = double(:bike)
		subject.dock(bike)
	  expect(subject.release_bike).to eq (bike)
	end

	it 'should not release broken bikes' do
		 bike = double(:bike)
		 bike.report_broken
		 subject.dock(bike)
		 expect { subject.release_bike}.to raise_error('No bikes available')
	end

	it 'accepts all bikes' do
		bike = double(:bike)
		broken_bike = double(:bike)
		broken_bike.report_broken
		subject.dock(bike)
		subject.dock(broken_bike)
		expect(subject.bikes).to eq([bike, broken_bike])
	end

end
