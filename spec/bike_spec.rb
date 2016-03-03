require 'bike'

describe Bike do
	it { expect(subject).to respond_to :working? }


	it 'expects bikes to be working' do
		expect(subject.working?).to eq true
	end

	it 'can report a bike as broken when I return it.' do
	 	subject.report_broken
		expect(subject.broken).to eq true
	end


end
