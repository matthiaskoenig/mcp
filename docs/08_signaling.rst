Signaling pathways
==================
until now: metabolism

.. math:: \frac{d}{dt} \vec{x} = N \cdot \vec{v}

describing: mass flow; metabolic flux

**Signal transduction**

- information transfer
- general principle of *activation of response regulator* :math:`R` by *signal* :math:`S`
- signal often binds to receptors activating a signal transduction cascade/path which ultimately results in a *cellular response*
- often complex combination of:
    - receptor binding
    - complex formation
    - protein modification (often phosphorylation)
    - activation of gene transcription

TODO: Figure


**Phosphorylation cycle**

One of the most important signaling motives are protein phosphorylation cycles, i.e., a post-translational modification of a protein in which an amino acid residue is phosphorylated by a protein kinase, and dephosphorylated by a protein phosphatase.

Phosphorylation is a very common mechanism for regulating the activity of enzymes and is the most common post-translational modification. Other modifications are for instance glycosylation, acetylation or lipidation and can be modelled in a very similar manner.

Phosphorylation changes the structural conformation of the protein, the phosphorylated protein has a modified function (e.g. phosphorylation may activate or deactivate a protein)

Important examples are *two-component* signaling systems and mitogen-activated protein kinase (MAPK or MAP kinase) systems (as well as many others, e.g., phosphorylation of enzymes).

Simple models follow mass-action kinetics. For example the following simple phosphorylation cycle where the kinase activity represents the signal :math:`S`, and the activity of the phosphatase is assumed to be constant (and included in the rate constant :math:`k_2`.)

TODO: Figure


.. math:: v_1 = k_1 \cdot S \cdot R
.. math:: v_2 = k_2 \cdot R_p
.. math:: \frac{dR_p}{dt} = v_1 - v_2 = k_1 \cdot S \cdot R - k_2 \cdot R_p.
.. math:: \frac{dR}{dt} = -v_1 + v_2 = -\frac{dR}{dt}

The system exhibits mass conservation :math:`R_p + R = R^T`, where :math:`R^T` denotes the amount of total protein.

.. math:: \frac{d (R + R_p)}{dt} = 0

Steady state of the system is given by
.. math:: \frac{dR_p}{dt} = k_1 \cdot S \cdot R - k_2 \cdot R_p = k1 \cdot S \cdot (R^T - R_p) - k_2 \cdot R_p = 0

.. math:: R_p^0 = R^T \left(\frac{S}{S + \frac{k_2}{k_1}} \right)

.. math:: R_p^0 = R^T \left(\frac{S}{S + \frac{k_2}{k_1}} \right)

Michaelis-Menten like response

TODO: Figure R_p^0



Famous examples are MAPK signaling network.

(show example network in exercises).

Two-component system
--------------------
A two-component regulatory system serves as a basic stimulus-response coupling mechanism to allow organisms to sense and respond to changes in many different environmental conditions

Two-component signaling systems typically consist of

- (membrane-bound) *histidine kinase* (HK) that senses a specific environmental stimulus (typically homodimeric transmembrane proteins containing a histidine phosphotransfer domain and an ATP binding domain)
- two-component systems serve as a basic stimulus-response coupling mechanism to allow organism to sense and response to changes in many different environmental conditions.
- corresponding *response regulator* that mediates the cellular response, mostly through differential expression of target genes (may consist only of receiver domain, but mostly receiver and output domain, often involved in DNA binding)
- overall level of phosphorylated response regulator ultimately controls its activity
- many HKs are bifunctional and possess phosphatase activity against response regulator
- most common in bacteria
- key examples: bacterial chemotaxis, E.coli osmoregulation (EnvZ/OmpR), *B.subtilis sporulation*

The chemistry of 2-component system involves:
1. Autophosphorylation: HK-His + ATP <-> HK-His-P + ADP
2. Phosphotransfer: HK-His-P + RR-Asp <-> HK-His + RR-Asp-P
3. Dephosphorylation: RR-Asp-P + H20 <-> RR-Asp + Pi

Robustness of two-component systems.




Ultra-sensitivity
-----------------


References & further reading
-----------------------------
- https://en.wikipedia.org/wiki/Post-translational_modification
- https://en.wikipedia.org/wiki/Two-component_regulatory_system
- Stock, Ann M., Victoria L. Robinson, and Paul N. Goudreau. "Two-component signal transduction." Annual review of biochemistry 69.1 (2000): 183-215.
- Klipp et al, Systems Biology - A textbook, chapter 12.2 - Signaling pathways
- Reder, C. “Metabolic control theory: a structural approach.” Journal of theoretical biology vol. 135,2 (1988): 175-201. doi:10.1016/s0022-5193(88)80073-0
- Kacser, H, and J A Burns. “The control of flux.” Symposia of the Society for Experimental Biology vol. 27 (1973): 65-104.
- Heinrich, R, and T A Rapoport. “A linear steady-state treatment of enzymatic chains. General properties, control and effector strength.” European journal of biochemistry vol. 42,1 (1974): 89-95. doi:10.1111/j.1432-1033.1974.tb03318.x
