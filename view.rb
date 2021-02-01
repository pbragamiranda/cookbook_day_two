class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name}: #{recipe.rating.to_s[0,3]}"
      puts "#{recipe.description}"
    end
  end

  def ask_user_for(stuff)
    puts "#{stuff.capitalize}?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_index
    puts "Index?"
    print "> "
    return gets.chomp.to_i - 1
  end

  def ask_for_keyword
    puts "What do you want to search?"
    print "> "
    return gets.chomp
  end
end
