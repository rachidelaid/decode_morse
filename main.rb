MORSE_MAP = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(character)
  MORSE_MAP[character]
end

def decode_word(word)
  msg_word = ''
  characters = word.split
  characters.each do |character|
    msg_word += decode_char(character)
  end
  msg_word
end
decode_word('-- -.--')

def decode(message)
  msg = ''
  words = message.split('   ')
  words.each do |word|
    msg += "#{decode_word(word)} "
  end
  print msg
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
