Constraint-based analysis (CBA) code
====================================

We will analyse contraint-based models of the form

.. raw:: math

   \max_{v^0} c^T \cdot v \\s.t. N \cdot v^0 = 0 \\\alpha_i \leq v_i^0 \leq \beta_i

using ``cobrapy``.

Information in this tutorial is based on
https://cobrapy.readthedocs.io/en/latest/

.. code:: ipython3

    %matplotlib inline

1. Working with metabolic models
--------------------------------

1.1 Loading model and inspecting it
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To begin with, cobrapy comes with bundled models for *Salmonella* and
*E. coli*, as well as a “textbook” model of E. coli core metabolism. To
load a test model, type

.. code:: ipython3

    import cobra
    import cobra.test
    model = cobra.test.create_test_model("textbook")

The reactions, metabolites, and genes attributes of the cobrapy model
are a special type of list called a ``cobra.DictList``, and each one is
made up of ``cobra.Reaction``, ``cobra.Metabolite`` and ``cobra.Gene``
objects respectively.

.. code:: ipython3

    print(len(model.reactions))
    print(len(model.metabolites))
    print(len(model.genes))


.. parsed-literal::

    95
    72
    137


When using Jupyter notebook this type of information is rendered as a
table.

.. code:: ipython3

    model




.. raw:: html

    
    <table>
        <tr>
            <td><strong>Name</strong></td>
            <td>e_coli_core</td>
        </tr><tr>
            <td><strong>Memory address</strong></td>
            <td>0x07f352d3a6128</td>
        </tr><tr>
            <td><strong>Number of metabolites</strong></td>
            <td>72</td>
        </tr><tr>
            <td><strong>Number of reactions</strong></td>
            <td>95</td>
        </tr><tr>
            <td><strong>Number of groups</strong></td>
            <td>0</td>
        </tr><tr>
            <td><strong>Objective expression</strong></td>
            <td>1.0*Biomass_Ecoli_core - 1.0*Biomass_Ecoli_core_reverse_2cdba</td>
        </tr><tr>
            <td><strong>Compartments</strong></td>
            <td>cytosol, extracellular</td>
        </tr>
      </table>



Just like a regular list, objects in the ``DictList`` can be retrieved
by index. For example, to get the 30th reaction in the model (at index
29 because of 0-indexing):

.. code:: ipython3

    model.reactions[29]




.. raw:: html

    
    <table>
        <tr>
            <td><strong>Reaction identifier</strong></td><td>EX_glu__L_e</td>
        </tr><tr>
            <td><strong>Name</strong></td><td>L-Glutamate exchange</td>
        </tr><tr>
            <td><strong>Memory address</strong></td>
            <td>0x07f352d2d6438</td>
        </tr><tr>
            <td><strong>Stoichiometry</strong></td>
            <td>
                <p style='text-align:right'>glu__L_e --> </p>
                <p style='text-align:right'>L-Glutamate --> </p>
            </td>
        </tr><tr>
            <td><strong>GPR</strong></td><td></td>
        </tr><tr>
            <td><strong>Lower bound</strong></td><td>0.0</td>
        </tr><tr>
            <td><strong>Upper bound</strong></td><td>1000.0</td>
        </tr>
    </table>




Additionally, items can be retrieved by their ``id`` using the
``DictList.get_by_id()`` function. For example, to get the cytosolic atp
metabolite object (the id is “atp\_c”), we can do the following:

.. code:: ipython3

    model.metabolites.get_by_id("atp_c")




.. raw:: html

    
    <table>
        <tr>
            <td><strong>Metabolite identifier</strong></td><td>atp_c</td>
        </tr><tr>
            <td><strong>Name</strong></td><td>ATP</td>
        </tr><tr>
            <td><strong>Memory address</strong></td>
            <td>0x07f352d3396d8</td>
        </tr><tr>
            <td><strong>Formula</strong></td><td>C10H12N5O13P3</td>
        </tr><tr>
            <td><strong>Compartment</strong></td><td>c</td>
        </tr><tr>
            <td><strong>In 13 reaction(s)</strong></td><td>
                SUCOAS, PFK, Biomass_Ecoli_core, PPS, PPCK, GLNabc, ADK1, ACKr, ATPS4r, GLNS, PYK, PGK, ATPM</td>
        </tr>
    </table>



1.2 Reactions
~~~~~~~~~~~~~

We will consider the reaction glucose 6-phosphate isomerase, which
interconverts glucose 6-phosphate and fructose 6-phosphate. The reaction
id for this reaction in our test model is PGI.

.. code:: ipython3

    pgi = model.reactions.get_by_id("PGI")
    pgi




