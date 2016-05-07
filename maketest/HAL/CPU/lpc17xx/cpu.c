
#include "postypes.h"

static int cpu_module_inited = 0;

int cpu_init(void)
{
	//printf("CPU Inited !\n");
	cpu_module_inited = 1;
	return 0;
}
