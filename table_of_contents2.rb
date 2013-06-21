Line_width = 40
chapter_number = 1
title = "Table of Contents"
puts title.center(Line_width)
chapter_data = [["Getting Started", 1],
				["Numbers", 9],
				["Letters", 13]]
chapter_data.each do |info, ind|
first = "Chapter #{chapter_number}: #{info}"
second = "page #{ind}"
chapter_number +=1
puts first.ljust(Line_width) + second.rjust(Line_width/2)
end