require_relative '../lib/input'

RSpec.describe Input do
  $stdin = File.open('./input-test-data/test_input.txt')

  describe '#check_in_degree_type' do
    let(:test) { Input.new }
    context 'when checking correct scale' do
      it { expect(test.check_in_degree_type('F')).to eq(true) }
      it { expect(test.check_in_degree_type('C')).to eq(true) }
      it { expect(test.check_in_degree_type('K')).to eq(true) }
    end
    context 'when checking incorrect scale' do
      it { expect(test.check_in_degree_type('D')).to eq(false) }
      it { expect(test.check_in_degree_type(123)).to eq(false) }
    end
    describe '#check_out_degree_type' do
      context 'when checking correct scale' do
        it { expect(test.check_out_degree_type('F')).to eq(true) }
        it { expect(test.check_out_degree_type('C')).to eq(true) }
        it { expect(test.check_out_degree_type('K')).to eq(true) }
        context 'when checking incorrect scale' do
          it { expect(test.check_out_degree_type('Z')).to eq(false) }
          it { expect(test.check_out_degree_type(256)).to eq(false) }
        end
      end
    end
    describe '#check_temperature' do
      context 'when checking incorrect temperature' do
        it { expect(test.check_temperature('Privet')).to eq(false) }
      end
      context 'when checking correct temperature' do
        it { expect(test.check_temperature('23')).to eq(true) }
      end
    end
    describe '#inp_temperature' do
      context 'when input incorrect temperature' do
        it { expect(test.inp_temperature).to eq('13') }
      end
    end
    describe '#inp_from_scale' do
      context 'when input incorrect source scale' do
        it { expect(test.inp_from_scale).to eq('C') }
      end
    end
    describe '#inp_to_scale' do
      context 'when input incorrect destination scale' do
        it { expect(test.inp_to_scale).to eq('F') }
      end
    end
  end
end
