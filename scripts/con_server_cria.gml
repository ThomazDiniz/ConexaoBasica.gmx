///con_server_cria(porta);
    //network_set_config(network_config_connect_timeout, 1000);
    //network_set_config(network_config_use_non_blocking_socket, 1);
    
    
    var tipo = network_socket_tcp;
    var port = argument0;
    var mx = 4;
    
var cria = instance_create(0,0,oCon_server);
    cria.con_tipo = tipo;
    cria.con_port = port;
    cria.con_max_clients = mx;
    cria.con_server = network_create_server(tipo,port,mx);
    with(cria){buffer_cria()};
return cria;
