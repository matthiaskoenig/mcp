#include "sundials/sundials_types.h"

void dxdotdw_colptrs_model_conversion_reaction(sunindextype *colptrs){
    colptrs[0] = 0;
    colptrs[1] = 2;
}