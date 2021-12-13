require_relative '../lib/converter'

RSpec.describe Converter do
  describe '#convert' do
    context 'when from C to F' do
      it { expect(Converter.new.convert(35, 'C', 'F')).to eq 95 }
    end

    context 'when from C to K' do
      it { expect(Converter.new.convert(35, 'C', 'K')).to eq 308.15 }
    end

    context 'when from K to C' do
      it { expect(Converter.new.convert(35, 'K', 'C').round(2)).to eq(-238.15) }
    end

    context 'when from K to F' do
      it { expect(Converter.new.convert(35, 'K', 'F')).to eq(-396.67) }
    end

    context 'when from F to C' do
      it { expect(Converter.new.convert(35, 'F', 'C').round(2)).to eq 1.67 }
    end

    context 'when from F to K' do
      it { expect(Converter.new.convert(35, 'F', 'K').round(2)).to eq 274.82 }
    end
  end
end
