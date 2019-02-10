while true; do
        if [ ! `pgrep graft_server` ]; then
                graft_server --log-file supernode.log --log-level 1 > out.log 2>&1 &
                for ((i=0; i<600; i+=5)); do
                        sleep 5
                        if [ ! `pgrep graft_server` ]; then
                                break
                        fi
                done
                #killall -9 graft_server > /dev/null 2>&1 # Warning this will kill graft_server inside each hour
        fi
        sleep 5
done

