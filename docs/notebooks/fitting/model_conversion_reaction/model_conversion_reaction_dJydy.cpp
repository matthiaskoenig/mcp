#include "amici/symbolic_functions.h"
#include "amici/defines.h"
#include "sundials/sundials_types.h"
#include <cmath>


#include "y.h"
#include "my.h"
#include "p.h"
#include "k.h"
#include "sigmay.h"

void dJydy_model_conversion_reaction(realtype *dJydy, const int iy, const realtype *p, const realtype *k, const realtype *y, const realtype *sigmay, const realtype *my){
    switch(iy) {
        case 0:
            dJydy[0] = 0.5*(-2*my0 + 2*y0)/pow(sigmay0, 2);
            break;
        case 1:
            dJydy[0] = 0.5*(-2*my1 + 2*y1)/pow(sigmay1, 2);
            break;
    }
}