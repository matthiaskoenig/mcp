Metabolic control analyis & sensitivity
=======================================

We will analyse contraint-based models of the form

.. raw:: latex

   \begin{equation}
       \max_{v^0} c^T \cdot v \\
       s.t. N \cdot v^0 = 0 \\
       \alpha_i \leq v_i^0 \leq \beta_i
   \end{equation}

using ``cobrapy``.

Information in this tutorial is based on
https://cobrapy.readthedocs.io/en/latest/

.. code:: ipython3

    %matplotlib inline

1. Working with metabolic models
--------------------------------

1.1 Loading and inspecting model
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To begin with, cobrapy comes with a “textbook” model of E. coli core
metabolism. To load the test model use

.. code:: ipython3

    # metabolic control coefficients

