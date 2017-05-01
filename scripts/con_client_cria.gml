///con_client_cria(ip,porta);
    //network_set_config(network_config_connect_timeout, 1000);
    //network_set_config(network_config_use_non_blocking_socket, 1);
    var ip = argument0;
    var tipo = network_socket_tcp;
    var port = argument1;
    var soc = network_create_socket(tipo);
    var conexao = network_connect(soc,ip,port);
    
var cria =  instance_create(0,0,oCon_client);
    cria.con_tipo = ip;
    cria.con_port = tipo;
    cria.con_ip = port;
    cria.con_socket = soc;
    cria.con_conexao = conexao;
    with(cria){buffer_cria(); };
    con_representante_novo(soc);
return cria;