.. raw:: html

    
    <table>
        <tr>
            <td><strong>Reaction identifier</strong></td><td>PGI</td>
        </tr><tr>
            <td><strong>Name</strong></td><td>glucose-6-phosphate isomerase</td>
        </tr><tr>
            <td><strong>Memory address</strong></td>
            <td>0x07f352d22ee80</td>
        </tr><tr>
            <td><strong>Stoichiometry</strong></td>
            <td>
                <p style='text-align:right'>g6p_c <=> f6p_c</p>
                <p style='text-align:right'>D-Glucose 6-phosphate <=> D-Fructose 6-phosphate</p>
            </td>
        </tr><tr>
            <td><strong>GPR</strong></td><td>b4025</td>
        </tr><tr>
            <td><strong>Lower bound</strong></td><td>-1000.0</td>
        </tr><tr>
            <td><strong>Upper bound</strong></td><td>1000.0</td>
        </tr>
    </table>




We can also ensure the reaction is mass balanced. This function will
return elements which violate mass balance. If it comes back empty, then
the reaction is mass balanced.

.. code:: ipython3

    pgi.check_mass_balance()




.. parsed-literal::

    {}



1.3 Metabolites
~~~~~~~~~~~~~~~

We will consider cytosolic atp as our metabolite, which has the id
"atp\_c" in our test model.

.. code:: ipython3

    atp = model.metabolites.get_by_id("atp_c")
    atp




.. raw:: html

    
    <table>
        <tr>
            <td><strong>Metabolite identifier</strong></td><td>atp_c</td>
        </tr><tr>
            <td><strong>Name</strong></td><td>ATP</td>
        </tr><tr>
            <td><strong>Memory address</strong></td>
            <td>0x07f352d3396d8</td>
        </tr><tr>
            <td><strong>Formula</strong></td><td>C10H12N5O13P3</td>
        </tr><tr>
            <td><strong>Compartment</strong></td><td>c</td>
        </tr><tr>
            <td><strong>In 13 reaction(s)</strong></td><td>
                SUCOAS, PFK, Biomass_Ecoli_core, PPS, PPCK, GLNabc, ADK1, ACKr, ATPS4r, GLNS, PYK, PGK, ATPM</td>
        </tr>
    </table>



1.4 Genes
~~~~~~~~~

The gene\_reaction\_rule is a boolean representation of the gene
requirements for this reaction to be active as described in
Schellenberger2011.

The GPR is stored as the gene\_reaction\_rule for a Reaction object as a
string.

.. code:: ipython3

    gpr = pgi.gene_reaction_rule
    gpr




.. parsed-literal::

    'b4025'



Corresponding gene objects also exist. These objects are tracked by the
reactions itself, as well as by the model

.. code:: ipython3

    pgi.genes




.. parsed-literal::

    frozenset({<Gene b4025 at 0x7f352d311208>})



.. code:: ipython3

    pgi_gene = model.genes.get_by_id("b4025")
    pgi_gene




.. raw:: html

    
    <table>
        <tr>
            <td><strong>Gene identifier</strong></td><td>b4025</td>
        </tr><tr>
            <td><strong>Name</strong></td><td>pgi</td>
        </tr><tr>
            <td><strong>Memory address</strong></td>
            <td>0x07f352d311208</td>
        </tr><tr>
            <td><strong>Functional</strong></td><td>True</td>
        </tr><tr>
            <td><strong>In 1 reaction(s)</strong></td><td>
                PGI</td>
        </tr>
    </table>



Each gene keeps track of the reactions it catalyzes

.. code:: ipython3

    pgi_gene.reactions




.. parsed-literal::

    frozenset({<Reaction PGI at 0x7f352d22ee80>})



1.5 Export as SBML & Visualization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The model can be exported to standard exchange formats, e.g., Systems
Biology Markup Language (SBML) and be analyzed in other tools like for
instance ``Cytoscape`` with ``cy3sbml``

.. code:: ipython3

    from cobra.io import write_sbml_model
    write_sbml_model(model, "./models/e_coli_core.xml")

For instance after loading the model with ``cy3sbml`` we can get an
overview over the metabolic network with the associated gene-product
rules. Note the typical hairball structure of biological networks due to
highly connected nodes (cofactor metabolites).

2. Simulating with FBA
----------------------

Simulations using flux balance analysis can be solved using
Model.optimize(). This will maximize or minimize (maximizing is the
default) flux through the objective reactions.

.. code:: ipython3

    import cobra.test
    model = cobra.test.create_test_model("textbook")
    model




