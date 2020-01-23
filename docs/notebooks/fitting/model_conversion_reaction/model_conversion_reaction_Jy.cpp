#include "amici/symbolic_functions.h"
#include "amici/defines.h"
#include "sundials/sundials_types.h"
#include <cmath>


#include "y.h"
#include "my.h"
#include "p.h"
#include "k.h"
#include "sigmay.h"

void Jy_model_conversion_reaction(realtype *Jy, const int iy, const realtype *p, const realtype *k, const realtype *y, const realtype *sigmay, const realtype *my){
    switch(iy) {
        case 0:
            Jy[0] = 0.5*log(2*amici::pi*pow(sigmay0, 2)) + 0.5*pow(-my0 + y0, 2)/pow(sigmay0, 2);
            break;
        case 1:
            Jy[0] = 0.5*log(2*amici::pi*pow(sigmay1, 2)) + 0.5*pow(-my1 + y1, 2)/pow(sigmay1, 2);
            break;
    }
}