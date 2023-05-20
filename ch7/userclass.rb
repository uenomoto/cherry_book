# ユーザーを管理するクラスです
class User
  attr_reader :first_name, :last_name, :age

  def initialize(name)
    @name = name
  end

  # ユーザーのデータを作成する
  def self.create_users(names)
    names.map { |name| User.new(name) }
  end

  # こんにちは挨拶をするメソッド
  def hello
    "こんにちは！#{@name}です！"
  end
end

names = ['上野', '高橋', 'エクセレント']

users = User.create_users(names)

users.each { |user| puts user.hello }
