require './temp_converter'
require './temp_check'

RSpec.describe TempCheck do
  describe '.temp_check' do
    context 'check_number_true_positive' do
      it { expect(TempCheck.new('30', 'C', 'K').number?('30')).to eq true }
    end
    context 'check_number_true_zero' do
      it { expect(TempCheck.new('0', 'C', 'K').number?('0')).to eq true }
    end
    context 'check_number_true_negative' do
      it { expect(TempCheck.new('-10', 'C', 'K').number?('0')).to eq true }
    end
    context 'check_number_false' do
      it { expect(TempCheck.new('@#$sdfmk', 'C', 'K').number?('123@qq')).to eq false }
    end
    context 'check_scale_true_lowercase' do
      it { expect(TempCheck.new('30', 'c', 'K').check_scale?('c')).to eq true }
    end
    context 'check_scale_true_uppercase' do
      it { expect(TempCheck.new('30', 'C', 'K').check_scale?('C')).to eq true }
    end
    context 'check_scale_false' do
      it { expect(TempCheck.new('30', 'Cc', 'K').check_scale?('Cc')).to eq false }
    end
  end
end

RSpec.describe TempConversion do
  describe '.temperature' do
    context 'from_C_to_F' do
      it { expect(TempConversion.new('30', 'C', 'K').converse_c).to eq 303.15 }
    end
    context 'from_C_to_K' do
      it { expect(TempConversion.new('30', 'C', 'F').converse_c).to eq 86 }
    end
    context 'from_K_to_C' do
      it { expect(TempConversion.new('1241', 'k', 'c').converse_k).to eq 967.85 }
    end
    context 'from_K_to_F' do
      it { expect(TempConversion.new('-355', 'K', 'f').converse_k).to eq(-1098.67) }
    end
    context 'from_F_to_C' do
      it { expect(TempConversion.new('76', 'f', 'C').converse_f).to eq 24.44 }
    end
    context 'from_F_to_K' do
      it { expect(TempConversion.new('100', 'F', 'K').converse_f).to eq 310.93 }
    end
  end
end
