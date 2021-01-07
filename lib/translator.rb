require "yaml"
require "pry"

def load_library(path)
  emoji_hash = {
    "angel" => {:english => "O:)", :japanese => "☜(⌒▽⌒)☞"},
    "angry" => {:english =>">:(", :japanese =>"ヽ(ｏ`皿′ｏ)ﾉ"},
    "bored" => {:english => ":O", :japanese => "(ΘεΘ;)"},
    "confused" => {:english => "%)", :japanese => "(゜.゜)"},
    "embarrassed" => {:english => ":$" , :japanese => "(#^.^#)"},
    "fish" => {:english => "><>", :japanese =>"゜))))彡"},
    "glasses" => {:english => "8D", :japanese => "(^0_0^)"},
    "grinning" => {:english => "=D", :japanese => "(￣ー￣)"},
    "happy" => {:english =>":)", :japanese => "(＾ｖ＾)"},
    "kiss" => {:english =>   - ":*", :japanese => "(*^3^)/~☆"},
    "sad" => {:english =>":'(", :japanese => "(Ｔ▽Ｔ)"},
    "surprised" => {:english => ":o", :japanese => "o_O"},
    "wink" => {:english =>";)", :japanese => "(^_-)"}
  }
  emoji_hash
end

def get_english_meaning(path, emoticon)
  emoji = load_library(path)
  if emoji.has_value?(emoticon)
    emoji[emoticon][:english]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_japanese_emoticon(path, emoticon)
  emoji = load_library(path)
  if emoji.has_key?(emoticon)
    emoji[emoticon][:japanese]
  else
    return "Sorry, that emoticon was not found"
  end
end

