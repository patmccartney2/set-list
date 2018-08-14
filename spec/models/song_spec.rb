RSpec.describe Song do
  describe 'Class Methods' do
    describe '.total_play_count' do
      it 'returns total play counts for all songs' do
        Song.create(title: 'Song 1', length: 100, play_count: 4)
        Song.create(title: 'Song 2', length: 200, play_count: 5)
        result = Song.total_play_count

        expect(result).to eq(9)
      end
    end
    describe '.average_play_count' do
      it 'returns average play counts for all songs' do
        Song.create(title: 'Song 1', length: 100, play_count: 4)
        Song.create(title: 'Song 2', length: 200, play_count: 8)
        result = Song.average_play_count

        expect(result).to eq(6)
      end
    end
  end
  describe 'Validations' do
    it 'is invalid without a title' do
      song = Song.create(length: 100, play_count: 0)

      expect(song).to_not be_valid
    end
    it 'is invalid without a length' do
      song = Song.create(title: 'Song 1', play_count: 0)

      expect(song).to_not be_valid
    end
  end
end
