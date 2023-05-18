# Dateクラスを使いたい場合dateライブラリを組み込みます。
# dateのようなライブラリを標準ライブラリという。(反対は組み込みライブラリ,読み込まなくても使えるメソッド)

require 'date'

puts Date.today


# 自作のRubyプログラムを読み込む場合はrequireではなく、require_relativeを使うように!
