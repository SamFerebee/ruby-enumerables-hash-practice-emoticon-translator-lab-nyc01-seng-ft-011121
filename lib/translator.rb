require "yaml"
require "pry"

def load_library(path)
  emoji_hash = {}
  emoji_hash[:angel] = {:enlish => "O:)", :japanese => "☜(⌒▽⌒)☞"}
  emoji_hash[:angry] = {:english =>">:(" :japanese =>"ヽ(ｏ`皿′ｏ)ﾉ"}
  emoji_hash[:bored] = {:english => ":O" :japanese => "(ΘεΘ;)"}
  emoji_hash[:confused] = {}
  emoji_hash[:embarrassed] = {}
  emoji_hash[:fish] = {}
  emoji_hash[:glasses] = {}
  emoji_hash[:grinning] = {}
  emoji_hash[:happy] = {}
  emoji_hash[:kiss] = {}
  emoji_hash[:sad] = {}
  emoji_hash[:surprised] = {}
  emoji_hash[:wink] = {}
  emoji_hash[:get_emoticon] = {}
  emoji = YAML.load_file(path)
  emoji.each do |word, emojis|
    emoji_hash[:get_meaning][emojis[1]] = word
    emoji_hash[:get_emoticon][emojis[0]] = emojis[1]
  end
  emoji_hash
end

def get_japanese_emoticon(path, emoticon)
  emoji = load_library(path)
  if emoji[:get_emoticon].has_key?(emoticon)
    emoji[:get_emoticon][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emoji = load_library(path)
  if emoji[:get_meaning].has_key?(emoticon)
    emoji[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end