colors=(red blue pink)
echo ${colors[0]}
echo ${colors[1]}
echo ${colors[2]}

# 要素変更をする場合
colors[2]=silver
echo ${colors[2]}

# 全要素を出力する場合
echo ${colors[@]}

# if分を書く場合
name="taguchi2"

if [ "$name" = "taguchi" ]; then
    echo "welcome"
elif [ "$name" = "taguchi2"]; then
    echo "にはオー"
else
    echo "こんにちわ"
fi

# 名前の長さが無しの場合
user=""
if [[ -z $user ]]; then
    echo "empty"
fi

# 正規表現で名前がtから始まる場合
regUser="taguchi"
if [[ $regUser =~ ^t ]]; then
    echo "starts with t "
else 
    echo "dont't start with t"
fi


# ファイルの比較
# -e : なんでも -f : ファイル -d : ディレクトリ
if [[ -d $0 ]]; then
    echo "dir exists"
else 
    echo "dir not exists"
fi

# 数値比較
# == : 等しい != : 等しくない  
read -p "Number?" n
if (( 10 > n )); then
    echo "bigger then 10"
elif  (( n = 10)); then    
    echo "equals 10"
else
    echo "less than 10"
fi

