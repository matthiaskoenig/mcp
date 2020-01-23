#include "amici/symbolic_functions.h"
#include "amici/defines.h"
#include "sundials/sundials_types.h"
#include <cmath>


#include "w.h"
#include "p.h"
#include "k.h"
#include "x.h"

void y_model_conversion_reaction(realtype *y, const realtype t, const realtype *x, const realtype *p, const realtype *k, const realtype *h, const realtype *w){
    y[0] = A;
    y[1] = B;
}