#include "sundials/sundials_types.h"

void JSparseB_rowvals_model_conversion_reaction(sunindextype *rowvals){
    rowvals[0] = 0;
    rowvals[1] = 1;
    rowvals[2] = 0;
    rowvals[3] = 1;
}