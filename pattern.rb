# value pattern
# Like a basic case statement, substituting "when" with "if".
def match_a_string(name)
  case name
    in "ruby"
      puts "https://www.ruby-lang.org/en/"
    in "python"
      puts "https://www.python.org/"
    in "elixir"
      puts "https://elixir-lang.org/"
    else
      puts "no match"
  end
end

#match_a_string "elixir"


# Match on any element of an array, or multiple elements, and assign variables
def match_an_array(lang)
  case lang
    in ["ruby", "2.7.0"]
      puts "This Ruby version supports pattern matching, give it a try!"
    in ["ruby", version]
      puts "This Ruby version (#{version}) does not support pattern matching."
    in ["elixir", _]
      puts "Elixir has supported pattern matching from the start thanks to the Erlang VM."
    in [unsupported_lang, _]
      puts "Sorry, I don't know if #{unsupported_lang} supports pattern matching."
    else
      puts "no match"
  end
end

#match_an_array ["ruby", "1.8.7"]
#match_an_array ["ruby", "1.9.2"]
#match_an_array ["ruby", "2.7.0"]
#
#match_an_array ["elixir", "1.0.0"]
#
#match_an_array ["ada", "2012"]


# Variable pattern - ^ operator, same as Exlixir pin
def match_with_existing_variable(lang)
  language_name = "ruby"

  case lang
    in "Erlang"
      puts "Hello Joe, system working."
    in ^language_name
      puts "Ruby? I hear it doesn't scale."
    else
      puts "Sorry, don't know that one"
  end
end

language_name = "PHP"
#match_with_existing_variable("ruby")
# What happens without the ^ ?


# Alternative pattern
# Match if any patterns match
def match_multiple(language)
  case language
    in "C" | "C++" | "Elm" | "Go" | "Kotlin" | "Rust" | "Swift"
      puts "#{language} is a statically typed language"
    in "Perl" | "JavaScript" | "Ruby" | "Lua"
      puts "#{language} is a dynamic language"
  end
end

#match_multiple("Rust")
#match_multiple("MATLAB")


# As pattern
# Using the hash rocket to bind the variable if there's a match
def not_so_useful_match_as(x)
  case x
    in 0..5 => little_number
      puts "#{little_number} is a pretty small number"
    in String => string
      puts "#{string} is a string"
    in Hash => hash
      puts "#{hash} is a hash"
  end
end

#not_so_useful_match_as(3)
# What's the value of this style?
# Why not use the case variable?

def destructuring_match_as(environment_reading)
  case environment_reading
    in [:ok, ["CO2", _, "PM2.5", _] => air_quality]
      puts "Acceptable air reading: #{air_quality}"
    in [:warning, ["CO2", _, "PM2.5", _] => air_quality]
      puts "Dangerous air reading: #{air_quality}"
    in [:ok, ["Temperature", _, "Humidity", _] => weather]
      puts "Weather update: #{weather}"
  end
end

#destructuring_match_as([:warning, ["CO2", 500, "PM2.5", 95]])
# Potentially useful for more complex objects

