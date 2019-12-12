**Scaled control coefficients**

Similar to the partial derivatives, it is often useful to consider scaled control coefficients. These provide a measure of the relative changes of concentrations and fluxes upon relative changes in parameters (that is, a scaled control coefficient of :math:`\hat{C}^v`, implies that if the corresponding enzyme is changed by 1% the respective flux changes by 1%).

We define *scaled elasticities*

.. math:: \hat{\epsilon} = D_{v^0}^{-1} \cdot \epsilon \cdot D_{x^0}

*scaled concentration control coefficients* :math:`\hat{C}^X`

.. math:: \hat{C}^X = D_{x^0}^{-1} \cdot C^X \cdot D_{v^0}

and *scaled flux control coefficients* :math:`\hat{C}^v`

.. math:: \hat{C}^v = D_{v^0}^{-1} \cdot C^v \cdot D_{v^0} \Longleftrightarrow \hat{C}^v = 1 + \hat{\epsilon}\cdot \hat{C}^X

where :math:`D_{x^0}` and :math:`D_{v^0}` denote diagonal matrices with :math:`x^0` and :math:`v^0` on the diagonal, respectively.