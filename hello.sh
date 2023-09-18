# colors=(red blue pink)
# echo ${colors[0]}
# echo ${colors[1]}
# echo ${colors[2]}

# # 要素変更をする場合
# colors[2]=silver
# echo ${colors[2]}

# # 全要素を出力する場合
# echo ${colors[@]}

# # if分を書く場合
# name="taguchi2"

# if [ "$name" = "taguchi" ]; then
#     echo "welcome"
# elif [ "$name" = "taguchi2"]; then
#     echo "にはオー"
# else
#     echo "こんにちわ"
# fi

# # 名前の長さが無しの場合
# user=""
# if [[ -z $user ]]; then
#     echo "empty"
# fi

# # 正規表現で名前がtから始まる場合
# regUser="taguchi"
# if [[ $regUser =~ ^t ]]; then
#     echo "starts with t "
# else 
#     echo "dont't start with t"
# fi


# # ファイルの比較
# # -e : なんでも -f : ファイル -d : ディレクトリ
# if [[ -d $0 ]]; then
#     echo "dir exists"
# else 
#     echo "dir not exists"
# fi

# # 数値比較
# # == : 等しい != : 等しくない  
# read -p "Number?" n
# if (( 10 > n )); then
#     echo "bigger then 10"
# elif  (( n = 10)); then    
#     echo "equals 10"
# else
#     echo "less than 10"
# fi

# for文の書き方
# for i in 1 2 3 4 5
# do 
#     echo $i
# done

# ブルーム展開を使う場合
# for i in {1..5}; do
#     echo $i
# done 

# for ((i=1; i<=5; i++)); do
#     echo $i
# done

# # 配列を展開する場合
# colors=(red green yellor)
# for color in ${colors[@]}; do
#     echo $color
# done

# # 空白を改行して出力する場合
# for item in $(date); do
#     echo $item
# done

# # while文を表示
# i=0
# while (( i < 10 )); do
#     ((i++))
#     echo $i
# done

# # continue breakをする場合
# i=0
# while (( i <= 10 )); do
#     ((i++))
#     if (( i == 4 )); then
#         continue
#     fi
#     if (( i == 8 )); then
#         break
#     fi
#     echo $i
# done

# # while無限ループの場合
# while : 
# do
#     read -p "Command : " cmd
#     if [[ "$cmd" == "quit" ]]; then
#         break
#     else
#         echo "$cmd"
#     fi
# done

# 関数
# local変数かする場合は変数の先頭にlocalという修飾子を付与する
go(){
    echo "hello $1"
    local name="taguchi"
    if [[ $1 == "taguchi" ]]; then
        return 0
    else 
        return 1
    fi
}

go taguchi; echo $?
go world; echo $?
echo $name