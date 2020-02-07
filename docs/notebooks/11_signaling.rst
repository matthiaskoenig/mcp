Signaling code
==============

In the following we will implement and analyse the simple signaling
motives from the lecture - phosphorylation cycle - two-component system

In addition we will have a look at a real world example. A MAP kinase
model.

We will use ``tellurium`` to encode the model, i.e., the ODEs and for
simulation. For documentation see
https://tellurium.readthedocs.io/en/latest/notebooks.html#modeling-case-studies

.. code:: ipython3

    %matplotlib inline

1. Building ODE models
----------------------

1.1 Modeling in a nutshell
~~~~~~~~~~~~~~~~~~~~~~~~~~

**Basic steps**: - write down the players (**species Si**) in your
system - write down the **processes vi** which influence your species
and the **stoichiometry** (number of species consumed/produced via the
process) - write down mathematical equations for the **processes** -
equations define the **rates** of the processes, defining how fast the
process changes the species

**Processes** - require stoichiometry and rate law (kinetics)

.. math:: v1: S1 \rightarrow S2

.. math:: v1 = k1 \cdot S1

**System of ordinary differential equations (ODEs)**

The result is a list of mathematical equations (differential equations)
\* can be solved with numerical methods \* results in time courses,
i.e., the time-dependent

| 

  .. math:: \frac{dS1}{dt} = -v1 = -k1 \cdot S1
| 

  .. math:: \frac{dS2}{dt} = v1 = k1 \cdot S1

**Main types of equations** \* Mass-Action kinetics \* Michaelis-Menten
Kinetics (irreversible & reversible) \* Hill equations (cooperativity)
\* (Non-)Competitive Inhibition

1.2 Model definition
~~~~~~~~~~~~~~~~~~~~

.. code:: ipython3

    import tellurium as te
    import pandas as pd


::


    ---------------------------------------------------------------------------

    ModuleNotFoundError                       Traceback (most recent call last)

    <ipython-input-2-8d1c52be6743> in <module>
    ----> 1 import tellurium as te
          2 import pandas as pd


    ModuleNotFoundError: No module named 'tellurium'


