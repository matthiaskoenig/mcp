#include "sundials/sundials_types.h"

void dwdx_rowvals_model_conversion_reaction(sunindextype *rowvals){
    rowvals[0] = 0;
    rowvals[1] = 0;
}