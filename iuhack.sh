foo=$(xxd -b file | cut -d" " -f 2-7 | tr "\n" " " )
for (( i=0; i<${#foo}; i++ )); do
  echo "${foo:$i:1}"
  sleep 0.5
done


