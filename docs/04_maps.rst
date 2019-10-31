Finite difference equations & maps
==================================
(Lineare und nicht-lineare Abbildungen)

- discrete time
- rules for update of states

:math:`x_{t+1} = f(x_{t})`

Linear 1-dim map
----------------
(Abbildung)

:math:`x_{t+1} = f(x_{t}) = R \cdot x_{t}`

| **time series**:
| :math:`x_{0}` (initial condition)
| **iteration**
| :math:`x_{1} = R \cdot x_{0}`
| :math:`x_{2} = R \cdot x_{1} = R^2 \cdot x_{0}`
| :math:`x_{3} = R \cdot x_{2} = \cdots = R^3 \cdot x_{0}`
| :math:`\cdots`

| **steady state** of a map is:
| :math:`\bar{x}_{t+1} = \bar{x}_{t}`
| :math:`R \cdot \bar{x} = \bar{x}`
| :math:`\implies \bar{x} = 0`


| **system behavior**
| Depending on the value of :math:`R` different system behavior is observed

- :math:`R > 1` : growth
- :math:`R = 1` : steady state (for all x)
- :math:`0 < R < 1` : decay
- :math:`-1 < R < 0` : alternating decay
- :math:`R = -1`: periodic cycle
- :math:`R < -1`: alternating growth

.. figure:: ./notebooks/images/linear_map.png
    :width: 800px
    :align: center
    :alt: linear map
    :figclass: align-center

    Simple linear map :math:`x_{t+1} = R \cdot x_{t}`


**graphical solution** (web method)

.. figure:: ./notebooks/images/linear_map_graphial.png
    :width: 800px
    :align: center
    :alt: linear map
    :figclass: align-center

    Graphical solution of linear map



Nichtlineare Abbildung
----------------------
| The linear map
| :math:`x_{t+1} = R \cdot x_{t}`
| is for :math:`R > 1` a simple model of exponential growth. But in reality resource limitations exist.

| **logistic map**
| :math:`x_{t+1} = R \cdot x_{t} \cdot (1-x_{t})`
| :math:`0 \leq R \leq 4`
| The map is a function
| :math:`[0, 1] \rightarrow [0,1]`


| **Example iteration**
| :math:`x_{0}=0.5` (initial condition)
| :math:`R=1.5` (initial condition)
| **iteration**
| :math:`x_{0} = 0.5`
| :math:`x_{1} = \frac{3}{2} \cdot \frac{1}{2} \cdot(1 - \frac{1}{2})=\frac{3}{8}`
| :math:`x_{2} = \frac{3}{2} \cdot \frac{3}{8} \cdot(1-\frac{3}{8})=0.352`
| :math:`x_{3} = \cdots = 0.342`
| :math:`x_{4} = \cdots = 0.3375`
| :math:`\cdots`

| **steady state**
| :math:`\bar{x}_{t+1} = \bar{x}_{t}`
| :math:`R \cdot \bar{x} \cdot(1-\bar{x}) = \bar{x}`
| :math:`\implies \bar{x}_{1} = 1-\frac{1}{R}`
| :math:`\implies \bar{x}_{2} = 0`
| holds for all R

| For our example:
| :math:`\implies \bar{x}_{2} = 1-\frac{2}{3} = \frac{1}{3}`

