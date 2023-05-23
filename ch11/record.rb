record = [1995, 3, 1]

case record
  in [year]
  # 要素数が１つだとここにマッチ
  puts "#{year}年です"
  in [year, month]
  # 配列の要素数が2つなのでここにマッチ
  puts "#{year}年 #{month}月です"
  in [year, month, day]
  # 要素数が3つだとここにマッチ
  puts "#{year}年 #{month}月 #{day}日です"
end

# 1995年 3月 1日です

# 配列の数が合わない場合とかで使えそう！

# 配列やハッシュのデータ構造に着目して条件分岐させたいときは、パターンマッチ活躍のチャンス！！！
