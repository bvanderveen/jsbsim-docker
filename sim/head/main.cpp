#include <FGFDMExec.h>

int main(int argc, char **argv) {

	printf("hi!\n");

	JSBSim::FGFDMExec e;

	e.SetEnginePath("/opt/src/JSBSim-1.0/engine");
	e.SetAircraftPath("/opt/src/JSBSim-1.0/aircraft");
	e.SetSystemsPath("/opt/src/JSBSim-1.0/systems");

	e.LoadScript(argv[1]);
	
	while (e.Run());

	printf("Done!\n");
}