#include "amici/symbolic_functions.h"
#include "amici/defines.h"
#include "sundials/sundials_types.h"
#include <cmath>


#include "p.h"
#include "k.h"

void sigmay_model_conversion_reaction(realtype *sigmay, const realtype t, const realtype *p, const realtype *k){
    sigmay[0] = 1.0;
    sigmay[1] = 1.0;
}