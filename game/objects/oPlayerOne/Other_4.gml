/// @description auto-save
// You can write your code in this editor
if (room != rOne)
{
	if(file_exists(SAVEFILE)) file_delete(SAVEFILE);

	var file;
	file = file_text_open_write(SAVEFILE);
	file_text_write_real(file, room);
	file_text_write_real(file, global.kills);
	file_text_write_real(file, global.pacifist);
	file_text_write_real(file, global.nbPlayer);
	//file_text_write_real(file, global.bis);

	file_text_close(file);
}
