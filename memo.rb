require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp.to_s

if memo_type == "1"
   
  puts "拡張子を除いたファイル名を入力してください。"
   
  file_name= gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "終了後、Ctrl + D　を押します。"
   
  memo = readlines
   
  CSV.open("#{file_name}.csv",'w') do |csv|
     
    csv.puts["#{memo}"]
     
  end

elsif memo_type =="2"
  
  puts "編集する拡張子を除いたファイル名を入力してください。" 
  
  file_name= gets.chomp 
   
  puts "編集内容を入力してください。"
  puts "終了後、Ctrl + D　を推します。"
   
  memo = $stdin.readlines
   
  CSV.open("#{file_name}.csv", "a") do |csv|
     
    csv.puts["#{memo}"]
     
  end
  
else
   puts "erroe"
   
end