function wait_for_port --description 'Waits for the given port to open, then returns.'
  switch (count $argv)
    case 0
      echo 'Waits for the given port to open, then returns.'
      echo 'Syntax: wait_for_port 1234'
    case '*'
      set PORT $argv[1]
      echo "Waiting for port $PORT to open..."
      set RES (lsof -i :$PORT)
      while test -z "$RES"
        set RES (lsof -i :$PORT)
        sleep 5
      end
      echo "Port $PORT found."
  end
end
