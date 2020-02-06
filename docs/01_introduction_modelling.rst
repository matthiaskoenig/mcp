Introduction modeling
=====================
- `lecture notes <slides/01_introduction_modelling.pdf>`_
- `lecture slides <slides/01_introduction_modelling_slides.pdf>`_


Overview course
---------------

**Kursziel**

- Verständnis der Modellierung zellulärer Prozesse

**Methode**

- Mathematik & Computermodellierung

**Themen**
(siehe

- Boolesche Netzwerke
- Differentialgleichungen & dynamische Systeme
- Constraint-based models
- Cellular networks
- Stochastic systems
- Parameter fitting
- ...

**Anwendungen und Beispiele**

- Stoffwechsel/Metabolismus
- Signaltransduktion
- Genexpression
- Cell cycle

**Lernziele**

- wie modelliert man zelluläre Prozesse? Welche Methoden gibt es?
- was ist ein dynamisches System?
- was ist der Zustandsraum (state space), was sind Trajektorien?
- was sind Feedback Loops?
- was ist Stabilität?

Komplexität biologischer Systeme
--------------------------------

- incomplete knowledge
- many components
- roles of and interactions between components are often obscure and change over time
- nonlinearities & feedbacks
- multiple spatial scales ​- from organism to single molecule
- different time-scales ​- from the human life span down to molecular kinetics, e.g. of enzyme catalysis in a fraction of a second
- build via evolution
- complex processes

    - often not explained from first principle
    - no understanding of behavior by intuition
    - emergent properties (more than the sum of its parts)

⇒ requirement of abstract representation

Was ist ein Model?
------------------
A model is an artificial construct in the language of mathematics that represents biological phenomenon.

**Gute Modelle**

- "essentially, all models are wrong, but some are useful" G. Box
- enable ​**insights** into processes and systems ​(that we would not be able to gain otherwise)
- **repository of knowledge** - ​make sense of large number of isolated facts and observations
- allow to make ​**predictions** and ​**extrapolations** ​(which can be tested)
- lead to the ​formulation of **new hypotheses**

**Models can take any form**

- model can be intuitive or very abstract
- minimal models vs. whole cell models

Wie konstruiert man ein Modell?
-------------------------------
**Abstraction steps**

- biological system
- mental model
- model scheme
- process model
- mathematical model
- quantitative analysis

**Modellierung ist Kunst**

- requires ​**technical expertise** and **​creativity**
- nicht zu kompliziert/nicht zu einfach → richtiger Abstraktionsgrad
- conceptualizing in modules/components/processes
- subjective and selective procedure
- abhängig von Fragestellung

**Modelling cycle** - ​model predictions → experiments (validation) → refining models

Nichtlineare Dynamik
--------------------
Dynamisches System
    a function describes the time-dependence of a point in a state space.

- **state** - Zustand
- **state space** - Zustandsraum (all possible states)
- **function** - rule how state is changing over time (depending on state and possible history)

**Zustand​**

- discrete / continuous
- single state variable, or more often state vector (i.e. multiple variables define the concrete state, e.g., concentrations of metabolites)

**Zustandsraum**

- entsprechend diskret/kontinuierlich
- ein-dimensional / hoch-dimensional

**Zeit/time**

- diskret/kontinuierlich

**Function/rules**

- deterministisch, stochastisch
- (description as state updates or changes in state over time)

**Mögliche Fragen**

- time-evolution of the system (where do I end up depending on the start conditions)?
- steady states (nothing is changing over time any more)?
- which states are visited? periodic states (oscillations)?
- stability & robustness ? (if I change a bit do I get similar results)
- sensitivity (what is the effect of parameter changes and initial condition changes)


References
-----------------------
- Herbert Sauro, *Introduction to Pathway Modeling*, First Edition; Chapter 4, Introduction to modelling
- Eberhard O. Voit, *A first course in Systems Biology*, second edition; Chapter 1, Biological systems; Chapter 2, Introduction to mathematical modelling
- Klipp, Liebermeister, Wierling, Kowald; *Systems Biology - A Textbook*, Second Edition; Part I, Introduction to Systems Biology


**TODO** add figures (coming soon)

**TODO** better formulations & English/German version