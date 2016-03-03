require 'dockingstation'

describe DockingStation do

	let(:bike) {double :bike, broken: false}
	let(:broken_bike) {double :bike, broken: true}

	it {expect(subject).to respond_to :release_bike }

	it 'should raise an error when no bikes available' do
		expect {subject.release_bike}.to raise_error('No bikes available')
	end

	it 'should raise an error when station is full' do
		subject.capacity.times{subject.dock(bike)}
		expect {subject.dock(bike) }.to raise_error('Station is full')
	end

	it 'checks whether release_bike gets a bike' do
		subject.dock(bike)
		expect(subject.release_bike).to eq (bike)
	end

	it 'should not release broken bikes' do
		 subject.dock(broken_bike)
		 expect { subject.release_bike}.to raise_error('No bikes available')
	end

	it 'accepts all bikes' do
		subject.dock(bike)
		subject.dock(broken_bike)
		expect(subject.bikes).to eq([bike, broken_bike])
	end

end
