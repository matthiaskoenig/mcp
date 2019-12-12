Elementary flux modes (EFM)
============================
Alternative analysis method using steady-state assumption :math:`N \cdot v^0 = 0`

- Enumeration of possible pathways.
- A flux mode is a set of reactions that can give rise to a steady state flux vector :math:`v^0`. An elementary flux mode is a flux mode where no reaction can be removed (=zero flux) and the resulting reactions can still be a flux mode.
- The set of EFMs is unique for a given stoichiometry.
- The number of EFMs is typically (much) higher then the dimension of the nullspace.

Convenience Kinetics
============================

Sensitivity analysis
====================
- how to changes in parameters or initial conditions influence results

The logarithmic sensitivity
---------------------------
One of the most important concepts is the sensitivity of a function to a parameter. The sensitivity of a value :math:`y = f(p)` with respect to a parameter p is defined as the derivative

.. math:: \lim_{\Delta p \to 0} \frac{\Delta f(p)}{\Delta p} = \frac{df(p)}{dp}

However, the value depends on the absolute value of the parameter, i.e., *absolute sensitivity*. Often it is more useful to look at *relative senitivity* or *logarithmic sensitivity*

.. math:: \frac{d \left( \frac{f(p)}{f(p^0)} \right)}{d \left( \frac{p}{p^0} \right)} = \frac{p^0}{f(p^0)} \frac{df(p)}{dp} = \frac{d ln f(p)}{d ln p}

**Example**

.. math:: v(x) = \frac{V_{max}\cdot x}{K_m + x}

.. math:: \Rightarrow \; \frac{d ln v(x)}{d ln x} = \frac{1}{1 + \frac{x}{K_M}} \in (0,1]

The logarithmic sensitivities have an intuitive interpretation as the **kinetic order**.
For a Michaelis-Menten function, the logarithmic sensititivity with respect to the substrates ranges from :math:`1` (linear regime, substrate concentration small compared to :math:`Km`) to :math:`0` (saturation, substrate concentration large compared to :math:`Km`)

**Exercise**

What are the logarithmic sensitivities of the following functions with respect to the variable :math:`x`

.. math:: v(x) = k \cdot x
.. math:: v(x) = k \cdot x^n
.. math:: v(x) = \frac{V_m \cdot x^n}{K_m^n + x^n}
.. math:: v(x) = \frac{Vv_m}{1 + \frac{1}{x^n/K_i^n}}

Metabolic Control Analysis (MCA)
--------------------------------
- framework for studying the relationship between steady-state properties of a network of biochemical reactions and the properties of the individual reactions
- investigates sensitivity of steady state properties to small parameter changes
- tool for analysis of control and regulation
- originally developed for metabolic networks, MCA has found application in *signaling pathways*, *gene expression models*, and *hierarchical models*
- metabolic networks are complex systems

MCA considers how a perturbation propagates through a metabolic network. Typically: how a change in enzyme concentration (or other parameter) affects the steady state with respect to metabolite concentrations and flux values.

MCA is conceptionally similar to classic sensitivity or control theory (from engineering).

Similar to other sensitivities the formulation can be in absolute terms or scaled (i.e. relative sensitivities).

**Elasticities**

