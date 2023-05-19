# 単位変換プログラム
# 変換前の単位の長さ ÷ 変換前の単位の比率 × 変換後の単位の比率

# 変更する予定のないものは定数化
UNITS = {m: 1.0, ft: 3.28, in: 39.37 }

def convert_length(length, from:, to:) # 数値、変換元、変換後
  (length / UNITS[from] * UNITS[to]).round(2)
end
