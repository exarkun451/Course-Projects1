Line_width = 40
str = "Table of Contents"
puts str.center(Line_width)
str = "Chapter 1: Getting Started"
str_2 = "page 1"
puts (str.ljust(Line_width) + str_2.rjust(Line_width/2))
str = "Chapter 2: Numbers"
str_2 = "page 9"
puts (str.ljust(Line_width) + str_2.rjust(Line_width/2))
str = "Chapter 3: Letters"
str_2 = "page 13"
puts (str.ljust(Line_width) + str_2.rjust(Line_width/2))