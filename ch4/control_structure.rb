# 繰り返し処理用の制御構造

# break

numbers = [1, 2, 3, 4, 5].shuffle

numbers.each do |n|
  puts n

  break if n == 5
end
# 結果は5が出るまで終わらない。sampleメソッドとの違いはダブらない。
puts '-----------------------'
# throwとcatchを使った大域脱出

# 基本構文,タグは一致させること！

# catch タグ do
  # 繰り返し処理など
#   throw タグ
# end

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]

catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit},#{n}"
      if fruit == 'orange' && n == 3
        # 全ての繰り返し処理を脱出
        throw :done
      end
    end
  end
end

# 繰り返し処理で使うbreakとreturnの違い
# breakは繰り返し処理を脱出する
# returnはメソッド自体を脱出する
puts '-----------------------'
# redo
# 繰り返し処理をやり直したい場合はreadを使用、初回からやり直しではなくその回の繰り返し処理の最初に戻るという意味！

# 3つの野菜に対して好きですか？と問いかけランダムにはい又はいいえを答えるプログラム、ただしはいと答えるまで何度も同じ質問が続きます

foods = ['ピーマン', 'トマト', 'セロリ']

foods.each do |food|
  print "#{food}は好きですか？ =>"
  # samapleは配列からランダムに１要素を取得するメソッド
  answer = ['はい', 'いいえ'].sample
  puts answer

  # はいと答えなければもう一度聞き直す
  redo unless answer == 'はい'
end

# 結果(トマト本当は嫌いだな)
# ピーマンは好きですか？ =>はい
# トマトは好きですか？ =>いいえ
# トマトは好きですか？ =>いいえ
# トマトは好きですか？ =>いいえ
# トマトは好きですか？ =>いいえ
# トマトは好きですか？ =>いいえ
# トマトは好きですか？ =>はい
# セロリは好きですか？ =>はい

# 今回は50%の割合だからいいけど確率が少ないと無限ループに繋がるなのでやり直しの回数を制限できる
puts '-----------------------'
foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？ =>"
  
  answer = 'いいえ'
  puts answer

  count += 1
  # やり直しは２回までにする制限
  redo if answer != 'はい' && count < 2

  # カウントをリセット
  count = 0
end
