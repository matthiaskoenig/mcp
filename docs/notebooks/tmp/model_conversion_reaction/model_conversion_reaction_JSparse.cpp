#include "amici/symbolic_functions.h"
#include "amici/defines.h"
#include "sundials/sundials_types.h"
#include <cmath>


#include "w.h"
#include "p.h"
#include "k.h"
#include "x.h"
#include "dwdx.h"

void JSparse_model_conversion_reaction(realtype *JSparse, const realtype t, const realtype *x, const realtype *p, const realtype *k, const realtype *h, const realtype *w, const realtype *dwdx){
    JSparse[0] = -1.0*dwdx0;
    JSparse[1] = 1.0*dwdx0;
    JSparse[2] = -1.0*dwdx1;
    JSparse[3] = 1.0*dwdx1;
}