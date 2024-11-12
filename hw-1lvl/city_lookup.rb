dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}


def get_city_names(cities)
  puts "Available cities:"
  cities.each_key { |name| puts name.capitalize }
end


def get_area_code(cities, city_name)
  cities[city_name.downcase]
end

loop do
  get_city_names(dial_book)

  puts "Enter the name of the city to get the area code (or type 'exit' to quit):"
  user_input = gets.chomp

  break if user_input.downcase == "exit"

  area_code = get_area_code(dial_book, user_input)

  if area_code
    puts "The area code for #{user_input.capitalize} is #{area_code}."
  else
    puts "City not found. Please check the spelling and try again."
  end
end
