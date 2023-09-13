colors=(red blue pink)
echo ${colors[0]}
echo ${colors[1]}
echo ${colors[2]}

# 要素変更をする場合
colors[2]=silver
echo ${colors[2]}

# 全要素を出力する場合
echo ${colors[@]}