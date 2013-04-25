class MumbleEvent extends SequenceEvent DLLBind(MyModDLL);

var() vector pos;


var bool bActivated;

dllimport final function initLink();
dllimport final function updateLink(float X, float Y, float Z);
event Activated() {
	if (!bActivated)
	{
		 initLink();
		bActivated = True;
	}
		`log(pos.X@pos.Y@pos.Z);
		updateLink(pos.x/10.0f,0.5f,pos.y/10.0f);
}

defaultproperties
{
bActivated = false
ObjName="MumbleAction"
ObjCategory="Custom"
InputLinks.Empty
InputLinks.Add((LinkDesc="Update"))
VariableLinks.Empty

VariableLinks.Add((ExpectedType=class'Engine.SeqVar_Vector',LinkDesc="pos",PropertyName=pos,MaxVars=1))

}