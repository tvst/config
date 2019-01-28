function port_use --description 'Finds which program is using a given port.'
	switch (count $argv)
    case 0
      echo 'Finds which program is using a given port.'
      echo 'Syntax: '$argv[0]' [port]'
    case 1
      netstat -tulpn | grep $argv[1]
  end
end