.. raw:: html

    
    <table>
        <tr>
            <td><strong>Name</strong></td>
            <td>e_coli_core</td>
        </tr><tr>
            <td><strong>Memory address</strong></td>
            <td>0x07f352d296940</td>
        </tr><tr>
            <td><strong>Number of metabolites</strong></td>
            <td>72</td>
        </tr><tr>
            <td><strong>Number of reactions</strong></td>
            <td>95</td>
        </tr><tr>
            <td><strong>Number of groups</strong></td>
            <td>0</td>
        </tr><tr>
            <td><strong>Objective expression</strong></td>
            <td>1.0*Biomass_Ecoli_core - 1.0*Biomass_Ecoli_core_reverse_2cdba</td>
        </tr><tr>
            <td><strong>Compartments</strong></td>
            <td>cytosol, extracellular</td>
        </tr>
      </table>



2.1. Running Flux Balance Analysis (FBA)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code:: ipython3

    solution = model.optimize()
    print(solution)


.. parsed-literal::

    <Solution 0.874 at 0x7f352d296da0>


The ``Model.optimize()`` function will return a Solution object. A
solution object has several attributes:

-  ``objective_value``: the objective value
-  ``status``: the status from the linear programming solver
-  ``fluxes``: a pandas series with flux indexed by reaction identifier.
   The flux for a reaction variable is the difference of the primal
   values for the forward and reverse reaction variables.
-  ``shadow_prices``: a pandas series with shadow price indexed by the
   metabolite identifier.

For example, after the last call to ``model.optimize()``, if the
optimization succeeds it’s status will be optimal. In case the model is
infeasible an error is raised.

2.1.1. Analyzing FBA solutions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Models solved using FBA can be further analyzed by using summary
methods, which output printed text to give a quick representation of
model behavior. Calling the summary method on the entire model displays
information on the input and output behavior of the model, along with
the optimized objective.

