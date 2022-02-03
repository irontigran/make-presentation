#include <stdio.h>

#include "common.h"
#include "commands.h"
#include "map.h"

int main(void) {
    run_command(10);
    int map = DOWN;
    map = reorient_map(map);
    printf("map is now equal to %d\n", map);
}