.. code:: ipython3

    # model definition
    model = te.loada(f"""
    model example1()
      // compartments and species
      species S1, S2;
    
      // processes
      v1: S1 -> S2; k1*S1;
      
      // initial conditions
      S1 = 10.0;
      
      // parameters
      k1 = 0.1;
    end
    """)
    print(te.sbmlToAntimony(model.getSBML()))


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-3-b51a36b51f47> in <module>
          1 # model definition
    ----> 2 model = te.loada(f"""
          3 model example1()
          4   // compartments and species
          5   species S1, S2;


    NameError: name 'te' is not defined


1.3 simulation
~~~~~~~~~~~~~~

.. code:: ipython3

    model.reset()
    s = model.simulate(start=0, end=100, steps=100)
    model.plot(s)
    s = pd.DataFrame(s, columns=s.colnames)
    display(s)


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-748f20177d7d> in <module>
    ----> 1 model.reset()
          2 s = model.simulate(start=0, end=100, steps=100)
          3 model.plot(s)
          4 s = pd.DataFrame(s, columns=s.colnames)
          5 display(s)


    NameError: name 'model' is not defined


2. Phosphorylation cycle
------------------------

One of the most important signaling motives are protein phosphorylation
cycles, i.e., a post-translational modification of a protein in which an
amino acid residue is phosphorylated by a protein kinase, and
dephosphorylated by a protein phosphatase.

Simple models follow mass-action kinetics. For example the following
simple phosphorylation cycle where the kinase activity represents the
signal :math:`S`, and the activity of the phosphatase is assumed to be
constant (and included in the rate constant :math:`k_2`)

.. raw:: latex

   \begin{equation}
       v_1 = k_1 \cdot S \cdot R \\
       v_2 = k_2 \cdot R_p \\
       \frac{dR_p}{dt} = v_1 - v_2 = k_1 \cdot S \cdot R - k_2 \cdot R_p \\ 
       \frac{dR}{dt} = -v_1 + v_2 = -\frac{dR}{dt}
   \end{equation}

The system exhibits mass conservation :math:`R_p + R = R^T`, where
:math:`R^T` denotes the amount of total protein.

.. raw:: latex

   \begin{equation}
       \frac{d (R + R_p)}{dt} = 0
   \end{equation}

2.1 Build model phosphorylation cycle
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code:: ipython3

    import tellurium as te
    import pandas as pd
    from IPython.display import display, HTML


::


    ---------------------------------------------------------------------------

    ModuleNotFoundError                       Traceback (most recent call last)

    <ipython-input-5-68a3a525987d> in <module>
    ----> 1 import tellurium as te
          2 import pandas as pd
          3 from IPython.display import display, HTML


    ModuleNotFoundError: No module named 'tellurium'


.. code:: ipython3

    model_pcycle = te.loada(f"""
    model pcycle()
      // compartments and species
      species R, Rp;
    
      // reactions
      v1: R -> Rp; k1*S*R;
      v2: Rp -> R; k2*Rp;
      
      // initial conditions
      R = 10.0; Rp = 0.0;
      
      // parameters
      k1 = 0.1; k2 = 0.1;
      S = 1.0;  
    end
    """)
    
    # print(te.sbmlToAntimony(model_pcycle.getSBML()))
    s = model_pcycle.simulate(start=0, end=50, steps=200)
    model_pcycle.plot(s)


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-6-0e52bacfcfb1> in <module>
    ----> 1 model_pcycle = te.loada(f"""
          2 model pcycle()
          3   // compartments and species
          4   species R, Rp;
          5 


    NameError: name 'te' is not defined


2.2 Check mass balance
~~~~~~~~~~~~~~~~~~~~~~

-  to check the mass balance we add an assignment rule to the model
-  to be able to access the variables in the results we ``Rt`` to the
   selections

.. code:: ipython3

    model_pcycle = te.loada(f"""
    model pcycle()
      // compartments and species
      species R, Rp;
    
      // reactions
      v1: R -> Rp; k1*S*R;
      v2: Rp -> R; k2*Rp;
      
      // initial conditions
      R = 10.0; Rp = 0.0;
      
      // parameters
      k1 = 0.1; k2 = 0.1;
      S = 1.0;  
      
      // rules
      Rt := R + Rp
    end
    """)
    
    # print(te.sbmlToAntimony(model_pcycle.getSBML()))
    
    selections = ["time", "R", "Rp", "S", "Rt"]
    
    s = model_pcycle.simulate(start=0, end=50, steps=200, selections=selections)
    model_pcycle.plot(s)
    s = pd.DataFrame(s, columns=s.colnames)
    display(s)


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-7-a4374d7c48b1> in <module>
    ----> 1 model_pcycle = te.loada(f"""
          2 model pcycle()
          3   // compartments and species
          4   species R, Rp;
          5 


    NameError: name 'te' is not defined


2.3 Parameter scan
~~~~~~~~~~~~~~~~~~

A typical task in a simulation study is to scan parameters and check the
influence of parameters on the model.

In the following we will change the parameter of the kinase ``k1``

.. code:: ipython3

    import numpy as np
    from matplotlib import pyplot as plt

.. code:: ipython3

    model.resetToOrigin()
    k1_vec = np.linspace(0, 1, num=21)
    # k1_vec = np.logspace(-10, 1, num=21)
    
    # run parameter scan
    results = []
    for k1 in k1_vec:
        # print(k1)
        model_pcycle.reset()
        model_pcycle["k1"] = k1
        s = model_pcycle.simulate(start=0, end=50, steps=200)
        s = pd.DataFrame(s, columns=s.colnames)
        results.append(s)
        
    # create plot
    f, ax = plt.subplots()
    kwargs = {"alpha": 0.8}
    for k, s in enumerate(results):
        ax.plot(s.time, s.R, color="blue", **kwargs)
        ax.plot(s.time, s.Rp, color="darkorange", **kwargs)
        ax.plot(s.time, s.Rt, color="red", **kwargs)
    
    ax.set_xlabel("time")
    ax.set_ylabel("amount")
    
    plt.show()


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-9-bc393d3f761e> in <module>
    ----> 1 model.resetToOrigin()
          2 k1_vec = np.linspace(0, 1, num=21)
          3 # k1_vec = np.logspace(-10, 1, num=21)
          4 
          5 # run parameter scan


    NameError: name 'model' is not defined


**Important things** - numerical simulations (with floating point values
and certain accuracy) - steady state concentration depend on the
:math:`k_1` parameter - the higher the phosphorylation rate the faster
the steady state is reached - mass balance is conserved for changing of
parameters

Often one is interested in changes in steady state (or other system
properties with parameters). - for instance how do the steady state
values of R and Rp change with :math:`k_1`

.. code:: ipython3

    # collect steady state values
    R_ss = np.zeros_like(k1_vec)
    Rp_ss = np.zeros_like(k1_vec)
    Rt_ss = np.zeros_like(k1_vec)
    
    for k, s in enumerate(results):
        R_ss[k] = s.R.values[-1]
        Rp_ss[k] = s.Rp.values[-1]
        Rt_ss[k] = s.Rt.values[-1]
    
    f, ax = plt.subplots()
    kwargs = {"marker": "s"}
    ax.plot(k1_vec, R_ss, color="blue", **kwargs)
    ax.plot(k1_vec, Rp_ss, color="darkorange", **kwargs)
    ax.plot(k1_vec, Rt_ss, color="red", **kwargs)
    ax.set_xlabel("k1")
    ax.set_ylabel("amount")
    # ax.set_xscale("log")
    plt.show()


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-10-2eec67600bbe> in <module>
          1 # collect steady state values
    ----> 2 R_ss = np.zeros_like(k1_vec)
          3 Rp_ss = np.zeros_like(k1_vec)
          4 Rt_ss = np.zeros_like(k1_vec)
          5 


    NameError: name 'k1_vec' is not defined


2.4 Steady state (dependency on signal)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Steady state of the system is given by

.. raw:: latex

   \begin{equation}
   \frac{dR_p}{dt} = k_1 \cdot S \cdot R - k_2 \cdot R_p = k1 \cdot S \cdot (R^T - R_p) - k_2 \cdot R_p = 0 \\
   R_p^0 = R^T \cdot \frac{S}{S + \frac{k_2}{k_1}}  \\
   R^0 = R^T - R_p^0 = R^T \cdot \left(1- \frac{S}{S + \frac{k_2}{k_1}} \right) \\
   \end{equation}

Note that the dependence on the kinase activity (signal) is hyperbolic,
whereas the dependence on total protein is linear.

In the following we compare the analytical solution against the
numerical solution (vs actual steady state simulation).

.. code:: ipython3

    # make sure the model is reset
    model_pcycle.resetToOrigin()
    # print model (to check parameter values)
    print(te.sbmlToAntimony(model_pcycle.getSBML()))


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-11-e479a66a6a9f> in <module>
          1 # make sure the model is reset
    ----> 2 model_pcycle.resetToOrigin()
          3 # print model (to check parameter values)
          4 print(te.sbmlToAntimony(model_pcycle.getSBML()))


    NameError: name 'model_pcycle' is not defined


.. code:: ipython3

    S_vec = np.linspace(0, 10, num=21)
    # S_vec = np.logspace(-3, 3, num=100)
    
    R_ss = np.zeros_like(S_vec)
    Rp_ss = np.zeros_like(S_vec)
    Rt_ss = np.zeros_like(S_vec)
    
    # run parameter scan
    results = []
    for k, S in enumerate(S_vec):
        model_pcycle.reset()
        model_pcycle["S"] = S
        s = model_pcycle.simulate(start=0, end=50, steps=100)
        s = pd.DataFrame(s, columns=s.colnames)
        
        # store results
        results.append(s)
    
        # collect steady state values
        R_ss[k] = s.R.values[-1]
        Rp_ss[k] = s.Rp.values[-1]
        Rt_ss[k] = s.Rt.values[-1]
    
    f, ax = plt.subplots()
    kwargs = {"marker": "s", "alpha": 0.8}
    
    ax.plot(S_vec, R_ss, color="blue", label="R_ss", **kwargs)
    ax.plot(S_vec, Rp_ss, color="darkorange", label="Rp_ss", **kwargs)
    ax.plot(S_vec, Rt_ss, color="red", label="Rt_ss", **kwargs)
    
    # analytical solution
    Rp_ssf = model_pcycle.Rt * (1-S_vec/(S_vec + model_pcycle.k2/model_pcycle.k1))
    ax.plot(S_vec, Rp_ssf, "-k", label="Rp_ss exact", linewidth="2")
    
    ax.legend()
    ax.set_xlabel("S")
    ax.set_ylabel("amount")
    # ax.set_xscale("log")
    plt.show()


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-12-4f1ffbc467d7> in <module>
          9 results = []
         10 for k, S in enumerate(S_vec):
    ---> 11     model_pcycle.reset()
         12     model_pcycle["S"] = S
         13     s = model_pcycle.simulate(start=0, end=50, steps=100)


    NameError: name 'model_pcycle' is not defined


2.5 Steady state sensitivity (signal)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Steady state of the system is given by

.. raw:: latex

   \begin{equation}
   R^0 = R^T - R_p^0 = R^T \cdot \left(1- \frac{S}{S + \frac{k_2}{k_1}} \right) \\
   \end{equation}

Dependency on signal

.. raw:: latex

   \begin{equation}
   \frac{\partial R_p^0}{\partial S} |_{S^*} = \frac{R^T(S+\frac{k_2}{k_1}) - R^T \cdot S}{\left(S + \frac{k_2}{k_1}\right)^2}|_{S^*} = \frac{ \frac{k_2}{k_1} \cdot R^T}{ \left(S^* + \frac{k_2}{k_1}\right)^2}
   \end{equation}

.. raw:: latex

   \begin{equation}
       \frac{\partial \ln R_p^0}{\partial ln S} |_{S^*} = \frac{S}{R_p^0}\cdot \frac{\partial R_p^0}{\partial S}|_{S^*} = \frac{S^*}{R^T \cdot \left(1- \frac{S^*}{S^* + \frac{k_2}{k_1}}\right)} \cdot \frac{\frac{k_2}{k_1} R^T}{\left(S^* + \frac{k_2}{k_1} \right)^2} = \frac{\frac{k_2}{k_1}}{S^* + \frac{k_2}{k_1}} = \frac{1}{1 + \frac{S^*}{\frac{k_2}{k_1}}}
   \end{equation}

.. code:: ipython3

    S_vec = np.linspace(0, 10, num=21)
    # S_vec = np.logspace(-3, 3, num=100)
    
    dR_dRt = np.zeros_like(S_vec)
    dRp_dRt = np.zeros_like(S_vec)
    ln_dR_dRt = np.zeros_like(S_vec)
    ln_dRp_dRt = np.zeros_like(S_vec)
    
    # change
    delta = 0.1  # increase parameter 1%
    
    # run parameter scan
    results = []
    for k, S in enumerate(S_vec):
        # complete reset
        model_pcycle.resetToOrigin()
        model_pcycle["S"] = S
        s = model_pcycle.simulate(start=0, end=50, steps=100)
        s = pd.DataFrame(s, columns=s.colnames)
        
        # collect steady state values
        R_ss = s.R.values[-1]
        Rp_ss = s.Rp.values[-1]
        
        # calculate sensitivity (right sided)
        model_pcycle.resetToOrigin()
        
        # small parameter change delta S (only one-sided sensitivity)
        model_pcycle["S"] = S * (1 + delta)
        s = model_pcycle.simulate(start=0, end=50, steps=100)
        s = pd.DataFrame(s, columns=s.colnames)
        
        # collect steady state values
        R_ss_delta = s.R.values[-1]
        Rp_ss_delta = s.Rp.values[-1]
        
    
        # dR/dRt ~ (R(S+delta S)-R(Rt))/(delta*S)
        dR_dRt[k] = (R_ss_delta-R_ss)/(S*delta)
        dRp_dRt[k] = (Rp_ss_delta-Rp_ss)/(S*delta)
        
        # log sensitivities
        ln_dR_dRt[k] = S/R_ss * dR_dRt[k]
        ln_dRp_dRt[k] = S/Rp_ss * dRp_dRt[k]
            
    # plot the sensitivities
    f, (ax1, ax2) = plt.subplots(ncols=2, nrows=1, figsize=(10, 5))
    f.subplots_adjust(wspace=0.3)
    kwargs = {"marker": "s", "alpha": 0.8}
    
    ax1.set_ylabel("dR(p)/dS")
    ax1.plot(S_vec, dR_dRt, color="blue", label="dR/dS", **kwargs)
    ax1.plot(S_vec, dRp_dRt, color="darkorange", label="dRp/dS", **kwargs)
    
    ax2.set_ylabel("dlnR(p)/dlnS")
    ax2.plot(S_vec, ln_dR_dRt, color="blue", label="dlnR/dlnS", **kwargs)
    ax2.plot(S_vec, ln_dRp_dRt, color="darkorange", label="dRp/dS", **kwargs)
    
    # analytical solutions
    Rp_ssf = model_pcycle.k2/model_pcycle.k1 * model_pcycle.Rt/((S_vec + (model_pcycle.k2/model_pcycle.k1))**2)
    ax1.plot(S_vec, Rp_ssf, "-k", label="dRp_dRt exact", linewidth="2")
    
    Rp_ssf = model_pcycle.k2/model_pcycle.k1/(S_vec + (model_pcycle.k2/model_pcycle.k1))
    ax2.plot(S_vec, Rp_ssf, "-k", label="dRp_dRt exact", linewidth="2")
    
    for ax in (ax1, ax2):
        ax.legend()
        ax.set_xlabel("S")
        # ax.set_xscale("log")
    plt.show()


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-13-b660ac94f742> in <module>
         14 for k, S in enumerate(S_vec):
         15     # complete reset
    ---> 16     model_pcycle.resetToOrigin()
         17     model_pcycle["S"] = S
         18     s = model_pcycle.simulate(start=0, end=50, steps=100)


    NameError: name 'model_pcycle' is not defined


3. Two-component system
-----------------------

Two-component signaling systems typically consist of - (membrane-bound)
*histidine kinase* (HK) that senses a specific environmental stimulus
(typically homodimeric transmembrane proteins containing a histidine
phosphotransfer domain and an ATP binding domain)

-  mass action kinetics
-  :math:`H`: histidine kinase
-  :math:`R`: response regulator

.. raw:: latex

   \begin{equation}
   v_1 = k_1 \cdot S \cdot H \\
   v_2 = k_2 \cdot R \cdot H_p \\
   v_3 = k_3 \cdot R_p \\
   \frac{dH_p}{dt} = v_1 - v_2 = k_1 \cdot S \cdot H - k_2 \cdot R \cdot H_p  \\
   \frac{dR_p}{dt} = v_2 - v_3 =  k_2 \cdot R \cdot H_p - k_3 \cdot R_p  \\
   \end{equation}

mass conservation: :math:`H + H_p = H^T` and :math:`R + R_p = R^T`

.. code:: ipython3

    model_twocomp = te.loada(f"""
    model pcycle()
      v1: H -> Hp; k1*S*H;
      v2: Hp + R -> H + Rp; k2*R*Hp;
      v3: Rp -> R; k3 * Rp;
      
      // species
      species H, Hp, R, Rp;
      
      // initial values
      H = 10.0; Hp = 0.0;
      R = 10.0; Rp = 0.0;
      
      // parameters
      S = 1.0;
      k1 = 0.1; k2 = 0.1; k3 = 0.1;
      
      // rules
      Ht := H + Hp
      Rt := R + Rp
    end
    """)
    model_twocomp.selections = ["time", "H", "Hp", "R", "Rp"]
    model_twocomp.simulate(start=0, end=100, steps=200)
    model_twocomp.plot()


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-14-d8866ae53e1f> in <module>
    ----> 1 model_twocomp = te.loada(f"""
          2 model pcycle()
          3   v1: H -> Hp; k1*S*H;
          4   v2: Hp + R -> H + Rp; k2*R*Hp;
          5   v3: Rp -> R; k3 * Rp;


    NameError: name 'te' is not defined


Steady state solution can be calculated, but lengthy quadratic equation.

.. code:: ipython3

    # S_vec = np.linspace(0, 10, num=21)
    S_vec = np.logspace(-3, 3, num=100)
    
    H_ss = np.zeros_like(S_vec)
    Hp_ss = np.zeros_like(S_vec)
    R_ss = np.zeros_like(S_vec)
    Rp_ss = np.zeros_like(S_vec)
    
    # run parameter scan
    results = []
    for k, S in enumerate(S_vec):
        model_twocomp.reset()
        model_twocomp["S"] = S
        s = model_twocomp.simulate(start=0, end=500, steps=100)
        s = pd.DataFrame(s, columns=s.colnames)
        
        # store results
        results.append(s)
    
        # collect steady state values
        R_ss[k] = s.R.values[-1]
        Rp_ss[k] = s.Rp.values[-1]
        H_ss[k] = s.H.values[-1]
        Hp_ss[k] = s.Hp.values[-1]
        
    f, ax = plt.subplots()
    kwargs = {"marker": "s", "alpha": 0.8}
    ax.plot(S_vec, H_ss, color="blue", label="H_ss", **kwargs)
    ax.plot(S_vec, Hp_ss, color="darkorange", label="Hp_ss", **kwargs)
    ax.plot(S_vec, R_ss, color="darkgreen", label="R_ss", **kwargs)
    ax.plot(S_vec, Rp_ss, color="red", label="Rp_ss", **kwargs)
    ax.legend()
    ax.set_xlabel("S")
    ax.set_ylabel("amount")
    ax.set_xscale("log")
    plt.show()


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-15-c00e474149a9> in <module>
         10 results = []
         11 for k, S in enumerate(S_vec):
    ---> 12     model_twocomp.reset()
         13     model_twocomp["S"] = S
         14     s = model_twocomp.simulate(start=0, end=500, steps=100)


    NameError: name 'model_twocomp' is not defined


3.2 Perfect adaption
~~~~~~~~~~~~~~~~~~~~

.. code:: ipython3

    model_tcperfect = te.loada(f"""
    model pcycle()
      v1: H -> Hp; k1*S*H;
      v2: Hp + R -> H + Rp; k2*R*Hp;
      v3: Rp -> R; k3 * Rp * H;
      
      // initial values
      H = 10.0; Hp = 0.0;
      R = 10.0; Rp = 0.0;
      
      // parameters
      S = 1.0;
      k1 = 0.1; k2 = 0.1; k3 = 0.1;
      
      // rules
      Ht := H + Hp
      Rt := R + Rp
    end
    """)
    model_tcperfect.selections = ["time", "H", "Hp", "R", "Rp"]
    model_tcperfect.simulate(start=0, end=50, steps=200)
    model_tcperfect.plot()


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-16-8ed5631fdc32> in <module>
    ----> 1 model_tcperfect = te.loada(f"""
          2 model pcycle()
          3   v1: H -> Hp; k1*S*H;
          4   v2: Hp + R -> H + Rp; k2*R*Hp;
          5   v3: Rp -> R; k3 * Rp * H;


    NameError: name 'te' is not defined


She steady state solution for the response regulator is

.. raw:: latex

   \begin{equation}
       R_p^0 = \frac{k_1}{k_3} \cdot S
   \end{equation}

The resulting expression is independent of the expression of the
proteins :math:``R`` and :math:``H``. This is often termed *perfect
adaption* or *integral* feedback.

.. code:: ipython3

    S_vec = np.linspace(0, 10, num=100)
    # S_vec = np.logspace(-3, 3, num=100)
    
    H_ss = np.zeros_like(S_vec)
    Hp_ss = np.zeros_like(S_vec)
    R_ss = np.zeros_like(S_vec)
    Rp_ss = np.zeros_like(S_vec)
    
    # run parameter scan
    results = []
    for k, S in enumerate(S_vec):
        model_tcperfect.reset()
        model_tcperfect["Hp"] = 20
        model_tcperfect["Rp"] = 150
        model_tcperfect["S"] = S
        s = model_tcperfect.simulate(start=0, end=500, steps=100)
        s = pd.DataFrame(s, columns=s.colnames)
    
        # collect steady state values
        R_ss[k] = s.R.values[-1]
        Rp_ss[k] = s.Rp.values[-1]
        H_ss[k] = s.H.values[-1]
        Hp_ss[k] = s.Hp.values[-1]
        
    f, ax = plt.subplots()
    kwargs = {"marker": "s", "alpha": 0.8}
    ax.plot(S_vec, H_ss, color="blue", label="H_ss", **kwargs)
    ax.plot(S_vec, Hp_ss, color="darkorange", label="Hp_ss", **kwargs)
    ax.plot(S_vec, R_ss, color="darkgreen", label="R_ss", **kwargs)
    ax.plot(S_vec, Rp_ss, color="red", label="Rp_ss", **kwargs)
    
    # analytical solution
    Rp_ssf = model_tcperfect.k1/model_tcperfect.k3 * S_vec
    ax.plot(S_vec, Rp_ssf, "-k", label="dRp_dRt exact", linewidth="2")
    
    ax.legend()
    ax.set_xlabel("S")
    ax.set_ylabel("amount")
    # ax.set_xscale("log")
    plt.show()


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-17-266b2cc18fe9> in <module>
         10 results = []
         11 for k, S in enumerate(S_vec):
    ---> 12     model_tcperfect.reset()
         13     model_tcperfect["Hp"] = 20
         14     model_tcperfect["Rp"] = 150


    NameError: name 'model_tcperfect' is not defined


4. MAPK (real-world example)
----------------------------

Kholodenko2000 - Ultrasensitivity and negative feedback bring oscillations in MAPK cascade
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| This model is described in the article:
| **Negative feedback and ultrasensitivity can bring about oscillations
  in the mitogen-activated protein kinase cascades.**
| Kholodenko BN
| Eur. J. Biochem. 2000; 267(6):1583-8
| http://identifiers.org/pubmed/10712587

Abstract:

Functional organization of signal transduction into protein
phosphorylation cascades, such as the mitogen-activated protein kinase
(MAPK) cascades, greatly enhances the sensitivity of cellular targets to
external stimuli. The sensitivity increases multiplicatively with the
number of cascade levels, so that a tiny change in a stimulus results in
a large change in the response, the phenomenon referred to as
ultrasensitivity. In a variety of cell types, the MAPK cascades are
imbedded in long feedback loops, positive or negative, depending on
whether the terminal kinase stimulates or inhibits the activation of the
initial level. Here we demonstrate that a negative feedback loop
combined with intrinsic ultrasensitivity of the MAPK cascade can bring
about sustained oscillations in MAPK phosphorylation. Based on recent
kinetic data on the MAPK cascades, we predict that the period of
oscillations can range from minutes to hours. The phosphorylation level
can vary between the base level and almost 100% of the total protein.
The oscillations of the phosphorylation cascades and slow protein
diffusion in the cytoplasm can lead to intracellular waves of
phospho-proteins.

https://www.ebi.ac.uk/biomodels-main/BIOMD0000000010

.. code:: ipython3

    import tellurium as te
    
    # Load model from biomodels (may not work with https).
    r = te.loadSBMLModel("https://www.ebi.ac.uk/biomodels-main/download?mid=BIOMD0000000010")
    result = r.simulate(start=0, end=3000, steps=3000)
    r.plot(result)


::


    ---------------------------------------------------------------------------

    ModuleNotFoundError                       Traceback (most recent call last)

    <ipython-input-18-9a85773b2df0> in <module>
    ----> 1 import tellurium as te
          2 
          3 # Load model from biomodels (may not work with https).
          4 r = te.loadSBMLModel("https://www.ebi.ac.uk/biomodels-main/download?mid=BIOMD0000000010")
          5 result = r.simulate(start=0, end=3000, steps=3000)


    ModuleNotFoundError: No module named 'tellurium'


.. code:: ipython3

    print(te.sbmlToAntimony(r.getSBML()))


::


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-19-4cfabc9f32e0> in <module>
    ----> 1 print(te.sbmlToAntimony(r.getSBML()))
    

    NameError: name 'te' is not defined