In MCA, the partial derivatives of a reaction rate with respect to its substrates are called *elasticities* :math:`\epsilon^v_x

.. math:: \epsilon^v_x = \frac{\delta v(x)}{\delta x}

the **scaled elasticities** are

.. math:: \epsilon^v_x = \frac{\delta ln v(x)}{\delta ln x}

A set of reactions and a set of metabolites results in an elasticity matrix :math:`epsilon`.

Note that the Jacobian matrix is :math:`J = N \cdot \epsilon` at a steady state (assuming no mass conservation).

**Control coefficients**
A control coefficient measures the relative steady state change in a system variable, e.g. pathway flux :math:`J` or metabolite concentration :math:`S`
The two main control coefficients are the *flux* and *concentration control coefficients*.

**Concentration control coefficient**
The (unscaled) concentration control coefficients specify how the concentrations change due to a perturbation of a parameter (typically an enzyme concentration) that effects one or more fluxes.
In terms of derivatives,

.. math:: C^x = \frac{\delta x}{\delta p} / \frac{\delta v}{\delta p} = \frac{\delta x}{\delta v}

However, in general no explicit function for the concentrations of the form :math:`x = f(p=)` are known.
Therfore we consider

.. math:: N \cdot v(x, p) = 0 \; \Rightarrow \; N \left[ \frac{\delta v}{\delta x}\frac{dx}{dp} + \frac{\delty v}{\delta p} \right] = 0
and obtain

.. math:: \frac{dx}{dp} = - \left[ N \cdot \frac{\delta v}{\delta x} \right]^{-1} \cdot N \cdot \frac{\delta v}{delta p} = C^X \cdot \frac{\delta v}{\delta p}

using the definition we get

.. math:: C^X = - \left[ N \cdot \frac{\delta v}{\delta x} \right] \cdot N = - J^{-1} \cdot N.

The definition gets slightly more complicated if the Jacobian is not invertible (for example due to conserved moieties). In this case, a link matrix :math:`L` has to be introduced, see further reading.

**Summation theorem**
For a set of concentrations and a set of reactions (or enzymes), the concentration control coefficients are a matrix. Multiplication of the concentration control coefficient with (any) vector of the right nullspace of :math:`N` results in the summation theorem,

.. math:: C^X \cdot K = 0

**Connectivity theorem**
Likewise, multiplication of the concentration control coefficient with the elasticity matrix :math:`\epsilon` results in the conectivity theorem,

.. math:: C^X \cdot \epsilon = 1

**Flux control coefficients**
Similar to :math:`C^X`, the flux control coefficient denotes the changes in flux upon perturbations,

..math:: \frac{dv}{dp} = \frac{\delta v}{\delta p} + \frac{\delta v}{\delta x}\frac{dx}{dp} = \left[ 1 + \frac{\delta v}{\delta x} \cdot C^X] \frac{\delta v}{\delta p}

and

.. math:: C^v := 1 + \frac{\delta v}{\delta x} \cdot C^X

The corresponding summation theorem (for unscaled coefficient) is

.. math:: C^v \cdot K = K

**Scaled control coefficients**
Similar to the partial derivatives, it is often useful to consider scaled control coefficients. These provide a measure of the relative changes of concentrations and fluxes upon relative changes in parameters (that is, a scaled control coefficient of :math:`\hat{C}^v`, implies that if the corresponding enzyme is changed by 1% the respective flux changes by 1%).

We define *scaled elasticities*

.. math:: \hat{\epsilon} = D_{v^0}^{-1} \cdot \epsilon \cdot D_{x^0}

*scaled concentration control coefficients* :math:`\hat{C}^X`

.. math:: \hat{C}^X = D_{x^0}^{-1} \cdot C^X \cdot D_{v^0}

and *scaled flux control coefficients* :math:`\hat{C}^v`

.. math:: \hat{C}^v = D_{v^0}^{-1} \cdot C^v \cdot D_{v^0} \Longleftrightarrow \hat{C}^v = 1 + \hat{\epsilon}\cdot \hat{C}^X

where :math:`D_{x^0}` and :math:`D_{v^0}` denote diagonal matrices with :math:`x^0` and :math:`v^0` on the diagonal, respectively.



References & Further reading
-----------------------------
- https://en.wikipedia.org/wiki/Metabolic_control_analysis
- Klipp et al, Systems Biology - A textbook, chapter 4.2 - Metabolic control analysis
- Reder, C. “Metabolic control theory: a structural approach.” Journal of theoretical biology vol. 135,2 (1988): 175-201. doi:10.1016/s0022-5193(88)80073-0
- Kacser, H, and J A Burns. “The control of flux.” Symposia of the Society for Experimental Biology vol. 27 (1973): 65-104.
- Heinrich, R, and T A Rapoport. “A linear steady-state treatment of enzymatic chains. General properties, control and effector strength.” European journal of biochemistry vol. 42,1 (1974): 89-95. doi:10.1111/j.1432-1033.1974.tb03318.x
