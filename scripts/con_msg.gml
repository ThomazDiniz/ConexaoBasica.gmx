///con_msg(Flag leitura,buffer)
var buffer = argument1;
var le = argument0;
buffer_clear(buffer);

if (!le){
    buffer_write(buffer,buffer_u8,0);//titulo
    buffer_write(buffer,buffer_string,str);//msg
} else {
    titulo = buffer_read(buffer,buffer_u8);
    str = buffer_read(buffer,buffer_string);
    
    ///Executa
    con_console("Mensagem recebida: " + str);
    if (con_isServer()){
        con_send_all(argument1);
    }
}
