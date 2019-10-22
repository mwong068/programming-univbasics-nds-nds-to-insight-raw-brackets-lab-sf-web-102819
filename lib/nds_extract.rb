$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
directors_hash = {}

total = 0 
 row_index = 0 
 while row_index < nds.length do 
   inner_len = nds[row_index][:movies].length
    column_index = 0 
  while column_index < nds[row_index].length do 
    
      while column_index < inner_len do 
        total += nds[row_index][:movies][column_index][:worldwide_gross]
        puts total
      end
  column_index += 1 
  end
 row_index += 1
 end
directors_hash[:name] = total
end