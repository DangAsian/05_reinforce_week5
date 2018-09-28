a = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

a.each.with_index do |row_value, row_index|
  row_value.each.with_index do |seat_value, seat_index|
    if seat_value == nil
      puts "Row #{row_index + 1} seat #{seat_index + 1} is free. Do you want to sit there? (y/n)"
      user_input = gets.chomp
        if user_input == "y"
          puts "What is your name?"
          name = gets.chomp
          row_value[seat_index] = name
          return puts a
          end
      end
    end
  end
