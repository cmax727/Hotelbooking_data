-- all-hooks.lua
local access_ndx = 0
function read_auth( auth )
    print_access ('inside read_auth ')
end
function connect_server()
    print_access ('inside connect_server')
end
function read_handshake( auth )
    print_access ('inside read_handshake' )
end
function read_auth_result( auth )
    print_access ('inside read_auth_result')
end
function disconnect_client()
    print_access('inside disconnect_client')
end
function read_query (packet)
    print_access('inside read_query \t' .. packet:sub(2))
    proxy.queries:append(1, packet)
    return proxy.PROXY_SEND_QUERY
end
function read_query_result (inj)
    print_access('inside read_query_result \t' .. inj.query)
end
function print_access(msg)
    access_ndx = access_ndx + 1
    print( string.format('%3d %-30s',access_ndx,msg))
end