.. code:: ipython3

    model.summary()




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead tr th {
            text-align: left;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr>
          <th></th>
          <th colspan="2" halign="left">IN_FLUXES</th>
          <th colspan="2" halign="left">OUT_FLUXES</th>
          <th colspan="2" halign="left">OBJECTIVES</th>
        </tr>
        <tr>
          <th></th>
          <th>ID</th>
          <th>FLUX</th>
          <th>ID</th>
          <th>FLUX</th>
          <th>ID</th>
          <th>FLUX</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>0</th>
          <td>o2_e</td>
          <td>21.799493</td>
          <td>h2o_e</td>
          <td>29.175827</td>
          <td>Biomass_Ecoli_core</td>
          <td>0.873922</td>
        </tr>
        <tr>
          <th>1</th>
          <td>glc__D_e</td>
          <td>10.000000</td>
          <td>co2_e</td>
          <td>22.809833</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>2</th>
          <td>nh4_e</td>
          <td>4.765319</td>
          <td>h_e</td>
          <td>17.530865</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>3</th>
          <td>pi_e</td>
          <td>3.214895</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
      </tbody>
    </table>
    </div>



In addition, the input-output behavior of individual metabolites can
also be inspected using summary methods. For instance, the following
commands can be used to examine the overall redox balance of the model

.. code:: ipython3

    model.metabolites.nadh_c.summary()




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead th {
            text-align: right;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr style="text-align: right;">
          <th></th>
          <th></th>
          <th>PERCENT</th>
          <th>FLUX</th>
          <th>REACTION_STRING</th>
        </tr>
        <tr>
          <th>RXN_STAT</th>
          <th>ID</th>
          <th></th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th rowspan="5" valign="top">PRODUCING</th>
          <th>GAPD</th>
          <td>41.582168</td>
          <td>16.023526</td>
          <td>g3p_c + nad_c + pi_c &lt;=&gt; 13dpg_c + h_c + nadh_c</td>
        </tr>
        <tr>
          <th>PDH</th>
          <td>24.088820</td>
          <td>9.282533</td>
          <td>coa_c + nad_c + pyr_c --&gt; accoa_c + co2_c + na...</td>
        </tr>
        <tr>
          <th>AKGDH</th>
          <td>13.142408</td>
          <td>5.064376</td>
          <td>akg_c + coa_c + nad_c --&gt; co2_c + nadh_c + suc...</td>
        </tr>
        <tr>
          <th>MDH</th>
          <td>13.142408</td>
          <td>5.064376</td>
          <td>mal__L_c + nad_c &lt;=&gt; h_c + nadh_c + oaa_c</td>
        </tr>
        <tr>
          <th>Biomass_Ecoli_core</th>
          <td>8.044196</td>
          <td>3.099800</td>
          <td>1.496 3pg_c + 3.7478 accoa_c + 59.81 atp_c + 0...</td>
        </tr>
        <tr>
          <th>CONSUMING</th>
          <th>NADH16</th>
          <td>100.000000</td>
          <td>38.534610</td>
          <td>4.0 h_c + nadh_c + q8_c --&gt; 3.0 h_e + nad_c + ...</td>
        </tr>
      </tbody>
    </table>
    </div>



Or to get a sense of the main energy production and consumption
reactions

.. code:: ipython3

    model.metabolites.atp_c.summary()




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead th {
            text-align: right;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr style="text-align: right;">
          <th></th>
          <th></th>
          <th>PERCENT</th>
          <th>FLUX</th>
          <th>REACTION_STRING</th>
        </tr>
        <tr>
          <th>RXN_STAT</th>
          <th>ID</th>
          <th></th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th rowspan="4" valign="top">PRODUCING</th>
          <th>ATPS4r</th>
          <td>66.579799</td>
          <td>45.514010</td>
          <td>adp_c + 4.0 h_e + pi_c &lt;=&gt; atp_c + h2o_c + 3.0...</td>
        </tr>
        <tr>
          <th>PGK</th>
          <td>23.439885</td>
          <td>16.023526</td>
          <td>3pg_c + atp_c &lt;=&gt; 13dpg_c + adp_c</td>
        </tr>
        <tr>
          <th>SUCOAS</th>
          <td>7.408381</td>
          <td>5.064376</td>
          <td>atp_c + coa_c + succ_c &lt;=&gt; adp_c + pi_c + succ...</td>
        </tr>
        <tr>
          <th>PYK</th>
          <td>2.571936</td>
          <td>1.758177</td>
          <td>adp_c + h_c + pep_c --&gt; atp_c + pyr_c</td>
        </tr>
        <tr>
          <th rowspan="3" valign="top">CONSUMING</th>
          <th>Biomass_Ecoli_core</th>
          <td>76.461640</td>
          <td>52.269245</td>
          <td>1.496 3pg_c + 3.7478 accoa_c + 59.81 atp_c + 0...</td>
        </tr>
        <tr>
          <th>ATPM</th>
          <td>12.273243</td>
          <td>8.390000</td>
          <td>atp_c + h2o_c --&gt; adp_c + h_c + pi_c</td>
        </tr>
        <tr>
          <th>PFK</th>
          <td>10.938227</td>
          <td>7.477382</td>
          <td>atp_c + f6p_c --&gt; adp_c + fdp_c + h_c</td>
        </tr>
      </tbody>
    </table>
    </div>



2.2 Changing the objectives
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The objective function is determined from the objective\_coefficient
attribute of the objective reaction(s). Generally, a “biomass” function
which describes the composition of metabolites which make up a cell is
used.

.. code:: ipython3

    biomass_rxn = model.reactions.get_by_id("Biomass_Ecoli_core")
    biomass_rxn




.. raw:: html

    
    <table>
        <tr>
            <td><strong>Reaction identifier</strong></td><td>Biomass_Ecoli_core</td>
        </tr><tr>
            <td><strong>Name</strong></td><td>Biomass Objective Function with GAM</td>
        </tr><tr>
            <td><strong>Memory address</strong></td>
            <td>0x07f352d1b9dd8</td>
        </tr><tr>
            <td><strong>Stoichiometry</strong></td>
            <td>
                <p style='text-align:right'>1.496 3pg_c + 3.7478 accoa_c + 59.81 atp_c + 0.361 e4p_c + 0.0709 f6p_c + 0.129 g3p_c + 0.205 g6p_c + 0.2557 gln__L_c + 4.9414 glu__L_c + 59.81 h2o_c + 3.547 nad_c + 13.0279 nadph_c + 1.7867 oaa_c ...</p>
                <p style='text-align:right'>1.496 3-Phospho-D-glycerate + 3.7478 Acetyl-CoA + 59.81 ATP + 0.361 D-Erythrose 4-phosphate + 0.0709 D-Fructose 6-phosphate + 0.129 Glyceraldehyde 3-phosphate + 0.205 D-Glucose 6-phosphate + 0.2557...</p>
            </td>
        </tr><tr>
            <td><strong>GPR</strong></td><td></td>
        </tr><tr>
            <td><strong>Lower bound</strong></td><td>0.0</td>
        </tr><tr>
            <td><strong>Upper bound</strong></td><td>1000.0</td>
        </tr>
    </table>




Currently in the model, there is only one reaction in the objective (the
biomass reaction), with an linear coefficient of 1.

.. code:: ipython3

    from cobra.util.solver import linear_reaction_coefficients
    linear_reaction_coefficients(model)




.. parsed-literal::

    {<Reaction Biomass_Ecoli_core at 0x7f352d1b9dd8>: 1.0}



The objective function can be changed by assigning Model.objective,
which can be a reaction object (or just it’s name), or a dict of
{Reaction: objective\_coefficient}.

.. code:: ipython3

    # change the objective to ATPM
    model.objective = "ATPM"
    
    # The upper bound should be 1000, so that we get
    # the actual optimal value
    model.reactions.get_by_id("ATPM").upper_bound = 1000.
    linear_reaction_coefficients(model)




.. parsed-literal::

    {<Reaction ATPM at 0x7f352d1b9978>: 1.0}



.. code:: ipython3

    model.optimize().objective_value




.. parsed-literal::

    174.99999999999966



.. code:: ipython3

    model.summary()




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead tr th {
            text-align: left;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr>
          <th></th>
          <th colspan="2" halign="left">IN_FLUXES</th>
          <th colspan="2" halign="left">OUT_FLUXES</th>
          <th colspan="2" halign="left">OBJECTIVES</th>
        </tr>
        <tr>
          <th></th>
          <th>ID</th>
          <th>FLUX</th>
          <th>ID</th>
          <th>FLUX</th>
          <th>ID</th>
          <th>FLUX</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>0</th>
          <td>o2_e</td>
          <td>60.0</td>
          <td>co2_e</td>
          <td>60.0</td>
          <td>ATPM</td>
          <td>175.0</td>
        </tr>
        <tr>
          <th>1</th>
          <td>glc__D_e</td>
          <td>10.0</td>
          <td>h2o_e</td>
          <td>60.0</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
      </tbody>
    </table>
    </div>



.. code:: ipython3

    model.metabolites.atp_c.summary()




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead th {
            text-align: right;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr style="text-align: right;">
          <th></th>
          <th></th>
          <th>PERCENT</th>
          <th>FLUX</th>
          <th>REACTION_STRING</th>
        </tr>
        <tr>
          <th>RXN_STAT</th>
          <th>ID</th>
          <th></th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th rowspan="4" valign="top">PRODUCING</th>
          <th>ATPS4r</th>
          <td>72.972973</td>
          <td>135.0</td>
          <td>adp_c + 4.0 h_e + pi_c &lt;=&gt; atp_c + h2o_c + 3.0...</td>
        </tr>
        <tr>
          <th>SUCOAS</th>
          <td>10.810811</td>
          <td>20.0</td>
          <td>atp_c + coa_c + succ_c &lt;=&gt; adp_c + pi_c + succ...</td>
        </tr>
        <tr>
          <th>PGK</th>
          <td>10.810811</td>
          <td>20.0</td>
          <td>3pg_c + atp_c &lt;=&gt; 13dpg_c + adp_c</td>
        </tr>
        <tr>
          <th>PYK</th>
          <td>5.405405</td>
          <td>10.0</td>
          <td>adp_c + h_c + pep_c --&gt; atp_c + pyr_c</td>
        </tr>
        <tr>
          <th rowspan="2" valign="top">CONSUMING</th>
          <th>ATPM</th>
          <td>94.594595</td>
          <td>175.0</td>
          <td>atp_c + h2o_c --&gt; adp_c + h_c + pi_c</td>
        </tr>
        <tr>
          <th>PFK</th>
          <td>5.405405</td>
          <td>10.0</td>
          <td>atp_c + f6p_c --&gt; adp_c + fdp_c + h_c</td>
        </tr>
      </tbody>
    </table>
    </div>



3 Flux Variability Analysis (FVA)
---------------------------------

FBA will not give always give unique solution, because multiple flux
states can achieve the same optimum. FVA (or flux variability analysis)
finds the ranges of each metabolic flux at the optimum.

.. code:: ipython3

    from cobra.flux_analysis import flux_variability_analysis
    flux_variability_analysis(model, model.reactions[:10])




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead th {
            text-align: right;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr style="text-align: right;">
          <th></th>
          <th>minimum</th>
          <th>maximum</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>ACALD</th>
          <td>-5.247085e-14</td>
          <td>0.000000e+00</td>
        </tr>
        <tr>
          <th>ACALDt</th>
          <td>-5.247085e-14</td>
          <td>0.000000e+00</td>
        </tr>
        <tr>
          <th>ACKr</th>
          <td>-8.024953e-14</td>
          <td>0.000000e+00</td>
        </tr>
        <tr>
          <th>ACONTa</th>
          <td>2.000000e+01</td>
          <td>2.000000e+01</td>
        </tr>
        <tr>
          <th>ACONTb</th>
          <td>2.000000e+01</td>
          <td>2.000000e+01</td>
        </tr>
        <tr>
          <th>ACt2r</th>
          <td>-8.024953e-14</td>
          <td>0.000000e+00</td>
        </tr>
        <tr>
          <th>ADK1</th>
          <td>0.000000e+00</td>
          <td>3.410605e-13</td>
        </tr>
        <tr>
          <th>AKGDH</th>
          <td>2.000000e+01</td>
          <td>2.000000e+01</td>
        </tr>
        <tr>
          <th>AKGt2r</th>
          <td>-3.172656e-14</td>
          <td>0.000000e+00</td>
        </tr>
        <tr>
          <th>ALCD2x</th>
          <td>-4.547474e-14</td>
          <td>0.000000e+00</td>
        </tr>
      </tbody>
    </table>
    </div>



Setting parameter fraction\_of\_optimium=0.90 would give the flux ranges
for reactions at 90% optimality.

.. code:: ipython3

    cobra.flux_analysis.flux_variability_analysis(
        model, model.reactions[:10], fraction_of_optimum=0.9)




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead th {
            text-align: right;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr style="text-align: right;">
          <th></th>
          <th>minimum</th>
          <th>maximum</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>ACALD</th>
          <td>-2.692308</td>
          <td>0.0</td>
        </tr>
        <tr>
          <th>ACALDt</th>
          <td>-2.692308</td>
          <td>0.0</td>
        </tr>
        <tr>
          <th>ACKr</th>
          <td>-4.117647</td>
          <td>0.0</td>
        </tr>
        <tr>
          <th>ACONTa</th>
          <td>8.461538</td>
          <td>20.0</td>
        </tr>
        <tr>
          <th>ACONTb</th>
          <td>8.461538</td>
          <td>20.0</td>
        </tr>
        <tr>
          <th>ACt2r</th>
          <td>-4.117647</td>
          <td>0.0</td>
        </tr>
        <tr>
          <th>ADK1</th>
          <td>0.000000</td>
          <td>17.5</td>
        </tr>
        <tr>
          <th>AKGDH</th>
          <td>2.500000</td>
          <td>20.0</td>
        </tr>
        <tr>
          <th>AKGt2r</th>
          <td>-1.489362</td>
          <td>0.0</td>
        </tr>
        <tr>
          <th>ALCD2x</th>
          <td>-2.333333</td>
          <td>0.0</td>
        </tr>
      </tbody>
    </table>
    </div>



3.1.1. Running FVA in summary methods
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Flux variability analysis can also be embedded in calls to summary
methods. For instance, the expected variability in substrate consumption
and product formation can be quickly found by

.. code:: ipython3

    model.optimize()
    model.summary(fva=0.95)




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead tr th {
            text-align: left;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr>
          <th></th>
          <th colspan="4" halign="left">IN_FLUXES</th>
          <th colspan="4" halign="left">OUT_FLUXES</th>
          <th colspan="2" halign="left">OBJECTIVES</th>
        </tr>
        <tr>
          <th></th>
          <th>ID</th>
          <th>FLUX</th>
          <th>FLUX_MIN</th>
          <th>FLUX_MAX</th>
          <th>ID</th>
          <th>FLUX</th>
          <th>FLUX_MIN</th>
          <th>FLUX_MAX</th>
          <th>ID</th>
          <th>FLUX</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>0</th>
          <td>o2_e</td>
          <td>60.0</td>
          <td>55.882353</td>
          <td>60.000000</td>
          <td>h2o_e</td>
          <td>60.0</td>
          <td>54.166667</td>
          <td>60.000000</td>
          <td>ATPM</td>
          <td>175.0</td>
        </tr>
        <tr>
          <th>1</th>
          <td>glc__D_e</td>
          <td>10.0</td>
          <td>9.500000</td>
          <td>10.000000</td>
          <td>co2_e</td>
          <td>60.0</td>
          <td>54.166667</td>
          <td>60.000000</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>2</th>
          <td>nh4_e</td>
          <td>-0.0</td>
          <td>-0.000000</td>
          <td>0.673077</td>
          <td>h_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>5.833333</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>3</th>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>for_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>5.833333</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>4</th>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>ac_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>2.058824</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>5</th>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>acald_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>1.346154</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>6</th>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>pyr_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>1.346154</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>7</th>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>etoh_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>1.166667</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>8</th>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>lac__D_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>1.129032</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>9</th>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>succ_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>0.875000</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>10</th>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>akg_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>0.744681</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>11</th>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>NaN</td>
          <td>glu__L_e</td>
          <td>0.0</td>
          <td>0.000000</td>
          <td>0.673077</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
      </tbody>
    </table>
    </div>



4 Flux sampling
---------------

The easiest way to get started with flux sampling is using the sample
function in the flux\_analysis submodule. sample takes at least two
arguments: a cobra model and the number of samples you want to generate.

This samples from the flux cone of possible solutions (see
Megchelenbrink2014 for details).

.. code:: ipython3

    from cobra.test import create_test_model
    from cobra.sampling import sample
    
    model = create_test_model("textbook")
    s = sample(model, 500)
    s.head()




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead th {
            text-align: right;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr style="text-align: right;">
          <th></th>
          <th>ACALD</th>
          <th>ACALDt</th>
          <th>ACKr</th>
          <th>ACONTa</th>
          <th>ACONTb</th>
          <th>ACt2r</th>
          <th>ADK1</th>
          <th>AKGDH</th>
          <th>AKGt2r</th>
          <th>ALCD2x</th>
          <th>...</th>
          <th>RPI</th>
          <th>SUCCt2_2</th>
          <th>SUCCt3</th>
          <th>SUCDi</th>
          <th>SUCOAS</th>
          <th>TALA</th>
          <th>THD2</th>
          <th>TKT1</th>
          <th>TKT2</th>
          <th>TPI</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>0</th>
          <td>-0.768505</td>
          <td>-0.200460</td>
          <td>-0.363252</td>
          <td>12.839245</td>
          <td>12.839245</td>
          <td>-0.363252</td>
          <td>1.586416</td>
          <td>12.009624</td>
          <td>-0.024535</td>
          <td>-0.568045</td>
          <td>...</td>
          <td>-1.424147</td>
          <td>7.230094</td>
          <td>8.670953</td>
          <td>837.014888</td>
          <td>-12.009624</td>
          <td>1.309209</td>
          <td>155.936005</td>
          <td>1.309209</td>
          <td>1.262988</td>
          <td>8.280135</td>
        </tr>
        <tr>
          <th>1</th>
          <td>-2.118750</td>
          <td>-0.234188</td>
          <td>-2.301912</td>
          <td>9.877631</td>
          <td>9.877631</td>
          <td>-2.301912</td>
          <td>11.405420</td>
          <td>6.660855</td>
          <td>-0.387624</td>
          <td>-1.884562</td>
          <td>...</td>
          <td>-0.723132</td>
          <td>4.594009</td>
          <td>4.836881</td>
          <td>738.301432</td>
          <td>-6.660855</td>
          <td>0.681076</td>
          <td>29.152390</td>
          <td>0.681076</td>
          <td>0.664164</td>
          <td>9.220184</td>
        </tr>
        <tr>
          <th>2</th>
          <td>-0.552787</td>
          <td>-0.195758</td>
          <td>-0.218767</td>
          <td>11.333856</td>
          <td>11.333856</td>
          <td>-0.218767</td>
          <td>4.697185</td>
          <td>7.080047</td>
          <td>-1.721080</td>
          <td>-0.357029</td>
          <td>...</td>
          <td>-2.511283</td>
          <td>19.630447</td>
          <td>19.771497</td>
          <td>767.387059</td>
          <td>-7.080047</td>
          <td>2.477836</td>
          <td>14.417895</td>
          <td>2.477836</td>
          <td>2.464385</td>
          <td>7.310041</td>
        </tr>
        <tr>
          <th>3</th>
          <td>-1.581619</td>
          <td>-0.639503</td>
          <td>-6.294526</td>
          <td>2.712331</td>
          <td>2.712331</td>
          <td>-6.294526</td>
          <td>2.326558</td>
          <td>0.858301</td>
          <td>-0.810083</td>
          <td>-0.942116</td>
          <td>...</td>
          <td>-3.753393</td>
          <td>0.613500</td>
          <td>2.149064</td>
          <td>583.986153</td>
          <td>-0.858301</td>
          <td>3.704406</td>
          <td>16.354772</td>
          <td>3.704406</td>
          <td>3.684707</td>
          <td>5.691613</td>
        </tr>
        <tr>
          <th>4</th>
          <td>-1.240200</td>
          <td>-0.270197</td>
          <td>-4.114028</td>
          <td>3.016037</td>
          <td>3.016037</td>
          <td>-4.114028</td>
          <td>1.369500</td>
          <td>0.726234</td>
          <td>-0.776360</td>
          <td>-0.970003</td>
          <td>...</td>
          <td>-5.086087</td>
          <td>11.670695</td>
          <td>11.807545</td>
          <td>508.353572</td>
          <td>-0.726234</td>
          <td>5.014887</td>
          <td>12.909605</td>
          <td>5.014887</td>
          <td>4.986255</td>
          <td>4.300728</td>
        </tr>
      </tbody>
    </table>
    <p>5 rows × 95 columns</p>
    </div>



.. code:: ipython3

    import altair as alt
    p1 = alt.Chart(s).mark_tick().encode(
        x='PGI:Q',
    )
    p2 = alt.Chart(s).mark_bar().encode(
        alt.X('PGI:Q', bin=True),
        y='count()'
    )
    p1 & p2




.. parsed-literal::

    <VegaLite 3 object>
    
    If you see this message, it means the renderer has not been properly enabled
    for the frontend that you are using. For more information, see
    https://altair-viz.github.io/user_guide/troubleshooting.html




5. Simulating deletions
-----------------------

.. code:: ipython3

    import pandas as pd
    import cobra.test
    from cobra.flux_analysis import (
        single_gene_deletion, single_reaction_deletion, double_gene_deletion,
        double_reaction_deletion)
    
    model = cobra.test.create_test_model("textbook")

5.1. Knocking out single genes and reactions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A commonly asked question when analyzing metabolic models is what will
happen if a certain reaction was not allowed to have any flux at all.
This can tested using cobrapy by

.. code:: ipython3

    print('complete model: ', model.optimize())
    with model:
        model.reactions.PFK.knock_out()
        print('pfk knocked out: ', model.optimize())


.. parsed-literal::

    complete model:  <Solution 0.874 at 0x7f35886346d8>
    pfk knocked out:  <Solution 0.704 at 0x7f3588634668>


For evaluating genetic manipulation strategies, it is more interesting
to examine what happens if given genes are knocked out as doing so can
affect no reactions in case of redundancy, or more reactions if gene
when is participating in more than one reaction.

.. code:: ipython3

    print('complete model: ', model.optimize())
    with model:
        model.genes.b1723.knock_out()
        print('pfkA knocked out: ', model.optimize())
        model.genes.b3916.knock_out()
        print('pfkB knocked out: ', model.optimize())


.. parsed-literal::

    complete model:  <Solution 0.874 at 0x7f358862e8d0>
    pfkA knocked out:  <Solution 0.874 at 0x7f358862ee80>
    pfkB knocked out:  <Solution 0.704 at 0x7f358862e8d0>


5.2 Single deletions
~~~~~~~~~~~~~~~~~~~~

Perform all single gene deletions on a model

.. code:: ipython3

    deletion_results = single_gene_deletion(model)

These can also be done for only a subset of genes

.. code:: ipython3

    single_gene_deletion(model, model.genes[:20])




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead th {
            text-align: right;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr style="text-align: right;">
          <th></th>
          <th>growth</th>
          <th>status</th>
        </tr>
        <tr>
          <th>ids</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>(b1478)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b1276)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2296)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2587)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b3115)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0356)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0727)</th>
          <td>0.858307</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0726)</th>
          <td>0.858307</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b1241)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0118)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0474)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b1849)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(s0001)</th>
          <td>0.211141</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b3732)</th>
          <td>0.374230</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0351)</th>
          <td>0.873922</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0116)</th>
          <td>0.782351</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b3734)</th>
          <td>0.374230</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b3736)</th>
          <td>0.374230</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b3735)</th>
          <td>0.374230</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b3733)</th>
          <td>0.374230</td>
          <td>optimal</td>
        </tr>
      </tbody>
    </table>
    </div>



