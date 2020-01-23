"""AMICI-generated module for model model_conversion_reaction"""

import amici

# Ensure we are binary-compatible, see #556
if '0.10.17' != amici.__version__:
    raise RuntimeError('Cannot use model model_conversion_reaction, generated with AMICI '
                       'version 0.10.17, together with AMICI version'
                       f' {amici.__version__} which is present in your '
                       'PYTHONPATH. Install the AMICI package matching the '
                       'model version or regenerate the model with the AMICI '
                       'currently in your path.')

from model_conversion_reaction._model_conversion_reaction import *

__version__ = '0.1.0'
