foo=$(xxd -b file | cut -d" " -f 2-7 | tr "\n" " " )
for (( i=0; i<${#foo}; i++ )); do
  echo "${foo:$i:1}";
  if [[ "${foo:$i:1}" = 1 ]]; then
     $(xrandr --listmonitors | grep "^ " | cut -f 6 -d' ' | \
    xargs --replace=MONITOR xrandr --output MONITOR --gamma 1.0:1.0:1.0);
  else
      $(xrandr --listmonitors | grep "^ " | cut -f 6 -d' ' | \
    xargs --replace=MONITOR xrandr --output MONITOR  --gamma 0.59:0.59:0.59); 
  fi
  sleep 0.5
done

     $(xrandr --listmonitors | grep "^ " | cut -f 6 -d' ' | \
    xargs --replace=MONITOR xrandr --output MONITOR --gamma 1.0:1.0:1.0);