5.3 Double deletions
~~~~~~~~~~~~~~~~~~~~

Double deletions run in a similar way. Passing in return\_frame=True
will cause them to format the results as a ``pandas.DataFrame``.

.. code:: ipython3

    double_gene_deletion(
        model, model.genes[-5:], return_frame=True).round(4)




.. raw:: html

    <div>
    <style scoped>
        .dataframe tbody tr th:only-of-type {
            vertical-align: middle;
        }
    
        .dataframe tbody tr th {
            vertical-align: top;
        }
    
        .dataframe thead th {
            text-align: right;
        }
    </style>
    <table border="1" class="dataframe">
      <thead>
        <tr style="text-align: right;">
          <th></th>
          <th>growth</th>
          <th>status</th>
        </tr>
        <tr>
          <th>ids</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>(b3919, b0008)</th>
          <td>0.7040</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2935, b2465)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2935, b0008)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2465)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2465, b2464)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0008)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b3919, b2465)</th>
          <td>0.7040</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0008, b2465)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2464)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2935)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b3919, b2464)</th>
          <td>0.7040</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2935, b3919)</th>
          <td>0.7040</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b3919)</th>
          <td>0.7040</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b2935, b2464)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
        <tr>
          <th>(b0008, b2464)</th>
          <td>0.8739</td>
          <td>optimal</td>
        </tr>
      </tbody>
    </table>
    </div>



