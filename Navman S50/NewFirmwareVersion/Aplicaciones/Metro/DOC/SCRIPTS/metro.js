// Dynamic mail addresses
function setTarget(obj, nom)
{
	dest  = "mai";
	dest += "lto";
	dest += "\x3A";
	dest += nom;
	dest += "\x40";
	dest += "nan";
	dest += "ika";
	dest += "\x2e";
	dest += "\x6E\x65\x74";

	obj.href = dest;

	return true;
}

function setTarget2(obj, nom)
{
	dest  = "mai";
	dest += "lto";
	dest += "\x3A";
	dest += nom;
	dest += "\x40";
	dest += "ya";
	dest += "hoo";
	dest += "\x2e";
	dest += "\x63\x6F\x6D";

	obj.href = dest;

	return true;
}
