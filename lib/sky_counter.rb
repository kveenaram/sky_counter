class SkyCounters
  def self.count_sky_letters(input)
    counts = { 'S' => 0, 'K' => 0, 'Y' => 0 }
    return counts if input.nil?

    input.each_char do |char|
      counts[char] += 1 if counts.key?(char)
    end
    counts
  end
end