# プログラムの実行に必要なライブラリの読み込み
require 'net/http' # インターネット上のデータ取得に必要
require 'uri' # インターネット上のデータ取得に必要
require 'json' # JSONデータをパース(構文解析)するために必要

# クラスメソッド（特異メソッド）を提供するだけでインスタンス化する要件がないためクラスではなくモジュールにしました
module LogFormatter
  def self.format_log
    #urlを文字列のまま渡すことはできないからURI.parseでURI::HTTPSオブジェクトに変換する
    uri = URI.parse('https://samples.jnito.com/access-log.json')
    # Net::HTTP.getを使ってインターネット上のデータを取得する
    json = Net::HTTP.get(uri)
    # 取得したJSON文字列をパースしてRubyのオブジェクト(ハッシュを要素とする配列)に変換する
    # ハッシュのキーは文字列がデフォルトだが、symbolize_names: tureオプションを付けるとシンボルになる
    log_data = JSON.parse(json,symbolize_names: true)
    log_data.map do |log|
      case log
        in {request_id:, path:, status: 404 | 500 => status, error:}
        "[ERROR] request_id=#{request_id}, path=#{path},status=#{status},error=#{error}"
        in {request_id:, path:, duration: 1000.. => duration}
        # asパターンで:durationの値を変数durationに代入する
        "[WARN] request_id=#{request_id}, path=#{path},duration=#{duration}"
        in {request_id:, path:}
        "[OK] request_id=#{request_id}, path=#{path}"
      end
    end.join("\n")
    # ppメソッドを使ってオブジェクトの中身をターミナルに出力する
    # pp log_data
  end
end