require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i


if memo_type == 1 then
    puts "拡張子を除いたファイルを入力してください"
    text_name = gets.chomp


    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"

    text_contents = readlines
    
   CSV.open("#{text_name}.csv",'w') do |csv|
        csv << [text_contents]
    end

 elsif memo_type == 2 then
    puts "拡張子を除いたファイルを入力してください"
    
    exist_text_name = gets.chomp

    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"

    new_text_contents = readlines

    CSV.open("#{exist_text_name}.csv",'a') do |csv|
      csv << [new_text_contents]
    end

 else 
    puts "正常に作動してません" 
end

