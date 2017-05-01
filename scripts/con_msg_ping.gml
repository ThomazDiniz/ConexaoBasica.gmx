///con_msg_ping(Flag leitura,buffer)
var buffer = argument1;
var le = argument0;
buffer_clear(buffer);

if (!le){
    buffer_write(buffer,buffer_u8,1);//titulo
} else {
    var titulo = buffer_read(buffer,buffer_u8);
    ///Executa
    con_console("Ping");
}
