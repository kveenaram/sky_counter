require_relative '../lib/sky_counter.rb'

RSpec.describe SkyCounters do
  describe '.count_sky_letters' do
    it 'returns correct count for a string with multiple "S", "K", and "Y"' do
      result = SkyCounters.count_sky_letters('SKYsssKKYyy')
      expect(result).to eq({ 'S' => 1, 'K' => 3, 'Y' => 2 })
    end

    it 'returns correct count for a string with no "S", "K", or "Y"' do
      result = SkyCounters.count_sky_letters('abcdefghij')
      expect(result).to eq({ 'S' => 0, 'K' => 0, 'Y' => 0 })
    end

    it 'returns correct count for a string with mixed case "S", "K", and "Y"' do
      result = SkyCounters.count_sky_letters('Sky')
      expect(result).to eq({ 'S' => 1, 'K' => 0, 'Y' => 0 })
    end

    it 'returns correct count for an empty string' do
      result = SkyCounters.count_sky_letters('')
      expect(result).to eq({ 'S' => 0, 'K' => 0, 'Y' => 0 })
    end

    it 'returns correct count for a nil input' do
      result = SkyCounters.count_sky_letters(nil)
      expect(result).to eq({ 'S' => 0, 'K' => 0, 'Y' => 0 })
    end
  end
end
