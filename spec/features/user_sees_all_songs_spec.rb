RSpec.describe 'Song index page' do
  context 'shows song details' do
    it 'should show all song names' do
      playlist = Playlist.create(name:'Playlist 1')
      song_1 = playlist.songs.create(title:'Song 1', length: 100)
      song_2 = Song.create(title: 'Song 2', length: 200)

      visit '/songs'

      expect(page).to have_content(song_1.title)
      expect(page).to have_content(song_2.title)
    end
  end
end
