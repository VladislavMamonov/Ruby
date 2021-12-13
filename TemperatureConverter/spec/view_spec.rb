require_relative '../lib/view'

RSpec.describe View do
  let(:view) { View.new }
  describe '#welcome_text' do
    it 'print Temperature converter' do
      expect do
        view.welcome_text
      end.to output("Temperature converter\n").to_stdout
    end
  end
  describe '#enter_value_text' do
    it 'print Please, enter temperature value' do
      expect do
        view.enter_value_text
      end.to output("Please, enter temperature value: \n").to_stdout
    end
  end
  describe '#from_scale_text' do
    it 'print Enter from [C/F/K]' do
      expect do
        view.from_scale_text
      end.to output("Enter from [C/F/K]: \n").to_stdout
    end
  end
  describe '#to_scale_text' do
    it 'print Enter to [C/F/K]' do
      expect do
        view.to_scale_text
      end.to output("Enter to [C/F/K]: \n").to_stdout
    end
  end
  describe '#quit_program' do
    it 'print press the key' do
      expect do
        view.quit_program
      end.to output("Press \"q\" to exit the program or something else to continue\n").to_stdout
    end
  end
end
