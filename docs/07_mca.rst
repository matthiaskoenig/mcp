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

However, the value depends on the absolute value of the parameter. It is more useful to look at relative senitivities

.. math:: \frac{d \left( \frac{f(p)}{f(p^0)} \right)}{d \left( \frac{p}{p^0} \right)} = \frac{p^0}{f(p^0)} \frac{df(p)}{dp} = \frac{d ln f(p)}{d ln p}

**Example**

.. math:: v(x) = \frac{V_{max}\cdot x}{K_m + x} \; \Rightarrow \; \frac{}{}


Metabolic Control Analysis (MCA)
================================
- framework for studying the relationship between steady-state properties of a network of biochemical reactions and the properties of the individual reactions
- investigates sensitivity of steady state properties to small parameter changes
- tool for analysis of control and regulation
- originally developed for metabolic networks, MCA has found application in *signaling pathways*, *gene expression models*, and *hierarchical models*
- metabolic networks are complex systems

Sensitivity analysis

References
----------
- Klipp et al, Systems Biology - A textbook, chapter 4.2 - Metabolic control analysis
- Reder, C. “Metabolic control theory: a structural approach.” Journal of theoretical biology vol. 135,2 (1988): 175-201. doi:10.1016/s0022-5193(88)80073-0
- Kacser, H, and J A Burns. “The control of flux.” Symposia of the Society for Experimental Biology vol. 27 (1973): 65-104.
- Heinrich, R, and T A Rapoport. “A linear steady-state treatment of enzymatic chains. General properties, control and effector strength.” European journal of biochemistry vol. 42,1 (1974): 89-95. doi:10.1111/j.1432-1033.1974.tb03318.x
