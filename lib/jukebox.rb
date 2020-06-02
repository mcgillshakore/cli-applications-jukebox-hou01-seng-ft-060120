songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

<<<<<<< HEAD

def exit_jukebox
  puts "Goodbye"
end
def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if songs.include?(user_input)
    puts "Playing #{user_input}"
    return
  end
  user_input = user_input.to_i
  if user_input >= 1 && user_input <= songs.length
    puts "Playing #{songs[user_input - 1]}"
  else
    puts "Invalid input, please try again."
  end
end
=======
def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  song_number = user_input.to_i - 1
  if (0..songs.length) === song_number
    puts "Playing #{find_song_by_number(songs, song_number)}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end
def find_song_by_number(songs, user_input)
  songs.each_with_index do |song, index|
    if index == user_input
      return song
    end
  end
  return nil
end
def exit_jukebox
  puts "Goodbye"
end
>>>>>>> 8396e0792b758aad27252756c9954a42e700397f

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  case user_input
  when 'exit'
    exit_jukebox
  when 'help'
    help
  when 'list'
    list(songs)
  when 'play'
    play(songs)
  end
end
