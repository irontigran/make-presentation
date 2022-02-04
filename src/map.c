#include "common.h"
#include "map.h"

int reorient_map(int orient) {
    switch (orient) {
        case UP:
            return DOWN;
        case DOWN:
            return UP;
        default:
            return UP;
    }
}
