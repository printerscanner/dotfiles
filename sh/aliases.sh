alias clear="cd && clear"
alias serve="python3 -m http.server" 
alias runcpp="g++ -std=c++11 -stdlib=libc++"

resize() {
    read "prefix?Enter prefix: "
    i=1
    for file in *; do
        cwebp -q 75 "${file}" -o "${prefix}_${i}.webp"
        ((i++))
    done
}


go() {
  code . && yarn && (yarn dev || yarn start || yarn serve)
}
