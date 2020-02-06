Databases & web services
========================

Many data bases provide programatic access via so called webservices. We
can easily query such databases uses libraries like ``request``.

.. code:: ipython3

    import requests

UniprotKB
---------

For instance we can For instance a few example gathering data for
glucokinase. http://www.uniprot.org/uniprot/P35557

https://www.ebi.ac.uk/proteins/api/doc/

.. code:: ipython3

    r = requests.get('https://www.ebi.ac.uk/proteins/api/proteins/P35557')

.. code:: ipython3

    r.status_code




.. parsed-literal::

    200



.. code:: ipython3

    json = r.json()
    # json
    print(json)


.. parsed-literal::

    {'accession': 'P35557', 'id': 'HXK4_HUMAN', 'proteinExistence': 'Evidence at protein level', 'info': {'type': 'Swiss-Prot', 'created': '1994-06-01', 'modified': '2019-12-11', 'version': 211}, 'organism': {'taxonomy': 9606, 'names': [{'type': 'scientific', 'value': 'Homo sapiens'}, {'type': 'common', 'value': 'Human'}], 'lineage': ['Eukaryota', 'Metazoa', 'Chordata', 'Craniata', 'Vertebrata', 'Euteleostomi', 'Mammalia', 'Eutheria', 'Euarchontoglires', 'Primates', 'Haplorrhini', 'Catarrhini', 'Hominidae', 'Homo']}, 'secondaryAccession': ['A4D2J2', 'A4D2J3', 'Q05810'], 'protein': {'recommendedName': {'fullName': {'value': 'Hexokinase-4', 'evidences': [{'code': 'ECO:0000305'}]}, 'shortName': [{'value': 'HK4', 'evidences': [{'code': 'ECO:0000305'}]}], 'ecNumber': [{'value': '2.7.1.1', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11916951', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11916951', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11916951'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15277402', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15277402', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15277402'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19146401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19146401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19146401'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}]}, 'alternativeName': [{'fullName': {'value': 'Glucokinase', 'evidences': [{'code': 'ECO:0000303', 'source': {'name': 'PubMed', 'id': '1354840', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1354840', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1354840'}}]}}, {'fullName': {'value': 'Hexokinase type IV', 'evidences': [{'code': 'ECO:0000250', 'source': {'name': 'UniProtKB', 'id': 'P17712', 'url': 'https://www.uniprot.org/uniprot/P17712'}}]}, 'shortName': [{'value': 'HK IV', 'evidences': [{'code': 'ECO:0000250', 'source': {'name': 'UniProtKB', 'id': 'P17712', 'url': 'https://www.uniprot.org/uniprot/P17712'}}]}]}, {'fullName': {'value': 'Hexokinase-D', 'evidences': [{'code': 'ECO:0000250', 'source': {'name': 'UniProtKB', 'id': 'P17712', 'url': 'https://www.uniprot.org/uniprot/P17712'}}]}}]}, 'gene': [{'name': {'value': 'GCK', 'evidences': [{'code': 'ECO:0000303', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000312', 'source': {'name': 'HGNC', 'id': 'HGNC:4195', 'url': 'https://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=HGNC:4195'}}]}}], 'comments': [{'type': 'FUNCTION', 'text': [{'value': 'Catalyzes the phosphorylation of hexose, such as D-glucose, D-fructose and D-mannose, to hexose 6-phosphate (D-glucose 6-phosphate, D-fructose 6-phosphate and D-mannose 6-phosphate, respectively) (PubMed:7742312, PubMed:11916951, PubMed:15277402, PubMed:17082186, PubMed:18322640, PubMed:19146401, PubMed:25015100, PubMed:8325892). Compared to other hexokinases, has a weak affinity for D-glucose, and is effective only when glucose is abundant (By similarity). Mainly expressed in pancreatic beta cells and the liver and constitutes a rate-limiting step in glucose metabolism in these tissues (PubMed:18322640, PubMed:25015100, PubMed:8325892, PubMed:11916951, PubMed:15277402). Since insulin secretion parallels glucose metabolism and the low glucose affinity of GCK ensures that it can change its enzymatic activity within the physiological range of glucose concentrations, GCK acts as a glucose sensor in the pancreatic beta cell (By similarity). In pancreas, plays an important role in modulating insulin secretion (By similarity). In liver, helps to facilitate the uptake and conversion of glucose by acting as an insulin-sensitive determinant of hepatic glucose usage (By similarity). Required to provide D-glucose 6-phosphate for the synthesis of glycogen (PubMed:8878425). Mediates the initial step of glycolysis by catalyzing phosphorylation of D-glucose to D-glucose 6-phosphate (PubMed:7742312)', 'evidences': [{'code': 'ECO:0000250', 'source': {'name': 'UniProtKB', 'id': 'P17712', 'url': 'https://www.uniprot.org/uniprot/P17712'}}, {'code': 'ECO:0000250', 'source': {'name': 'UniProtKB', 'id': 'P52792', 'url': 'https://www.uniprot.org/uniprot/P52792'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11916951', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11916951', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11916951'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15277402', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15277402', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15277402'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19146401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19146401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19146401'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '7742312', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/7742312', 'alternativeUrl': 'https://europepmc.org/abstract/MED/7742312'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8878425', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8878425', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8878425'}}]}]}, {'type': 'CATALYTIC_ACTIVITY', 'reaction': {'name': 'ATP + D-hexose = ADP + D-hexose 6-phosphate + H(+)', 'dbReferences': [{'type': 'Rhea', 'id': 'RHEA:22740'}, {'type': 'ChEBI', 'id': 'CHEBI:4194'}, {'type': 'ChEBI', 'id': 'CHEBI:15378'}, {'type': 'ChEBI', 'id': 'CHEBI:30616'}, {'type': 'ChEBI', 'id': 'CHEBI:61567'}, {'type': 'ChEBI', 'id': 'CHEBI:456216'}], 'ecNumber': '2.7.1.1', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11916951', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11916951', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11916951'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15277402', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15277402', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15277402'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19146401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19146401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19146401'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}, 'physiologicalReactions': [{'direction': 'left-to-right', 'dbReference': {'type': 'Rhea', 'id': 'RHEA:22741'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11916951', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11916951', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11916951'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15277402', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15277402', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15277402'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19146401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19146401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19146401'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}]}, {'type': 'CATALYTIC_ACTIVITY', 'reaction': {'name': 'ATP + D-fructose = ADP + D-fructose 6-phosphate + H(+)', 'dbReferences': [{'type': 'Rhea', 'id': 'RHEA:16125'}, {'type': 'ChEBI', 'id': 'CHEBI:15378'}, {'type': 'ChEBI', 'id': 'CHEBI:30616'}, {'type': 'ChEBI', 'id': 'CHEBI:37721'}, {'type': 'ChEBI', 'id': 'CHEBI:61527'}, {'type': 'ChEBI', 'id': 'CHEBI:456216'}], 'ecNumber': '2.7.1.1', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '7742312', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/7742312', 'alternativeUrl': 'https://europepmc.org/abstract/MED/7742312'}}]}, 'physiologicalReactions': [{'direction': 'left-to-right', 'dbReference': {'type': 'Rhea', 'id': 'RHEA:16126'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '7742312', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/7742312', 'alternativeUrl': 'https://europepmc.org/abstract/MED/7742312'}}]}]}, {'type': 'CATALYTIC_ACTIVITY', 'reaction': {'name': 'ATP + D-glucose = ADP + D-glucose 6-phosphate + H(+)', 'dbReferences': [{'type': 'Rhea', 'id': 'RHEA:17825'}, {'type': 'ChEBI', 'id': 'CHEBI:4167'}, {'type': 'ChEBI', 'id': 'CHEBI:15378'}, {'type': 'ChEBI', 'id': 'CHEBI:30616'}, {'type': 'ChEBI', 'id': 'CHEBI:61548'}, {'type': 'ChEBI', 'id': 'CHEBI:456216'}], 'ecNumber': '2.7.1.1', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '7742312', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/7742312', 'alternativeUrl': 'https://europepmc.org/abstract/MED/7742312'}}]}, 'physiologicalReactions': [{'direction': 'left-to-right', 'dbReference': {'type': 'Rhea', 'id': 'RHEA:17826'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '7742312', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/7742312', 'alternativeUrl': 'https://europepmc.org/abstract/MED/7742312'}}]}]}, {'type': 'CATALYTIC_ACTIVITY', 'reaction': {'name': 'ATP + D-mannose = ADP + D-mannose 6-phosphate + H(+)', 'dbReferences': [{'type': 'Rhea', 'id': 'RHEA:11028'}, {'type': 'ChEBI', 'id': 'CHEBI:4208'}, {'type': 'ChEBI', 'id': 'CHEBI:15378'}, {'type': 'ChEBI', 'id': 'CHEBI:30616'}, {'type': 'ChEBI', 'id': 'CHEBI:58735'}, {'type': 'ChEBI', 'id': 'CHEBI:456216'}], 'ecNumber': '2.7.1.1', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '7742312', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/7742312', 'alternativeUrl': 'https://europepmc.org/abstract/MED/7742312'}}]}, 'physiologicalReactions': [{'direction': 'left-to-right', 'dbReference': {'type': 'Rhea', 'id': 'RHEA:11029'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '7742312', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/7742312', 'alternativeUrl': 'https://europepmc.org/abstract/MED/7742312'}}]}]}, {'type': 'ACTIVITY_REGULATION', 'text': [{'value': 'Subject to allosteric regulation (PubMed:15016359). Low glucose and high fructose-6-phosphate triggers association with the inhibitor GCKR followed by sequestration in the nucleus (PubMed:10456334)', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10456334', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10456334', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10456334'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15016359', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15016359', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15016359'}}]}]}, {'type': 'PATHWAY', 'text': [{'value': 'Carbohydrate metabolism; hexose metabolism', 'evidences': [{'code': 'ECO:0000305', 'source': {'name': 'PubMed', 'id': '7742312', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/7742312', 'alternativeUrl': 'https://europepmc.org/abstract/MED/7742312'}}]}]}, {'type': 'PATHWAY', 'text': [{'value': 'Carbohydrate degradation; glycolysis; D-glyceraldehyde 3-phosphate and glycerone phosphate from D-glucose: step 1/4', 'evidences': [{'code': 'ECO:0000305', 'source': {'name': 'PubMed', 'id': '7742312', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/7742312', 'alternativeUrl': 'https://europepmc.org/abstract/MED/7742312'}}]}]}, {'type': 'SUBUNIT', 'text': [{'value': 'Monomer (PubMed:15016359, PubMed:19362831, PubMed:23957911). Interacts with MIDN; the interaction occurs preferentially at low glucose levels and results in inhibition of hexokinase activity (PubMed:24187134). Interacts with GCKR; leading to sequestration in the nucleus (PubMed:10456334)', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10456334', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10456334', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10456334'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15016359', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15016359', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15016359'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19362831', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19362831', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19362831'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '23957911', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/23957911', 'alternativeUrl': 'https://europepmc.org/abstract/MED/23957911'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '24187134', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/24187134', 'alternativeUrl': 'https://europepmc.org/abstract/MED/24187134'}}]}]}, {'type': 'INTERACTION', 'interactions': [{'interactionType': 'BINARY', 'id': 'Q14397', 'gene': 'GCKR', 'interactor1': 'EBI-709928', 'interactor2': 'EBI-709948', 'organismDiffer': False, 'experiments': 2}, {'interactionType': 'BINARY', 'id': 'P16118', 'gene': 'PFKFB1', 'interactor1': 'EBI-709928', 'interactor2': 'EBI-709807', 'organismDiffer': False, 'experiments': 2}]}, {'type': 'SUBCELLULAR_LOCATION', 'locations': [{'location': {'value': 'Cytoplasm', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10456334', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10456334', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10456334'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '24187134', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/24187134', 'alternativeUrl': 'https://europepmc.org/abstract/MED/24187134'}}]}}, {'location': {'value': 'Nucleus', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10456334', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10456334', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10456334'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '24187134', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/24187134', 'alternativeUrl': 'https://europepmc.org/abstract/MED/24187134'}}]}}, {'location': {'value': 'Mitochondrion', 'evidences': [{'code': 'ECO:0000250', 'source': {'name': 'UniProtKB', 'id': 'P17712', 'url': 'https://www.uniprot.org/uniprot/P17712'}}]}}], 'text': [{'value': 'Under low glucose concentrations, GCK associates with GCKR and the inactive complex is recruited to the hepatocyte nucleus', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10456334', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10456334', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10456334'}}]}]}, {'type': 'ALTERNATIVE_PRODUCTS', 'comment': [{'value': 'A number of isoforms are produced by alternative promoter usage. The use of alternative promoters apparently enables the type IV hexokinase gene to be regulated by insulin in the liver and glucose in the beta cell. This may constitute an important feedback loop for maintaining glucose homeostasis.', 'evidences': [{'code': 'ECO:0000305', 'source': {'name': 'PubMed', 'id': '1871135', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1871135', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1871135'}}]}], 'event': ['Alternative splicing'], 'isoforms': [{'ids': ['P35557-1'], 'name': {'value': '1'}, 'sequenceStatus': 'displayed'}, {'ids': ['P35557-2'], 'name': {'value': '2'}, 'sequenceStatus': 'described', 'sequence': ['VSP_002074']}, {'ids': ['P35557-3'], 'name': {'value': '3'}, 'sequenceStatus': 'described', 'sequence': ['VSP_002075']}]}, {'type': 'DISEASE', 'diseaseId': 'Maturity-onset diabetes of the young 2', 'acronym': 'MODY2', 'dbReference': {'type': 'MIM', 'id': '125851'}, 'description': {'value': 'A form of diabetes that is characterized by an autosomal dominant mode of inheritance, onset in childhood or early adulthood (usually before 25 years of age), a primary defect in insulin secretion and frequent insulin-independence at the beginning of the disease.', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10588527', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10588527', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10588527'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10694920', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10694920', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10694920'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11106831', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11106831', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11106831'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11372010', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11372010', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11372010'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1303265', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1303265', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1303265'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1464666', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1464666', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1464666'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1502186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1502186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1502186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19884385', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19884385', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19884385'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22611063', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22611063', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22611063'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8168652', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8168652', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8168652'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8446612', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8446612', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8446612'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8495817', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8495817', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8495817'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8878425', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8878425', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8878425'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9662401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9662401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9662401'}}]}, 'text': [{'value': 'The disease is caused by mutations affecting the gene represented in this entry'}]}, {'type': 'DISEASE', 'diseaseId': 'Familial hyperinsulinemic hypoglycemia 3', 'acronym': 'HHF3', 'dbReference': {'type': 'MIM', 'id': '602485'}, 'description': {'value': 'Most common cause of persistent hypoglycemia in infancy. Unless early and aggressive intervention is undertaken, brain damage from recurrent episodes of hypoglycemia may occur.', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11916951', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11916951', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11916951'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '12941786', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/12941786', 'alternativeUrl': 'https://europepmc.org/abstract/MED/12941786'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15277402', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15277402', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15277402'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19884385', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19884385', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19884385'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '20375417', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/20375417', 'alternativeUrl': 'https://europepmc.org/abstract/MED/20375417'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '28247534', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/28247534', 'alternativeUrl': 'https://europepmc.org/abstract/MED/28247534'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9435328', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9435328', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9435328'}}]}, 'text': [{'value': 'The disease is caused by mutations affecting the gene represented in this entry'}]}, {'type': 'DISEASE', 'diseaseId': 'Diabetes mellitus, non-insulin-dependent', 'acronym': 'NIDDM', 'dbReference': {'type': 'MIM', 'id': '125853'}, 'description': {'value': "A multifactorial disorder of glucose homeostasis caused by a lack of sensitivity to the body's own insulin. Affected individuals usually have an obese body habitus and manifestations of a metabolic syndrome characterized by diabetes, insulin resistance, hypertension and hypertriglyceridemia. The disease results in long-term complications that affect the eyes, kidneys, nerves, and blood vessels.", 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1360036', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1360036', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1360036'}}]}, 'text': [{'value': 'Disease susceptibility is associated with variations affecting the gene represented in this entry'}]}, {'type': 'DISEASE', 'diseaseId': 'Diabetes mellitus, permanent neonatal', 'acronym': 'PNDM', 'dbReference': {'type': 'MIM', 'id': '606176'}, 'description': {'value': 'A rare form of diabetes distinct from childhood-onset autoimmune diabetes mellitus type 1. It is characterized by insulin-requiring hyperglycemia that is diagnosed within the first months of life. Permanent neonatal diabetes requires lifelong therapy.', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11372010', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11372010', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11372010'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, 'text': [{'value': 'The disease is caused by mutations affecting the gene represented in this entry'}]}, {'type': 'SIMILARITY', 'text': [{'value': 'Belongs to the hexokinase family', 'evidences': [{'code': 'ECO:0000255', 'source': {'name': 'PROSITE-ProRule', 'id': 'PRU01084', 'url': 'https://prosite.expasy.org/unirule/PRU01084'}}, {'code': 'ECO:0000305'}]}]}, {'type': 'SEQUENCE_CAUTION', 'conflictType': 'ERRONEOUS_PREDICTION', 'sequence': 'AAA67541.1', 'evidences': [{'code': 'ECO:0000305'}]}, {'type': 'SEQUENCE_CAUTION', 'conflictType': 'ERRONEOUS_PREDICTION', 'sequence': 'AAA67542.1', 'evidences': [{'code': 'ECO:0000305'}]}, {'type': 'WEBRESOURCE', 'name': 'Wikipedia', 'url': 'https://en.wikipedia.org/wiki/Glucokinase', 'text': 'Glucokinase entry'}], 'features': [{'type': 'CHAIN', 'category': 'MOLECULE_PROCESSING', 'ftId': 'PRO_0000197593', 'description': 'Hexokinase-4', 'begin': '1', 'end': '465', 'molecule': ''}, {'type': 'DOMAIN', 'category': 'DOMAINS_AND_SITES', 'description': 'Hexokinase', 'begin': '10', 'end': '454', 'molecule': '', 'evidences': [{'code': 'ECO:0000255', 'source': {'name': 'PROSITE-ProRule', 'id': 'PRU01084', 'url': 'https://prosite.expasy.org/unirule/PRU01084'}}]}, {'type': 'NP_BIND', 'category': 'DOMAINS_AND_SITES', 'description': 'ATP', 'begin': '78', 'end': '83', 'molecule': '', 'evidences': [{'code': 'ECO:0000250', 'source': {'name': 'UniProtKB', 'id': 'P19367', 'url': 'https://www.uniprot.org/uniprot/P19367'}}]}, {'type': 'NP_BIND', 'category': 'DOMAINS_AND_SITES', 'description': 'ATP', 'begin': '295', 'end': '296', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3FGU', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3FGU'}}, {'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3ID8', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3ID8'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22101819', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22101819', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22101819'}}]}, {'type': 'NP_BIND', 'category': 'DOMAINS_AND_SITES', 'description': 'ATP', 'begin': '332', 'end': '336', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3FGU', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3FGU'}}, {'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3ID8', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3ID8'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22101819', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22101819', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22101819'}}]}, {'type': 'NP_BIND', 'category': 'DOMAINS_AND_SITES', 'description': 'ATP', 'begin': '411', 'end': '415', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3FGU', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3FGU'}}, {'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3ID8', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3ID8'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22101819', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22101819', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22101819'}}]}, {'type': 'REGION', 'category': 'DOMAINS_AND_SITES', 'description': 'Hexokinase small subdomain', 'begin': '67', 'end': '203', 'molecule': '', 'evidences': [{'code': 'ECO:0000255', 'source': {'name': 'PROSITE-ProRule', 'id': 'PRU01084', 'url': 'https://prosite.expasy.org/unirule/PRU01084'}}]}, {'type': 'REGION', 'category': 'DOMAINS_AND_SITES', 'description': 'Substrate binding', 'begin': '151', 'end': '152', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15016359', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15016359', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15016359'}}]}, {'type': 'REGION', 'category': 'DOMAINS_AND_SITES', 'description': 'Substrate binding', 'begin': '168', 'end': '169', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15016359', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15016359', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15016359'}}]}, {'type': 'REGION', 'category': 'DOMAINS_AND_SITES', 'description': 'Hexokinase large subdomain', 'begin': '204', 'end': '443', 'molecule': '', 'evidences': [{'code': 'ECO:0000255', 'source': {'name': 'PROSITE-ProRule', 'id': 'PRU01084', 'url': 'https://prosite.expasy.org/unirule/PRU01084'}}]}, {'type': 'REGION', 'category': 'DOMAINS_AND_SITES', 'description': 'Substrate binding', 'begin': '204', 'end': '205', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15016359', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15016359', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15016359'}}]}, {'type': 'BINDING', 'category': 'DOMAINS_AND_SITES', 'description': 'ATP', 'begin': '228', 'end': '228', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3FGU', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3FGU'}}, {'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3ID8', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3ID8'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22101819', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22101819', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22101819'}}]}, {'type': 'BINDING', 'category': 'DOMAINS_AND_SITES', 'description': 'Substrate', 'begin': '231', 'end': '231', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15016359', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15016359', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15016359'}}]}, {'type': 'BINDING', 'category': 'DOMAINS_AND_SITES', 'description': 'Substrate', 'begin': '256', 'end': '256', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15016359', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15016359', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15016359'}}]}, {'type': 'BINDING', 'category': 'DOMAINS_AND_SITES', 'description': 'Substrate', 'begin': '290', 'end': '290', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15016359', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15016359', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15016359'}}]}, {'type': 'VAR_SEQ', 'category': 'VARIANTS', 'ftId': 'VSP_002074', 'begin': '1', 'end': '15', 'molecule': '', 'evidences': [{'code': 'ECO:0000303', 'source': {'name': 'PubMed', 'id': '14702039', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/14702039', 'alternativeUrl': 'https://europepmc.org/abstract/MED/14702039'}}]}, {'type': 'VAR_SEQ', 'category': 'VARIANTS', 'ftId': 'VSP_002075', 'begin': '1', 'end': '15', 'molecule': '', 'evidences': [{'code': 'ECO:0000305'}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003692', 'description': 'in dbSNP:rs202091228', 'alternativeSequence': 'N', 'begin': '4', 'end': '4', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010583', 'description': 'in dbSNP:rs116093166', 'alternativeSequence': 'T', 'begin': '11', 'end': '11', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8454109', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8454109', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8454109'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079430', 'description': 'in MODY2', 'alternativeSequence': 'E', 'begin': '16', 'end': '16', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079431', 'description': 'in MODY2', 'alternativeSequence': 'N', 'begin': '19', 'end': '19', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079432', 'description': 'in MODY2', 'alternativeSequence': 'P', 'begin': '20', 'end': '20', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010584', 'description': 'in MODY2; dbSNP:rs762263694', 'alternativeSequence': 'W', 'begin': '36', 'end': '36', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8168652', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8168652', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8168652'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079433', 'description': 'in PNDM; decreased stability; decreased glucokinase activity; decreased affinity for glucose; dbSNP:rs794727236', 'alternativeSequence': 'K', 'begin': '40', 'end': '40', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079434', 'description': 'in PNDM; decreased stability; decreased glucokinase activity; no effect on affinity for glucose; dbSNP:rs1486280029', 'alternativeSequence': 'C', 'begin': '43', 'end': '43', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_075220', 'description': 'in MODY2; unknown pathological significance; no change in glucokinase activity; dbSNP:rs764232985', 'alternativeSequence': 'H', 'begin': '43', 'end': '43', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22611063', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22611063', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22611063'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079435', 'description': 'in MODY2', 'alternativeSequence': 'S', 'begin': '43', 'end': '43', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079436', 'description': 'in MODY2; dbSNP:rs267601516', 'alternativeSequence': 'S', 'begin': '44', 'end': '44', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079437', 'description': 'in PNDM; loss of stability; loss of glucokinase activity; decreased affinity for glucose', 'alternativeSequence': 'D', 'begin': '50', 'end': '50', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010585', 'description': 'in MODY2', 'alternativeSequence': 'S', 'begin': '53', 'end': '53', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079438', 'description': 'in MODY2', 'alternativeSequence': '', 'begin': '61', 'end': '465', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079439', 'description': 'in MODY2; decreased glucokinase activity; decreased affinity for glucose; increased affinity for ATP', 'alternativeSequence': 'S', 'begin': '61', 'end': '61', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078243', 'description': 'in HHF3; increased glucokinase activity based on measure of catalytic efficiency; increased affinity for glucose; loss of inhibition by GCKR; unchanged affinity for ATP', 'alternativeSequence': 'I', 'begin': '65', 'end': '65', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '12941786', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/12941786', 'alternativeUrl': 'https://europepmc.org/abstract/MED/12941786'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '28247534', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/28247534', 'alternativeUrl': 'https://europepmc.org/abstract/MED/28247534'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_075221', 'description': 'in MODY2; unknown pathological significance; mildly increases glucokinase activity; dbSNP:rs373418736', 'alternativeSequence': 'D', 'begin': '68', 'end': '68', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22611063', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22611063', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22611063'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003693', 'description': 'in MODY2; decreased affinity for glucose', 'alternativeSequence': 'K', 'begin': '70', 'end': '70', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079440', 'description': 'in MODY2 and PNDM; decreased stability; no effect on glucokinase activity; no effect on affinity for glucose; dbSNP:rs193922289', 'alternativeSequence': 'R', 'begin': '72', 'end': '72', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079441', 'description': 'in MODY2', 'alternativeSequence': 'P', 'begin': '77', 'end': '77', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079442', 'description': 'in MODY2', 'alternativeSequence': 'E', 'begin': '78', 'end': '78', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003694', 'description': 'in MODY2', 'alternativeSequence': 'A', 'begin': '80', 'end': '80', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079443', 'description': 'in MODY2', 'alternativeSequence': 'D', 'begin': '80', 'end': '80', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003695', 'description': 'in MODY2; dbSNP:rs1554335761', 'alternativeSequence': 'S', 'begin': '80', 'end': '80', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10694920', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10694920', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10694920'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079444', 'description': 'in MODY2', 'alternativeSequence': 'I', 'begin': '82', 'end': '82', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078244', 'description': 'in HHF3; increased glucokinase activity; increased affinity for glucose', 'alternativeSequence': 'L', 'begin': '91', 'end': '91', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '20375417', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/20375417', 'alternativeUrl': 'https://europepmc.org/abstract/MED/20375417'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '28247534', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/28247534', 'alternativeUrl': 'https://europepmc.org/abstract/MED/28247534'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078245', 'description': 'in HHF3; increased glucokinase activity; increased affinity for glucose; increased affinity for ATP', 'alternativeSequence': 'C', 'begin': '99', 'end': '99', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '28247534', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/28247534', 'alternativeUrl': 'https://europepmc.org/abstract/MED/28247534'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003696', 'description': '', 'alternativeSequence': 'T', 'begin': '107', 'end': '107', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1464666', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1464666', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1464666'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1871135', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1871135', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1871135'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010586', 'description': 'in MODY2', 'alternativeSequence': 'H', 'begin': '108', 'end': '108', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9662401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9662401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9662401'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_012352', 'description': 'in MODY2; dbSNP:rs1338970607', 'alternativeSequence': 'T', 'begin': '110', 'end': '110', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10588527', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10588527', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10588527'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079445', 'description': 'in MODY2', 'alternativeSequence': 'P', 'begin': '116', 'end': '116', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_012353', 'description': 'in MODY2; dbSNP:rs1176659689', 'alternativeSequence': 'D', 'begin': '119', 'end': '119', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10588527', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10588527', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10588527'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078246', 'description': 'in MODY2', 'alternativeSequence': 'Y', 'begin': '129', 'end': '129', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003697', 'description': 'in MODY2; decreased affinity for glucose; dbSNP:rs104894010', 'alternativeSequence': 'P', 'begin': '131', 'end': '131', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8495817', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8495817', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8495817'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010587', 'description': 'in MODY2', 'alternativeSequence': 'R', 'begin': '137', 'end': '137', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010588', 'description': 'in MODY2; dbSNP:rs193922297', 'alternativeSequence': 'S', 'begin': '150', 'end': '150', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9662401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9662401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9662401'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079446', 'description': 'in PNDM', 'alternativeSequence': 'T', 'begin': '151', 'end': '151', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078247', 'description': 'in MODY2; unknown pathological significance', 'alternativeSequence': 'L', 'begin': '152', 'end': '152', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079447', 'description': 'in MODY2; decreased glucokinase activity; decreased affinity for glucose; dbSNP:rs1554335566', 'alternativeSequence': 'N', 'begin': '160', 'end': '160', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_012350', 'description': 'in MODY2 and PNDM', 'alternativeSequence': 'P', 'begin': '164', 'end': '164', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11106831', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11106831', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11106831'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079448', 'description': 'in PNDM; decreased glucokinase activity; decreased affinity for glucose', 'alternativeSequence': 'A', 'begin': '168', 'end': '168', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010589', 'description': 'in MODY2', 'alternativeSequence': 'P', 'begin': '168', 'end': '168', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079449', 'description': 'in PNDM', 'alternativeSequence': 'R', 'begin': '169', 'end': '169', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003698', 'description': 'in MODY2; dbSNP:rs587780344', 'alternativeSequence': 'R', 'begin': '175', 'end': '175', 'molecule': ''}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079450', 'description': 'in MODY2; decreased glucokinase activity; decreased affinity for glucose; increased affinity for ATP', 'alternativeSequence': 'L', 'begin': '182', 'end': '182', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003699', 'description': 'in MODY2; dbSNP:rs587780345', 'alternativeSequence': 'M', 'begin': '182', 'end': '182', 'molecule': ''}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079451', 'description': 'in MODY2 and NIDDM', 'alternativeSequence': '', 'begin': '186', 'end': '465', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1360036', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1360036', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1360036'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079452', 'description': 'in MODY2', 'alternativeSequence': 'Y', 'begin': '187', 'end': '187', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003700', 'description': 'in MODY2; decreased affinity for glucose; dbSNP:rs751279776', 'alternativeSequence': 'T', 'begin': '188', 'end': '188', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078248', 'description': 'in MODY2; dbSNP:rs193922307', 'alternativeSequence': 'V', 'begin': '188', 'end': '188', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078249', 'description': 'in MODY2; dbSNP:rs1085307455', 'alternativeSequence': 'W', 'begin': '191', 'end': '191', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079453', 'description': 'in MODY2', 'alternativeSequence': 'L', 'begin': '200', 'end': '200', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078250', 'description': 'in MODY2', 'alternativeSequence': 'R', 'begin': '202', 'end': '202', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079454', 'description': 'in MODY2; dbSNP:rs193922311', 'alternativeSequence': 'T', 'begin': '202', 'end': '202', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003701', 'description': 'in MODY2', 'alternativeSequence': 'A', 'begin': '203', 'end': '203', 'molecule': ''}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079455', 'description': 'in MODY2; dbSNP:rs1441649062', 'alternativeSequence': 'M', 'begin': '206', 'end': '206', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010590', 'description': 'in MODY2', 'alternativeSequence': 'M', 'begin': '209', 'end': '209', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8168652', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8168652', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8168652'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_012351', 'description': 'in MODY2 and PNDM; dbSNP:rs80356654', 'alternativeSequence': 'K', 'begin': '210', 'end': '210', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11372010', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11372010', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11372010'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010591', 'description': 'in MODY2; dbSNP:rs80356654', 'alternativeSequence': 'T', 'begin': '210', 'end': '210', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010592', 'description': 'in MODY2', 'alternativeSequence': 'R', 'begin': '213', 'end': '213', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079456', 'description': 'in HHF3; increased glucokinase activity based on measure of catalytic efficiency; increased affinity for glucose; decreased inhibition by GCKR; dbSNP:rs104894015', 'alternativeSequence': 'C', 'begin': '214', 'end': '214', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '15277402', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/15277402', 'alternativeUrl': 'https://europepmc.org/abstract/MED/15277402'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_075222', 'description': 'in MODY2; associated in cis with R-261 in some patients; mildly increased glucokinase activity; loss of glucokinase activity when associated with R-261; dbSNP:rs147065275', 'alternativeSequence': 'N', 'begin': '217', 'end': '217', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22611063', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22611063', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22611063'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003702', 'description': 'in MODY2; dbSNP:rs193922317', 'alternativeSequence': 'K', 'begin': '221', 'end': '221', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10694920', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10694920', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10694920'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078251', 'description': 'in MODY2', 'alternativeSequence': 'S', 'begin': '223', 'end': '223', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079457', 'description': 'in MODY2', 'alternativeSequence': 'R', 'begin': '224', 'end': '224', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_075223', 'description': 'in MODY2; associated in cis with K-248; highly decreased glucokinase activity; loss of glucokinase activity when associated with K-248', 'alternativeSequence': 'M', 'begin': '225', 'end': '225', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22611063', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22611063', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22611063'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003703', 'description': 'in MODY2; no effect on stability; decreased glucokinase activity; decreased affinity for glucose; dbSNP:rs148311934', 'alternativeSequence': 'M', 'begin': '226', 'end': '226', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003704', 'description': 'in MODY2', 'alternativeSequence': 'C', 'begin': '227', 'end': '227', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10694920', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10694920', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10694920'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079458', 'description': 'in MODY2', 'alternativeSequence': 'S', 'begin': '227', 'end': '227', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003705', 'description': 'in MODY2 and PNDM; dbSNP:rs80356655', 'alternativeSequence': 'M', 'begin': '228', 'end': '228', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11372010', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11372010', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11372010'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1502186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1502186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1502186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078252', 'description': 'in MODY2; unknown pathological significance', 'alternativeSequence': 'H', 'begin': '231', 'end': '231', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079459', 'description': 'in MODY2; loss of glucokinase activity; loss of affinity for glucose; loss of affinity for ATP', 'alternativeSequence': 'R', 'begin': '233', 'end': '233', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079460', 'description': 'in MODY2', 'alternativeSequence': '', 'begin': '234', 'end': '465', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_081975', 'description': 'in MODY2', 'alternativeSequence': '', 'begin': '248', 'end': '465', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_075224', 'description': 'in MODY2; associated in cis with M-225; highly decreased glucokinase activity; loss of glucokinase activity when associated with M-225; dbSNP:rs759421263', 'alternativeSequence': 'K', 'begin': '248', 'end': '248', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22611063', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22611063', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22611063'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079461', 'description': 'in MODY2', 'alternativeSequence': 'G', 'begin': '252', 'end': '252', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079462', 'description': 'in MODY2', 'alternativeSequence': 'A', 'begin': '255', 'end': '255', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003706', 'description': 'in MODY2; dbSNP:rs769268803', 'alternativeSequence': 'K', 'begin': '256', 'end': '256', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003707', 'description': 'in MODY2; almost complete loss of glucokinase activity; dbSNP:rs1554335135', 'alternativeSequence': 'R', 'begin': '257', 'end': '257', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010593', 'description': 'in MODY2; dbSNP:rs1375656631', 'alternativeSequence': 'T', 'begin': '259', 'end': '259', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9662401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9662401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9662401'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010594', 'description': 'in MODY2', 'alternativeSequence': 'E', 'begin': '261', 'end': '261', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8168652', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8168652', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8168652'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003708', 'description': 'in MODY2 and PNDM; associated in cis with N-217 in some patients; highly decreased glucokinase activity; loss of glucokinase activity when associated with N-217; decreased affinity for glucose; dbSNP:rs104894008', 'alternativeSequence': 'R', 'begin': '261', 'end': '261', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1464666', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1464666', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1464666'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1502186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1502186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1502186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22611063', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22611063', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22611063'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079463', 'description': 'in MODY2; decreased glucokinase activity; decreased affinity for glucose; no effect on affinity for ATP', 'alternativeSequence': 'K', 'begin': '265', 'end': '265', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003709', 'description': 'in MODY2; dbSNP:rs104894005', 'alternativeSequence': 'Q', 'begin': '279', 'end': '279', 'molecule': ''}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079464', 'description': 'in MODY2', 'alternativeSequence': 'K', 'begin': '298', 'end': '298', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003710', 'description': 'in MODY2; dbSNP:rs104894009', 'alternativeSequence': 'R', 'begin': '299', 'end': '299', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '1303265', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/1303265', 'alternativeUrl': 'https://europepmc.org/abstract/MED/1303265'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9662401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9662401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9662401'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003712', 'description': 'in MODY2; dbSNP:rs1255911887', 'alternativeSequence': 'K', 'begin': '300', 'end': '300', 'molecule': ''}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003711', 'description': 'in MODY2', 'alternativeSequence': 'Q', 'begin': '300', 'end': '300', 'molecule': ''}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079465', 'description': 'in MODY2', 'alternativeSequence': 'W', 'begin': '308', 'end': '308', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003713', 'description': 'in MODY2', 'alternativeSequence': 'P', 'begin': '309', 'end': '309', 'molecule': ''}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078253', 'description': 'in MODY2; unknown pathological significance', 'alternativeSequence': 'F', 'begin': '315', 'end': '315', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010595', 'description': 'in MODY2', 'alternativeSequence': 'L', 'begin': '336', 'end': '336', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_066615', 'description': 'in dbSNP:rs1000236360', 'alternativeSequence': 'P', 'begin': '342', 'end': '342', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '21604084', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/21604084', 'alternativeUrl': 'https://europepmc.org/abstract/MED/21604084'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_081976', 'description': 'in MODY2', 'alternativeSequence': '', 'begin': '360', 'end': '465', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010596', 'description': 'in MODY2; dbSNP:rs1057521092', 'alternativeSequence': 'M', 'begin': '367', 'end': '367', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9049484', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9049484', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9049484'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079466', 'description': 'in MODY2; dbSNP:rs193922264', 'alternativeSequence': 'H', 'begin': '377', 'end': '377', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078254', 'description': 'in MODY2; dbSNP:rs104894016', 'alternativeSequence': 'T', 'begin': '378', 'end': '378', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079467', 'description': 'in MODY2; decreased glucokinase activity; decreased affinity for glucose; decreased affinity for ATP', 'alternativeSequence': 'V', 'begin': '379', 'end': '379', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010597', 'description': 'in MODY2', 'alternativeSequence': 'Y', 'begin': '382', 'end': '382', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9662401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9662401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9662401'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079468', 'description': 'in MODY2; dbSNP:rs777870079', 'alternativeSequence': 'L', 'begin': '383', 'end': '383', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010598', 'description': 'in MODY2; dbSNP:rs1376620210', 'alternativeSequence': 'T', 'begin': '384', 'end': '384', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9662401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9662401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9662401'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_012354', 'description': 'in MODY2', 'alternativeSequence': 'V', 'begin': '385', 'end': '385', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '10588527', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/10588527', 'alternativeUrl': 'https://europepmc.org/abstract/MED/10588527'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_010599', 'description': 'in MODY2; dbSNP:rs1167124132', 'alternativeSequence': 'C', 'begin': '392', 'end': '392', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9662401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9662401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9662401'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079469', 'description': 'in PNDM; decreased stability; increased glucokinase activity; no effect on affinity for glucose', 'alternativeSequence': 'T', 'begin': '393', 'end': '393', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079470', 'description': 'in PNDM; decreased stability; increased glucokinase activity; no effect on affinity for glucose; dbSNP:rs193929375', 'alternativeSequence': 'L', 'begin': '397', 'end': '397', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079471', 'description': 'in MODY2', 'alternativeSequence': '', 'begin': '399', 'end': '465', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079472', 'description': 'in MODY2', 'alternativeSequence': 'F', 'begin': '411', 'end': '411', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003714', 'description': 'in MODY2; decreased affinity for glucose; dbSNP:rs193922272', 'alternativeSequence': 'E', 'begin': '414', 'end': '414', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079473', 'description': 'in MODY2', 'alternativeSequence': 'P', 'begin': '416', 'end': '416', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079474', 'description': 'in MODY2; no effect on glucokinase activity; decreased affinity for glucose; no effect on affinity for ATP', 'alternativeSequence': 'E', 'begin': '420', 'end': '420', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078255', 'description': 'in MODY2; unknown pathological significance', 'alternativeSequence': 'F', 'begin': '434', 'end': '434', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079475', 'description': 'in PNDM; decreased stability; decreased glucokinase activity; no effect on affinity for glucose; dbSNP:rs1286804191', 'alternativeSequence': 'L', 'begin': '441', 'end': '441', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078256', 'description': 'in MODY2; decreased affinity for glucose', 'alternativeSequence': 'W', 'begin': '441', 'end': '441', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17573900', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17573900', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17573900'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19884385', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19884385', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19884385'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078257', 'description': 'in HHF3; increased affinity for glucose; dbSNP:rs758737171', 'alternativeSequence': 'K', 'begin': '442', 'end': '442', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19884385', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19884385', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19884385'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '28247534', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/28247534', 'alternativeUrl': 'https://europepmc.org/abstract/MED/28247534'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_078258', 'description': 'in MODY2; dbSNP:rs1131691416', 'alternativeSequence': 'Q', 'begin': '447', 'end': '447', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16965331', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16965331', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16965331'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079476', 'description': 'in PNDM; decreased stability; increased glucokinase activity; increased affinity for glucose; dbSNP:rs193922282', 'alternativeSequence': 'T', 'begin': '449', 'end': '449', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '25015100', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/25015100', 'alternativeUrl': 'https://europepmc.org/abstract/MED/25015100'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_003715', 'description': 'in HHF3; increased glucokinase activity based on measure of catalytic efficiency; increased affinity for glucose; decreased inhibition by GCKR; no effect on affinity for ATP; dbSNP:rs104894012', 'alternativeSequence': 'M', 'begin': '455', 'end': '455', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '9435328', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/9435328', 'alternativeUrl': 'https://europepmc.org/abstract/MED/9435328'}}]}, {'type': 'VARIANT', 'category': 'VARIANTS', 'ftId': 'VAR_079477', 'description': 'in HHF3; increased glucokinase activity based on measure of catalytic efficiency; increased affinity for glucose; loss of inhibition by GCKR; no effect on affinity for ATP; dbSNP:rs104894014', 'alternativeSequence': 'V', 'begin': '456', 'end': '456', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '11916951', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/11916951', 'alternativeUrl': 'https://europepmc.org/abstract/MED/11916951'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}]}, {'type': 'MUTAGEN', 'category': 'MUTAGENESIS', 'description': 'Increased glucokinase activity based on measure of catalytic efficiency. Increased affinity for glucose.', 'alternativeSequence': 'P', 'begin': '64', 'end': '64', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19146401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19146401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19146401'}}]}, {'type': 'MUTAGEN', 'category': 'MUTAGENESIS', 'description': 'Small change in glucokinase activity.', 'alternativeSequence': 'K', 'begin': '177', 'end': '177', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}, {'type': 'MUTAGEN', 'category': 'MUTAGENESIS', 'description': 'Increased glucokinase activity based on measure of catalytic efficiency. Increased affinity for glucose.', 'alternativeSequence': 'V', 'begin': '197', 'end': '197', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19146401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19146401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19146401'}}]}, {'type': 'MUTAGEN', 'category': 'MUTAGENESIS', 'description': 'Increased glucokinase activity based on measure of catalytic efficiency. Increased affinity for glucose.', 'alternativeSequence': 'F', 'begin': '211', 'end': '211', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19146401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19146401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19146401'}}]}, {'type': 'MUTAGEN', 'category': 'MUTAGENESIS', 'description': 'Increased glucokinase activity based on measure of catalytic efficiency. Increased affinity for glucose. No effect on affinity for ATP.', 'alternativeSequence': 'A', 'begin': '214', 'end': '214', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}]}, {'type': 'MUTAGEN', 'category': 'MUTAGENESIS', 'description': 'Increased glucokinase activity based on measure of catalytic efficiency. Increased affinity for glucose. Loss of inhibition by GCKR. No effect on affinity for ATP.', 'alternativeSequence': 'A', 'begin': '215', 'end': '215', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '17082186', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/17082186', 'alternativeUrl': 'https://europepmc.org/abstract/MED/17082186'}}]}, {'type': 'MUTAGEN', 'category': 'MUTAGENESIS', 'description': 'Inactive enzyme with no glucokinase activity.', 'alternativeSequence': 'A', 'begin': '256', 'end': '256', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}, {'type': 'MUTAGEN', 'category': 'MUTAGENESIS', 'description': 'Small change in glucokinase activity.', 'alternativeSequence': 'A', 'begin': '414', 'end': '414', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8325892', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8325892', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8325892'}}]}, {'type': 'MUTAGEN', 'category': 'MUTAGENESIS', 'description': 'Increased glucokinase activity based on measure of catalytic efficiency. Increased affinity for glucose.', 'alternativeSequence': 'A', 'begin': '453', 'end': '453', 'molecule': '', 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19146401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19146401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19146401'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '12', 'end': '20', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '21', 'end': '23', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '27', 'end': '45', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'TURN', 'category': 'STRUCTURAL', 'begin': '47', 'end': '52', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '58', 'end': '65', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'TURN', 'category': 'STRUCTURAL', 'begin': '66', 'end': '68', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '4LC9', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/4LC9'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '72', 'end': '92', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '95', 'end': '97', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3H1V', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3H1V'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '99', 'end': '109', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '112', 'end': '115', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '116', 'end': '118', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '119', 'end': '136', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '140', 'end': '142', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '145', 'end': '150', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '154', 'end': '158', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '161', 'end': '164', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '181', 'end': '192', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '198', 'end': '203', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '205', 'end': '214', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '220', 'end': '237', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '238', 'end': '240', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '248', 'end': '254', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '257', 'end': '259', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'TURN', 'category': 'STRUCTURAL', 'begin': '260', 'end': '263', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '264', 'end': '266', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '4MLH', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/4MLH'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '267', 'end': '269', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '272', 'end': '280', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '281', 'end': '283', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '288', 'end': '291', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '295', 'end': '311', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '316', 'end': '318', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'TURN', 'category': 'STRUCTURAL', 'begin': '322', 'end': '325', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '332', 'end': '339', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '340', 'end': '342', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3QIC', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3QIC'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '343', 'end': '345', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '4ISE', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/4ISE'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '346', 'end': '354', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '361', 'end': '396', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '400', 'end': '409', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '411', 'end': '415', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '416', 'end': '418', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3VEV', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3VEV'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '419', 'end': '430', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'STRAND', 'category': 'STRUCTURAL', 'begin': '434', 'end': '440', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'HELIX', 'category': 'STRUCTURAL', 'begin': '444', 'end': '456', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}]}, {'type': 'TURN', 'category': 'STRUCTURAL', 'begin': '457', 'end': '459', 'molecule': '', 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3H1V', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3H1V'}}]}], 'dbReferences': [{'type': 'EMBL', 'id': 'M88011', 'properties': {'molecule type': 'mRNA', 'protein sequence ID': 'AAA51824.1'}}, {'type': 'EMBL', 'id': 'M69051', 'properties': {'molecule type': 'mRNA', 'protein sequence ID': 'AAB59563.1', 'status': 'ALT_SEQ'}}, {'type': 'EMBL', 'id': 'M90298', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAA67541.1', 'status': 'ALT_SEQ'}}, {'type': 'EMBL', 'id': 'M90298', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAA67542.1', 'status': 'ALT_SEQ'}}, {'type': 'EMBL', 'id': 'M90299', 'properties': {'molecule type': 'mRNA', 'protein sequence ID': 'AAA52562.1'}}, {'type': 'EMBL', 'id': 'AF041022', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97680.1'}}, {'type': 'EMBL', 'id': 'AF041012', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97680.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041015', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97680.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041016', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97680.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041017', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97680.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041018', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97680.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041019', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97680.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041020', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97680.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041021', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97680.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041022', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97681.1'}}, {'type': 'EMBL', 'id': 'AF041013', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97681.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041015', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97681.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041016', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97681.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041017', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97681.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041018', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97681.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041019', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97681.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041020', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97681.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041021', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97681.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041022', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97682.1'}}, {'type': 'EMBL', 'id': 'AF041014', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97682.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041015', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97682.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041016', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97682.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041017', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97682.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041018', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97682.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041019', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97682.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041020', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97682.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AF041021', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'AAB97682.1', 'status': 'JOINED'}}, {'type': 'EMBL', 'id': 'AK122876', 'properties': {'molecule type': 'mRNA', 'protein sequence ID': 'BAG53774.1'}}, {'type': 'EMBL', 'id': 'CH236960', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'EAL23765.1'}}, {'type': 'EMBL', 'id': 'CH236960', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'EAL23766.1'}}, {'type': 'EMBL', 'id': 'CH471128', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'EAW61114.1'}}, {'type': 'EMBL', 'id': 'CH471128', 'properties': {'molecule type': 'Genomic_DNA', 'protein sequence ID': 'EAW61116.1'}}, {'type': 'EMBL', 'id': 'BC001890', 'properties': {'molecule type': 'mRNA', 'protein sequence ID': 'AAH01890.1'}}, {'type': 'CCDS', 'id': 'CCDS5479.1', 'isoform': 'P35557-1'}, {'type': 'CCDS', 'id': 'CCDS5480.1', 'isoform': 'P35557-2'}, {'type': 'CCDS', 'id': 'CCDS5481.1', 'isoform': 'P35557-3'}, {'type': 'PIR', 'id': 'A46157', 'properties': {'entry name': 'A46157'}}, {'type': 'PIR', 'id': 'B46157', 'properties': {'entry name': 'B46157'}}, {'type': 'PIR', 'id': 'C46157', 'properties': {'entry name': 'C46157'}}, {'type': 'RefSeq', 'id': 'NP_000153.1', 'properties': {'nucleotide sequence ID': 'NM_000162.3'}, 'isoform': 'P35557-1'}, {'type': 'RefSeq', 'id': 'NP_277042.1', 'properties': {'nucleotide sequence ID': 'NM_033507.1'}, 'isoform': 'P35557-2'}, {'type': 'RefSeq', 'id': 'NP_277043.1', 'properties': {'nucleotide sequence ID': 'NM_033508.1'}, 'isoform': 'P35557-3'}, {'type': 'PDB', 'id': '1GLK', 'properties': {'method': 'Model', 'chains': 'A=1-465'}}, {'type': 'PDB', 'id': '1V4S', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.30 A'}}, {'type': 'PDB', 'id': '1V4T', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '3.40 A'}}, {'type': 'PDB', 'id': '3A0I', 'properties': {'method': 'X-ray', 'chains': 'X=16-465', 'resolution': '2.20 A'}}, {'type': 'PDB', 'id': '3F9M', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '1.50 A'}}, {'type': 'PDB', 'id': '3FGU', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '2.15 A'}}, {'type': 'PDB', 'id': '3FR0', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.70 A'}}, {'type': 'PDB', 'id': '3GOI', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.52 A'}}, {'type': 'PDB', 'id': '3H1V', 'properties': {'method': 'X-ray', 'chains': 'X=16-465', 'resolution': '2.11 A'}}, {'type': 'PDB', 'id': '3ID8', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '2.40 A'}}, {'type': 'PDB', 'id': '3IDH', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '2.14 A'}}, {'type': 'PDB', 'id': '3IMX', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.00 A'}}, {'type': 'PDB', 'id': '3QIC', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '2.20 A'}}, {'type': 'PDB', 'id': '3S41', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '2.18 A'}}, {'type': 'PDB', 'id': '3VEV', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '1.80 A'}}, {'type': 'PDB', 'id': '3VEY', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.25 A'}}, {'type': 'PDB', 'id': '3VF6', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '1.86 A'}}, {'type': 'PDB', 'id': '4DCH', 'properties': {'method': 'X-ray', 'chains': 'A=1-465', 'resolution': '1.79 A'}}, {'type': 'PDB', 'id': '4DHY', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '2.38 A'}}, {'type': 'PDB', 'id': '4ISE', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '1.78 A'}}, {'type': 'PDB', 'id': '4ISF', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.09 A'}}, {'type': 'PDB', 'id': '4ISG', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.64 A'}}, {'type': 'PDB', 'id': '4IWV', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.10 A'}}, {'type': 'PDB', 'id': '4IXC', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.00 A'}}, {'type': 'PDB', 'id': '4L3Q', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.70 A'}}, {'type': 'PDB', 'id': '4LC9', 'properties': {'method': 'X-ray', 'chains': 'B=3-465', 'resolution': '3.40 A'}}, {'type': 'PDB', 'id': '4MLE', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.60 A'}}, {'type': 'PDB', 'id': '4MLH', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.90 A'}}, {'type': 'PDB', 'id': '4NO7', 'properties': {'method': 'X-ray', 'chains': 'A=12-465', 'resolution': '1.70 A'}}, {'type': 'PDB', 'id': '4RCH', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.30 A'}}, {'type': 'PDB', 'id': '5V4W', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.39 A'}}, {'type': 'PDB', 'id': '5V4X', 'properties': {'method': 'X-ray', 'chains': 'A=16-465', 'resolution': '2.08 A'}}, {'type': 'PDB', 'id': '6E0E', 'properties': {'method': 'X-ray', 'chains': 'A=16-461', 'resolution': '2.70 A'}}, {'type': 'PDB', 'id': '6E0I', 'properties': {'method': 'X-ray', 'chains': 'A=1-458', 'resolution': '1.90 A'}}, {'type': 'PDBsum', 'id': '1GLK'}, {'type': 'PDBsum', 'id': '1V4S'}, {'type': 'PDBsum', 'id': '1V4T'}, {'type': 'PDBsum', 'id': '3A0I'}, {'type': 'PDBsum', 'id': '3F9M'}, {'type': 'PDBsum', 'id': '3FGU'}, {'type': 'PDBsum', 'id': '3FR0'}, {'type': 'PDBsum', 'id': '3GOI'}, {'type': 'PDBsum', 'id': '3H1V'}, {'type': 'PDBsum', 'id': '3ID8'}, {'type': 'PDBsum', 'id': '3IDH'}, {'type': 'PDBsum', 'id': '3IMX'}, {'type': 'PDBsum', 'id': '3QIC'}, {'type': 'PDBsum', 'id': '3S41'}, {'type': 'PDBsum', 'id': '3VEV'}, {'type': 'PDBsum', 'id': '3VEY'}, {'type': 'PDBsum', 'id': '3VF6'}, {'type': 'PDBsum', 'id': '4DCH'}, {'type': 'PDBsum', 'id': '4DHY'}, {'type': 'PDBsum', 'id': '4ISE'}, {'type': 'PDBsum', 'id': '4ISF'}, {'type': 'PDBsum', 'id': '4ISG'}, {'type': 'PDBsum', 'id': '4IWV'}, {'type': 'PDBsum', 'id': '4IXC'}, {'type': 'PDBsum', 'id': '4L3Q'}, {'type': 'PDBsum', 'id': '4LC9'}, {'type': 'PDBsum', 'id': '4MLE'}, {'type': 'PDBsum', 'id': '4MLH'}, {'type': 'PDBsum', 'id': '4NO7'}, {'type': 'PDBsum', 'id': '4RCH'}, {'type': 'PDBsum', 'id': '5V4W'}, {'type': 'PDBsum', 'id': '5V4X'}, {'type': 'PDBsum', 'id': '6E0E'}, {'type': 'PDBsum', 'id': '6E0I'}, {'type': 'SMR', 'id': 'P35557'}, {'type': 'BioGrid', 'id': '108915', 'properties': {'interactions': '13'}}, {'type': 'IntAct', 'id': 'P35557', 'properties': {'interactions': '6'}}, {'type': 'STRING', 'id': '9606.ENSP00000223366'}, {'type': 'BindingDB', 'id': 'P35557'}, {'type': 'ChEMBL', 'id': 'CHEMBL3820'}, {'type': 'DrugBank', 'id': 'DB08118', 'properties': {'generic name': '2-(methylamino)-N-(4-methyl-1,3-thiazol-2-yl)-5-[(4-methyl-4H-1,2,4-triazol-3-yl)sulfanyl]benzamide'}}, {'type': 'DrugBank', 'id': 'DB08210', 'properties': {'generic name': '2-AMINO-4-FLUORO-5-[(1-METHYL-1H-IMIDAZOL-2-YL)SULFANYL]-N-(1,3-THIAZOL-2-YL)BENZAMIDE'}}, {'type': 'DrugBank', 'id': 'DB07358', 'properties': {'generic name': '2-amino-N-(4-methyl-1,3-thiazol-2-yl)-5-[(4-methyl-4H-1,2,4-triazol-3-yl)sulfanyl]benzamide'}}, {'type': 'DrugBank', 'id': 'DB07359', 'properties': {'generic name': '3-[(4-fluorophenyl)sulfanyl]-N-(4-methyl-1,3-thiazol-2-yl)-6-[(4-methyl-4H-1,2,4-triazol-3-yl)sulfanyl]pyridine-2-carboxamide'}}, {'type': 'DrugBank', 'id': 'DB02379', 'properties': {'generic name': 'Beta-D-Glucose'}}, {'type': 'DrugBank', 'id': 'DB01914', 'properties': {'generic name': 'D-glucose'}}, {'type': 'DrugBank', 'id': 'DB09341', 'properties': {'generic name': 'Dextrose, unspecified form'}}, {'type': 'DrugBank', 'id': 'DB09344', 'properties': {'generic name': 'Invert sugar'}}, {'type': 'GuidetoPHARMACOLOGY', 'id': '2798'}, {'type': 'iPTMnet', 'id': 'P35557'}, {'type': 'PhosphoSitePlus', 'id': 'P35557'}, {'type': 'BioMuta', 'id': 'GCK'}, {'type': 'DMDM', 'id': '547696'}, {'type': 'jPOST', 'id': 'P35557'}, {'type': 'MassIVE', 'id': 'P35557'}, {'type': 'PaxDb', 'id': 'P35557'}, {'type': 'PeptideAtlas', 'id': 'P35557'}, {'type': 'PRIDE', 'id': 'P35557'}, {'type': 'ProteomicsDB', 'id': '55084', 'isoform': 'P35557-1'}, {'type': 'ProteomicsDB', 'id': '55085', 'isoform': 'P35557-2'}, {'type': 'ProteomicsDB', 'id': '55086', 'isoform': 'P35557-3'}, {'type': 'DNASU', 'id': '2645'}, {'type': 'Ensembl', 'id': 'ENST00000345378', 'properties': {'gene ID': 'ENSG00000106633', 'protein sequence ID': 'ENSP00000223366'}, 'isoform': 'P35557-2'}, {'type': 'Ensembl', 'id': 'ENST00000395796', 'properties': {'gene ID': 'ENSG00000106633', 'protein sequence ID': 'ENSP00000379142'}, 'isoform': 'P35557-3'}, {'type': 'Ensembl', 'id': 'ENST00000403799', 'properties': {'gene ID': 'ENSG00000106633', 'protein sequence ID': 'ENSP00000384247'}, 'isoform': 'P35557-1'}, {'type': 'Ensembl', 'id': 'ENST00000616242', 'properties': {'gene ID': 'ENSG00000106633', 'protein sequence ID': 'ENSP00000482149'}, 'isoform': 'P35557-3'}, {'type': 'GeneID', 'id': '2645'}, {'type': 'KEGG', 'id': 'hsa:2645'}, {'type': 'UCSC', 'id': 'uc003tkj.2', 'properties': {'organism name': 'human'}, 'isoform': 'P35557-1'}, {'type': 'CTD', 'id': '2645'}, {'type': 'DisGeNET', 'id': '2645'}, {'type': 'EuPathDB', 'id': 'HostDB:ENSG00000106633.15'}, {'type': 'GeneCards', 'id': 'GCK'}, {'type': 'GeneReviews', 'id': 'GCK'}, {'type': 'HGNC', 'id': 'HGNC:4195', 'properties': {'gene designation': 'GCK'}}, {'type': 'HPA', 'id': 'HPA007034'}, {'type': 'HPA', 'id': 'HPA007093'}, {'type': 'MalaCards', 'id': 'GCK'}, {'type': 'MIM', 'id': '125851', 'properties': {'type': 'phenotype'}}, {'type': 'MIM', 'id': '125853', 'properties': {'type': 'phenotype'}}, {'type': 'MIM', 'id': '138079', 'properties': {'type': 'gene'}}, {'type': 'MIM', 'id': '602485', 'properties': {'type': 'phenotype'}}, {'type': 'MIM', 'id': '606176', 'properties': {'type': 'phenotype'}}, {'type': 'MIM', 'id': '606391', 'properties': {'type': 'phenotype'}}, {'type': 'neXtProt', 'id': 'NX_P35557'}, {'type': 'OpenTargets', 'id': 'ENSG00000106633'}, {'type': 'Orphanet', 'id': '79299', 'properties': {'disease': 'Hyperinsulinism due to glucokinase deficiency'}}, {'type': 'Orphanet', 'id': '552', 'properties': {'disease': 'MODY'}}, {'type': 'Orphanet', 'id': '99885', 'properties': {'disease': 'Permanent neonatal diabetes mellitus'}}, {'type': 'PharmGKB', 'id': 'PA28610'}, {'type': 'eggNOG', 'id': 'KOG1369', 'properties': {'taxonomic scope': 'Eukaryota'}}, {'type': 'eggNOG', 'id': 'COG5026', 'properties': {'taxonomic scope': 'LUCA'}}, {'type': 'GeneTree', 'id': 'ENSGT00950000182787'}, {'type': 'HOGENOM', 'id': 'HOG000162670'}, {'type': 'InParanoid', 'id': 'P35557'}, {'type': 'KO', 'id': 'K12407'}, {'type': 'OMA', 'id': 'IAINCEW'}, {'type': 'OrthoDB', 'id': '890925at2759'}, {'type': 'PhylomeDB', 'id': 'P35557'}, {'type': 'TreeFam', 'id': 'TF314238'}, {'type': 'BioCyc', 'id': 'MetaCyc:HS02935-MONOMER'}, {'type': 'BRENDA', 'id': '2.7.1.1', 'properties': {'organism ID': '2681'}}, {'type': 'BRENDA', 'id': '2.7.1.2', 'properties': {'organism ID': '2681'}}, {'type': 'Reactome', 'id': 'R-HSA-170822', 'properties': {'pathway name': 'Regulation of Glucokinase by Glucokinase Regulatory Protein'}}, {'type': 'Reactome', 'id': 'R-HSA-210745', 'properties': {'pathway name': 'Regulation of gene expression in beta cells'}}, {'type': 'Reactome', 'id': 'R-HSA-5619073', 'properties': {'pathway name': 'Defective GCK causes maturity-onset diabetes of the young 2 (MODY2)'}}, {'type': 'Reactome', 'id': 'R-HSA-5619107', 'properties': {'pathway name': 'Defective TPR may confer susceptibility towards thyroid papillary carcinoma (TPC)'}}, {'type': 'Reactome', 'id': 'R-HSA-70171', 'properties': {'pathway name': 'Glycolysis'}}, {'type': 'Reactome', 'id': 'R-HSA-9615017', 'properties': {'pathway name': 'FOXO-mediated transcription of oxidative stress, metabolic and neuronal genes'}}, {'type': 'SABIO-RK', 'id': 'P35557'}, {'type': 'SIGNOR', 'id': 'P35557'}, {'type': 'UniPathway', 'id': 'UPA00109', 'properties': {'reaction ID': 'UER00180'}}, {'type': 'UniPathway', 'id': 'UPA00242'}, {'type': 'ChiTaRS', 'id': 'GCK', 'properties': {'organism name': 'human'}}, {'type': 'EvolutionaryTrace', 'id': 'P35557'}, {'type': 'GeneWiki', 'id': 'Glucokinase'}, {'type': 'GenomeRNAi', 'id': '2645'}, {'type': 'Pharos', 'id': 'P35557', 'properties': {'development level': 'Tchem'}}, {'type': 'PRO', 'id': 'PR:P35557'}, {'type': 'Proteomes', 'id': 'UP000005640', 'properties': {'component': 'Chromosome 7'}}, {'type': 'RNAct', 'id': 'P35557', 'properties': {'molecule type': 'protein'}}, {'type': 'Bgee', 'id': 'ENSG00000106633', 'properties': {'expression patterns': 'Expressed in 96 organ(s), highest expression level in liver'}}, {'type': 'ExpressionAtlas', 'id': 'P35557', 'properties': {'expression patterns': 'baseline and differential'}}, {'type': 'Genevisible', 'id': 'P35557', 'properties': {'organism ID': 'HS'}}, {'type': 'GO', 'id': 'GO:0005623', 'properties': {'term': 'C:cell', 'source': 'IEA:GOC'}}, {'type': 'GO', 'id': 'GO:0005829', 'properties': {'term': 'C:cytosol', 'source': 'IDA:HPA'}}, {'type': 'GO', 'id': 'GO:0005739', 'properties': {'term': 'C:mitochondrion', 'source': 'IEA:UniProtKB-SubCell'}}, {'type': 'GO', 'id': 'GO:0005654', 'properties': {'term': 'C:nucleoplasm', 'source': 'TAS:Reactome'}}, {'type': 'GO', 'id': 'GO:0005524', 'properties': {'term': 'F:ATP binding', 'source': 'IDA:UniProtKB'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '12941786', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/12941786', 'alternativeUrl': 'https://europepmc.org/abstract/MED/12941786'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16173921', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16173921', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16173921'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8446612', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8446612', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8446612'}}]}, {'type': 'GO', 'id': 'GO:0008865', 'properties': {'term': 'F:fructokinase activity', 'source': 'IBA:GO_Central'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '21873635', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/21873635', 'alternativeUrl': 'https://europepmc.org/abstract/MED/21873635'}}]}, {'type': 'GO', 'id': 'GO:0004340', 'properties': {'term': 'F:glucokinase activity', 'source': 'IDA:UniProtKB'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '12941786', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/12941786', 'alternativeUrl': 'https://europepmc.org/abstract/MED/12941786'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16173921', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16173921', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16173921'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '22611063', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/22611063', 'alternativeUrl': 'https://europepmc.org/abstract/MED/22611063'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8446612', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8446612', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8446612'}}]}, {'type': 'GO', 'id': 'GO:0005536', 'properties': {'term': 'F:glucose binding', 'source': 'IDA:UniProtKB'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '12941786', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/12941786', 'alternativeUrl': 'https://europepmc.org/abstract/MED/12941786'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '16173921', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/16173921', 'alternativeUrl': 'https://europepmc.org/abstract/MED/16173921'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8446612', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8446612', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8446612'}}]}, {'type': 'GO', 'id': 'GO:0019158', 'properties': {'term': 'F:mannokinase activity', 'source': 'IBA:GO_Central'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '21873635', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/21873635', 'alternativeUrl': 'https://europepmc.org/abstract/MED/21873635'}}]}, {'type': 'GO', 'id': 'GO:0070509', 'properties': {'term': 'P:calcium ion import', 'source': 'IEA:Ensembl'}}, {'type': 'GO', 'id': 'GO:0061621', 'properties': {'term': 'P:canonical glycolysis', 'source': 'TAS:Reactome'}}, {'type': 'GO', 'id': 'GO:0001678', 'properties': {'term': 'P:cellular glucose homeostasis', 'source': 'IBA:GO_Central'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '21873635', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/21873635', 'alternativeUrl': 'https://europepmc.org/abstract/MED/21873635'}}]}, {'type': 'GO', 'id': 'GO:0032869', 'properties': {'term': 'P:cellular response to insulin stimulus', 'source': 'ISS:BHF-UCL'}}, {'type': 'GO', 'id': 'GO:0044320', 'properties': {'term': 'P:cellular response to leptin stimulus', 'source': 'ISS:BHF-UCL'}}, {'type': 'GO', 'id': 'GO:0051594', 'properties': {'term': 'P:detection of glucose', 'source': 'IMP:UniProtKB'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '12941786', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/12941786', 'alternativeUrl': 'https://europepmc.org/abstract/MED/12941786'}}]}, {'type': 'GO', 'id': 'GO:0051156', 'properties': {'term': 'P:glucose 6-phosphate metabolic process', 'source': 'IMP:UniProtKB'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '18322640', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/18322640', 'alternativeUrl': 'https://europepmc.org/abstract/MED/18322640'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '19146401', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/19146401', 'alternativeUrl': 'https://europepmc.org/abstract/MED/19146401'}}]}, {'type': 'GO', 'id': 'GO:0042593', 'properties': {'term': 'P:glucose homeostasis', 'source': 'IMP:UniProtKB'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8132752', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8132752', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8132752'}}]}, {'type': 'GO', 'id': 'GO:0006096', 'properties': {'term': 'P:glycolytic process', 'source': 'IBA:GO_Central'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '21873635', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/21873635', 'alternativeUrl': 'https://europepmc.org/abstract/MED/21873635'}}]}, {'type': 'GO', 'id': 'GO:0006739', 'properties': {'term': 'P:NADP metabolic process', 'source': 'IEA:Ensembl'}}, {'type': 'GO', 'id': 'GO:0045721', 'properties': {'term': 'P:negative regulation of gluconeogenesis', 'source': 'IMP:UniProtKB'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8878425', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8878425', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8878425'}}]}, {'type': 'GO', 'id': 'GO:0045725', 'properties': {'term': 'P:positive regulation of glycogen biosynthetic process', 'source': 'IMP:UniProtKB'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8878425', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8878425', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8878425'}}]}, {'type': 'GO', 'id': 'GO:0032024', 'properties': {'term': 'P:positive regulation of insulin secretion', 'source': 'IMP:UniProtKB'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8132752', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8132752', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8132752'}}, {'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '8878425', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/8878425', 'alternativeUrl': 'https://europepmc.org/abstract/MED/8878425'}}]}, {'type': 'GO', 'id': 'GO:0006110', 'properties': {'term': 'P:regulation of glycolytic process', 'source': 'TAS:Reactome'}}, {'type': 'GO', 'id': 'GO:0050796', 'properties': {'term': 'P:regulation of insulin secretion', 'source': 'IMP:BHF-UCL'}, 'evidences': [{'code': 'ECO:0000269', 'source': {'name': 'PubMed', 'id': '20668700', 'url': 'http://www.ncbi.nlm.nih.gov/pubmed/20668700', 'alternativeUrl': 'https://europepmc.org/abstract/MED/20668700'}}]}, {'type': 'GO', 'id': 'GO:0043266', 'properties': {'term': 'P:regulation of potassium ion transport', 'source': 'IEA:Ensembl'}}, {'type': 'InterPro', 'id': 'IPR039073', 'properties': {'entry name': 'GCK_chordate'}}, {'type': 'InterPro', 'id': 'IPR001312', 'properties': {'entry name': 'Hexokinase'}}, {'type': 'InterPro', 'id': 'IPR019807', 'properties': {'entry name': 'Hexokinase_BS'}}, {'type': 'InterPro', 'id': 'IPR022673', 'properties': {'entry name': 'Hexokinase_C'}}, {'type': 'InterPro', 'id': 'IPR022672', 'properties': {'entry name': 'Hexokinase_N'}}, {'type': 'PANTHER', 'id': 'PTHR19443', 'properties': {'match status': '1', 'entry name': 'PTHR19443'}}, {'type': 'PANTHER', 'id': 'PTHR19443:SF3', 'properties': {'match status': '1', 'entry name': 'PTHR19443:SF3'}}, {'type': 'Pfam', 'id': 'PF00349', 'properties': {'match status': '1', 'entry name': 'Hexokinase_1'}}, {'type': 'Pfam', 'id': 'PF03727', 'properties': {'match status': '1', 'entry name': 'Hexokinase_2'}}, {'type': 'PROSITE', 'id': 'PS00378', 'properties': {'match status': '1', 'entry name': 'HEXOKINASE_1'}}, {'type': 'PROSITE', 'id': 'PS51748', 'properties': {'match status': '1', 'entry name': 'HEXOKINASE_2'}}], 'keywords': [{'value': '3D-structure'}, {'value': 'Allosteric enzyme'}, {'value': 'Alternative splicing'}, {'value': 'ATP-binding'}, {'value': 'Cytoplasm'}, {'value': 'Diabetes mellitus'}, {'value': 'Disease mutation'}, {'value': 'Glycolysis'}, {'value': 'Kinase'}, {'value': 'Mitochondrion'}, {'value': 'Nucleotide-binding'}, {'value': 'Nucleus'}, {'value': 'Polymorphism'}, {'value': 'Reference proteome'}, {'value': 'Transferase'}], 'references': [{'citation': {'type': 'journal article', 'publicationDate': '1992', 'title': 'Human glucokinase gene: isolation, structural characterization, and identification of a microsatellite repeat polymorphism.', 'authors': ['Tanizawa Y.', 'Matsutani A.', 'Chiu K.C.', 'Permutt M.A.'], 'publication': {'journalName': 'Mol. Endocrinol.'}, 'location': {'volume': '6', 'firstPage': '1070', 'lastPage': '1081'}, 'dbReferences': [{'type': 'PubMed', 'id': '1354840'}, {'type': 'DOI', 'id': '10.1210/mend.6.7.1354840'}]}, 'scope': ['NUCLEOTIDE SEQUENCE [GENOMIC DNA]']}, {'citation': {'type': 'journal article', 'publicationDate': '1991', 'title': 'Human liver glucokinase gene: cloning and sequence determination of two alternatively spliced cDNAs.', 'authors': ['Tanizawa Y.', 'Koranyi L.I.', 'Welling C.M.', 'Permutt M.A.'], 'publication': {'journalName': 'Proc. Natl. Acad. Sci. U.S.A.'}, 'location': {'volume': '88', 'firstPage': '7294', 'lastPage': '7297'}, 'dbReferences': [{'type': 'PubMed', 'id': '1871135'}, {'type': 'DOI', 'id': '10.1073/pnas.88.16.7294'}]}, 'scope': ['NUCLEOTIDE SEQUENCE [MRNA]', 'VARIANT THR-107']}, {'citation': {'type': 'journal article', 'publicationDate': '1992', 'title': 'Human pancreatic beta-cell glucokinase: cDNA sequence and localization of the polymorphic gene to chromosome 7, band p13.', 'authors': ['Nishi S.', 'Stoffel M.', 'Xiang K.S.', 'Shows T.B.', 'Bell G.I.', 'Takeda J.'], 'publication': {'journalName': 'Diabetologia'}, 'location': {'volume': '35', 'firstPage': '743', 'lastPage': '747'}, 'dbReferences': [{'type': 'PubMed', 'id': '1511800'}]}, 'source': {'tissue': [{'value': 'Pancreas'}]}, 'scope': ['NUCLEOTIDE SEQUENCE [MRNA]']}, {'citation': {'type': 'journal article', 'publicationDate': '1992', 'title': 'Human islet glucokinase gene. Isolation and sequence analysis of full-length cDNA.', 'authors': ['Koranyi L.I.', 'Tanizawa Y.', 'Welling C.M.', 'Rabin D.U.', 'Permutt M.A.'], 'publication': {'journalName': 'Diabetes'}, 'location': {'volume': '41', 'firstPage': '807', 'lastPage': '811'}, 'dbReferences': [{'type': 'PubMed', 'id': '1612194'}, {'type': 'DOI', 'id': '10.2337/diab.41.7.807'}]}, 'source': {'tissue': [{'value': 'Pancreas'}]}, 'scope': ['NUCLEOTIDE SEQUENCE [MRNA]']}, {'citation': {'type': 'journal article', 'publicationDate': '1992', 'title': 'Human glucokinase gene: isolation, characterization, and identification of two missense mutations linked to early-onset non-insulin-dependent (type 2) diabetes mellitus.', 'authors': ['Stoffel M.', 'Froguel P.', 'Takeda J.', 'Zouali H.', 'Vionnet N.', 'Nishi S.', 'Weber I.T.', 'Harrison R.W.', 'Pilkis S.J.', 'Lesage S.', 'Vaxillaire M.', 'Velho G.', 'Sun F.', 'Iris F.', 'Passa P.', 'Cohen D.', 'Bell G.I.'], 'publication': {'journalName': 'Proc. Natl. Acad. Sci. U.S.A.'}, 'location': {'volume': '89', 'firstPage': '7698', 'lastPage': '7702'}, 'dbReferences': [{'type': 'PubMed', 'id': '1502186'}, {'type': 'DOI', 'id': '10.1073/pnas.89.16.7698'}]}, 'source': {'tissue': [{'value': 'Placenta'}]}, 'scope': ['NUCLEOTIDE SEQUENCE [GENOMIC DNA]', 'VARIANTS MODY2 MET-228 AND ARG-261']}, {'citation': {'type': 'journal article', 'publicationDate': '1992', 'authors': ['Stoffel M.', 'Froguel P.', 'Takeda J.', 'Zouali H.', 'Vionnet N.', 'Nishi S.', 'Weber I.T.', 'Harrison R.W.', 'Pilkis S.J.', 'Lesage S.', 'Vaxillaire M.', 'Velho G.', 'Sun F.', 'Iris F.', 'Passa P.', 'Cohen D.', 'Bell G.I.'], 'publication': {'journalName': 'Proc. Natl. Acad. Sci. U.S.A.'}, 'location': {'volume': '89', 'firstPage': '10562', 'lastPage': '10562'}}, 'scope': ['ERRATUM']}, {'citation': {'type': 'journal article', 'publicationDate': '1992', 'title': 'Structure of the human glucokinase gene and identification of a missense mutation in a Japanese patient with early-onset non-insulin-dependent diabetes mellitus.', 'authors': ['Sakura H.', 'Eto K.', 'Kadowaki H.', 'Simokawa K.', 'Ueno H.', 'Koda N.', 'Fukushima Y.', 'Akanuma Y.', 'Yazaki Y.', 'Kadowaki T.'], 'publication': {'journalName': 'J. Clin. Endocrinol. Metab.'}, 'location': {'volume': '75', 'firstPage': '1571', 'lastPage': '1573'}, 'dbReferences': [{'type': 'PubMed', 'id': '1464666'}, {'type': 'DOI', 'id': '10.1210/jcem.75.6.1464666'}]}, 'scope': ['NUCLEOTIDE SEQUENCE [GENOMIC DNA]', 'VARIANT THR-107', 'VARIANT MODY2 ARG-261']}, {'citation': {'type': 'journal article', 'publicationDate': '2004', 'title': 'Complete sequencing and characterization of 21,243 full-length human cDNAs.', 'authors': ['Ota T.', 'Suzuki Y.', 'Nishikawa T.', 'Otsuki T.', 'Sugiyama T.', 'Irie R.', 'Wakamatsu A.', 'Hayashi K.', 'Sato H.', 'Nagai K.', 'Kimura K.', 'Makita H.', 'Sekine M.', 'Obayashi M.', 'Nishi T.', 'Shibahara T.', 'Tanaka T.', 'Ishii S.', 'Yamamoto J.', 'Saito K.', 'Kawai Y.', 'Isono Y.', 'Nakamura Y.', 'Nagahari K.', 'Murakami K.', 'Yasuda T.', 'Iwayanagi T.', 'Wagatsuma M.', 'Shiratori A.', 'Sudo H.', 'Hosoiri T.', 'Kaku Y.', 'Kodaira H.', 'Kondo H.', 'Sugawara M.', 'Takahashi M.', 'Kanda K.', 'Yokoi T.', 'Furuya T.', 'Kikkawa E.', 'Omura Y.', 'Abe K.', 'Kamihara K.', 'Katsuta N.', 'Sato K.', 'Tanikawa M.', 'Yamazaki M.', 'Ninomiya K.', 'Ishibashi T.', 'Yamashita H.', 'Murakawa K.', 'Fujimori K.', 'Tanai H.', 'Kimata M.', 'Watanabe M.', 'Hiraoka S.', 'Chiba Y.', 'Ishida S.', 'Ono Y.', 'Takiguchi S.', 'Watanabe S.', 'Yosida M.', 'Hotuta T.', 'Kusano J.', 'Kanehori K.', 'Takahashi-Fujii A.', 'Hara H.', 'Tanase T.-O.', 'Nomura Y.', 'Togiya S.', 'Komai F.', 'Hara R.', 'Takeuchi K.', 'Arita M.', 'Imose N.', 'Musashino K.', 'Yuuki H.', 'Oshima A.', 'Sasaki N.', 'Aotsuka S.', 'Yoshikawa Y.', 'Matsunawa H.', 'Ichihara T.', 'Shiohata N.', 'Sano S.', 'Moriya S.', 'Momiyama H.', 'Satoh N.', 'Takami S.', 'Terashima Y.', 'Suzuki O.', 'Nakagawa S.', 'Senoh A.', 'Mizoguchi H.', 'Goto Y.', 'Shimizu F.', 'Wakebe H.', 'Hishigaki H.', 'Watanabe T.', 'Sugiyama A.', 'Takemoto M.', 'Kawakami B.', 'Yamazaki M.', 'Watanabe K.', 'Kumagai A.', 'Itakura S.', 'Fukuzumi Y.', 'Fujimori Y.', 'Komiyama M.', 'Tashiro H.', 'Tanigami A.', 'Fujiwara T.', 'Ono T.', 'Yamada K.', 'Fujii Y.', 'Ozaki K.', 'Hirao M.', 'Ohmori Y.', 'Kawabata A.', 'Hikiji T.', 'Kobatake N.', 'Inagaki H.', 'Ikema Y.', 'Okamoto S.', 'Okitani R.', 'Kawakami T.', 'Noguchi S.', 'Itoh T.', 'Shigeta K.', 'Senba T.', 'Matsumura K.', 'Nakajima Y.', 'Mizuno T.', 'Morinaga M.', 'Sasaki M.', 'Togashi T.', 'Oyama M.', 'Hata H.', 'Watanabe M.', 'Komatsu T.', 'Mizushima-Sugano J.', 'Satoh T.', 'Shirai Y.', 'Takahashi Y.', 'Nakagawa K.', 'Okumura K.', 'Nagase T.', 'Nomura N.', 'Kikuchi H.', 'Masuho Y.', 'Yamashita R.', 'Nakai K.', 'Yada T.', 'Nakamura Y.', 'Ohara O.', 'Isogai T.', 'Sugano S.'], 'publication': {'journalName': 'Nat. Genet.'}, 'location': {'volume': '36', 'firstPage': '40', 'lastPage': '45'}, 'dbReferences': [{'type': 'PubMed', 'id': '14702039'}, {'type': 'DOI', 'id': '10.1038/ng1285'}]}, 'source': {'tissue': [{'value': 'Liver'}]}, 'scope': ['NUCLEOTIDE SEQUENCE [LARGE SCALE MRNA] (ISOFORM 2)']}, {'citation': {'type': 'journal article', 'publicationDate': '2003', 'title': 'Human chromosome 7: DNA sequence and biology.', 'authors': ['Scherer S.W.', 'Cheung J.', 'MacDonald J.R.', 'Osborne L.R.', 'Nakabayashi K.', 'Herbrick J.-A.', 'Carson A.R.', 'Parker-Katiraee L.', 'Skaug J.', 'Khaja R.', 'Zhang J.', 'Hudek A.K.', 'Li M.', 'Haddad M.', 'Duggan G.E.', 'Fernandez B.A.', 'Kanematsu E.', 'Gentles S.', 'Christopoulos C.C.', 'Choufani S.', 'Kwasnicka D.', 'Zheng X.H.', 'Lai Z.', 'Nusskern D.R.', 'Zhang Q.', 'Gu Z.', 'Lu F.', 'Zeesman S.', 'Nowaczyk M.J.', 'Teshima I.', 'Chitayat D.', 'Shuman C.', 'Weksberg R.', 'Zackai E.H.', 'Grebe T.A.', 'Cox S.R.', 'Kirkpatrick S.J.', 'Rahman N.', 'Friedman J.M.', 'Heng H.H.Q.', 'Pelicci P.G.', 'Lo-Coco F.', 'Belloni E.', 'Shaffer L.G.', 'Pober B.', 'Morton C.C.', 'Gusella J.F.', 'Bruns G.A.P.', 'Korf B.R.', 'Quade B.J.', 'Ligon A.H.', 'Ferguson H.', 'Higgins A.W.', 'Leach N.T.', 'Herrick S.R.', 'Lemyre E.', 'Farra C.G.', 'Kim H.-G.', 'Summers A.M.', 'Gripp K.W.', 'Roberts W.', 'Szatmari P.', 'Winsor E.J.T.', 'Grzeschik K.-H.', 'Teebi A.', 'Minassian B.A.', 'Kere J.', 'Armengol L.', 'Pujana M.A.', 'Estivill X.', 'Wilson M.D.', 'Koop B.F.', 'Tosi S.', 'Moore G.E.', 'Boright A.P.', 'Zlotorynski E.', 'Kerem B.', 'Kroisel P.M.', 'Petek E.', 'Oscier D.G.', 'Mould S.J.', 'Doehner H.', 'Doehner K.', 'Rommens J.M.', 'Vincent J.B.', 'Venter J.C.', 'Li P.W.', 'Mural R.J.', 'Adams M.D.', 'Tsui L.-C.'], 'publication': {'journalName': 'Science'}, 'location': {'volume': '300', 'firstPage': '767', 'lastPage': '772'}, 'dbReferences': [{'type': 'PubMed', 'id': '12690205'}, {'type': 'DOI', 'id': '10.1126/science.1083423'}]}, 'scope': ['NUCLEOTIDE SEQUENCE [LARGE SCALE GENOMIC DNA]']}, {'citation': {'type': 'submission', 'publicationDate': 'SEP-2005', 'authors': ['Mural R.J.', 'Istrail S.', 'Sutton G.G.', 'Florea L.', 'Halpern A.L.', 'Mobarry C.M.', 'Lippert R.', 'Walenz B.', 'Shatkay H.', 'Dew I.', 'Miller J.R.', 'Flanigan M.J.', 'Edwards N.J.', 'Bolanos R.', 'Fasulo D.', 'Halldorsson B.V.', 'Hannenhalli S.', 'Turner R.', 'Yooseph S.', 'Lu F.', 'Nusskern D.R.', 'Shue B.C.', 'Zheng X.H.', 'Zhong F.', 'Delcher A.L.', 'Huson D.H.', 'Kravitz S.A.', 'Mouchard L.', 'Reinert K.', 'Remington K.A.', 'Clark A.G.', 'Waterman M.S.', 'Eichler E.E.', 'Adams M.D.', 'Hunkapiller M.W.', 'Myers E.W.', 'Venter J.C.'], 'publication': {'submissionDatabase': 'EMBL/GenBank/DDBJ databases'}}, 'scope': ['NUCLEOTIDE SEQUENCE [LARGE SCALE GENOMIC DNA]']}, {'citation': {'type': 'journal article', 'publicationDate': '2004', 'title': 'The status, quality, and expansion of the NIH full-length cDNA project: the Mammalian Gene Collection (MGC).', 'consortiums': ['The MGC Project Team'], 'publication': {'journalName': 'Genome Res.'}, 'location': {'volume': '14', 'firstPage': '2121', 'lastPage': '2127'}, 'dbReferences': [{'type': 'PubMed', 'id': '15489334'}, {'type': 'DOI', 'id': '10.1101/gr.2596504'}]}, 'source': {'tissue': [{'value': 'Lung'}]}, 'scope': ['NUCLEOTIDE SEQUENCE [LARGE SCALE MRNA]']}, {'citation': {'type': 'journal article', 'publicationDate': '1995', 'title': 'Sugar specificity of human beta-cell glucokinase: correlation of molecular models with kinetic measurements.', 'authors': ['Xu L.Z.', 'Weber I.T.', 'Harrison R.W.', 'Gidh-Jain M.', 'Pilkis S.J.'], 'publication': {'journalName': 'Biochemistry'}, 'location': {'volume': '34', 'firstPage': '6083', 'lastPage': '6092'}, 'dbReferences': [{'type': 'PubMed', 'id': '7742312'}, {'type': 'DOI', 'id': '10.1021/bi00018a011'}]}, 'scope': ['FUNCTION', 'CATALYTIC ACTIVITY']}, {'citation': {'type': 'journal article', 'publicationDate': '1996', 'title': 'Impaired hepatic glycogen synthesis in glucokinase-deficient (MODY-2) subjects.', 'authors': ['Velho G.', 'Petersen K.F.', 'Perseghin G.', 'Hwang J.H.', 'Rothman D.L.', 'Pueyo M.E.', 'Cline G.W.', 'Froguel P.', 'Shulman G.I.'], 'publication': {'journalName': 'J. Clin. Invest.'}, 'location': {'volume': '98', 'firstPage': '1755', 'lastPage': '1761'}, 'dbReferences': [{'type': 'PubMed', 'id': '8878425'}, {'type': 'DOI', 'id': '10.1172/jci118974'}]}, 'scope': ['INVOLVEMENT IN MODY2', 'FUNCTION']}, {'citation': {'type': 'journal article', 'publicationDate': '1999', 'title': 'Glucokinase regulatory protein is essential for the proper subcellular localisation of liver glucokinase.', 'authors': ['de la Iglesia N.', 'Veiga-da-Cunha M.', 'Van Schaftingen E.', 'Guinovart J.J.', 'Ferrer J.C.'], 'publication': {'journalName': 'FEBS Lett.'}, 'location': {'volume': '456', 'firstPage': '332', 'lastPage': '338'}, 'dbReferences': [{'type': 'PubMed', 'id': '10456334'}, {'type': 'DOI', 'id': '10.1016/s0014-5793(99)00971-0'}]}, 'scope': ['ACTIVITY REGULATION', 'SUBCELLULAR LOCATION']}, {'citation': {'type': 'journal article', 'publicationDate': '2009', 'title': 'Activating mutations in the human glucokinase gene revealed by genetic selection.', 'authors': ['Pal P.', 'Miller B.G.'], 'publication': {'journalName': 'Biochemistry'}, 'location': {'volume': '48', 'firstPage': '814', 'lastPage': '816'}, 'dbReferences': [{'type': 'PubMed', 'id': '19146401'}, {'type': 'DOI', 'id': '10.1021/bi802142q'}]}, 'scope': ['FUNCTION', 'CATALYTIC ACTIVITY', 'MUTAGENESIS OF SER-64; MET-197; ILE-211 AND SER-453']}, {'citation': {'type': 'journal article', 'publicationDate': '2013', 'title': 'Identification of the ubiquitin-like domain of midnolin as a new glucokinase interaction partner.', 'authors': ['Hofmeister-Brix A.', 'Kollmann K.', 'Langer S.', 'Schultz J.', 'Lenzen S.', 'Baltrusch S.'], 'publication': {'journalName': 'J. Biol. Chem.'}, 'location': {'volume': '288', 'firstPage': '35824', 'lastPage': '35839'}, 'dbReferences': [{'type': 'PubMed', 'id': '24187134'}, {'type': 'DOI', 'id': '10.1074/jbc.m113.526632'}]}, 'scope': ['INTERACTION WITH MIDN', 'SUBCELLULAR LOCATION']}, {'citation': {'type': 'journal article', 'publicationDate': '1994', 'title': 'Molecular model of human beta-cell glucokinase built by analogy to the crystal structure of yeast hexokinase B.', 'authors': ['St Charles R.', 'Harrison R.W.', 'Bell G.I.', 'Pilkis S.J.', 'Weber I.T.'], 'publication': {'journalName': 'Diabetes'}, 'location': {'volume': '43', 'firstPage': '784', 'lastPage': '791'}, 'dbReferences': [{'type': 'PubMed', 'id': '8194664'}, {'type': 'DOI', 'id': '10.2337/diab.43.6.784'}]}, 'scope': ['3D-STRUCTURE MODELING']}, {'citation': {'type': 'journal article', 'publicationDate': '2004', 'title': 'Structural basis for allosteric regulation of the monomeric allosteric enzyme human glucokinase.', 'authors': ['Kamata K.', 'Mitsuya M.', 'Nishimura T.', 'Eiki J.', 'Nagata Y.'], 'publication': {'journalName': 'Structure'}, 'location': {'volume': '12', 'firstPage': '429', 'lastPage': '438'}, 'dbReferences': [{'type': 'PubMed', 'id': '15016359'}, {'type': 'DOI', 'id': '10.1016/j.str.2004.02.005'}]}, 'scope': ['X-RAY CRYSTALLOGRAPHY (2.3 ANGSTROMS) OF 16-465 OF APOPROTEIN AND IN COMPLEX WITH GLUCOSE', 'SUBUNIT', 'ACTIVITY REGULATION']}, {'citation': {'type': 'journal article', 'publicationDate': '2009', 'title': 'Discovery of novel 3,6-disubstituted 2-pyridinecarboxamide derivatives as GK activators.', 'authors': ['Mitsuya M.', 'Kamata K.', 'Bamba M.', 'Watanabe H.', 'Sasaki Y.', 'Sasaki K.', 'Ohyama S.', 'Hosaka H.', 'Nagata Y.', 'Eiki J.', 'Nishimura T.'], 'publication': {'journalName': 'Bioorg. Med. Chem. Lett.'}, 'location': {'volume': '19', 'firstPage': '2718', 'lastPage': '2721'}, 'dbReferences': [{'type': 'PubMed', 'id': '19362831'}, {'type': 'DOI', 'id': '10.1016/j.bmcl.2009.03.137'}]}, 'scope': ['X-RAY CRYSTALLOGRAPHY (2.2 ANGSTROMS) OF 16-465 IN COMPLEX WITH SYNTHETIC ALLOSTERIC ACTIVATOR']}, {'citation': {'type': 'journal article', 'publicationDate': '2011', 'title': 'The active conformation of human glucokinase is not altered by allosteric activators.', 'authors': ['Petit P.', 'Antoine M.', 'Ferry G.', 'Boutin J.A.', 'Lagarde A.', 'Gluais L.', 'Vincentelli R.', 'Vuillard L.'], 'publication': {'journalName': 'Acta Crystallogr. D'}, 'location': {'volume': '67', 'firstPage': '929', 'lastPage': '935'}, 'dbReferences': [{'type': 'PubMed', 'id': '22101819'}, {'type': 'DOI', 'id': '10.1107/s0907444911036729'}]}, 'scope': ['X-RAY CRYSTALLOGRAPHY (1.50 ANGSTROMS) OF 12-465 IN COMPLEX WITH ATP ANALOG AND GLUCOSE'], 'evidences': [{'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3F9M', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3F9M'}}, {'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3FGU', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3FGU'}}, {'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3ID8', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3ID8'}}, {'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '3IDH', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/3IDH'}}, {'code': 'ECO:0000244', 'source': {'name': 'PDB', 'id': '4NO7', 'url': 'https://www.ebi.ac.uk/pdbe-srv/view/entry/4NO7'}}]}, {'citation': {'type': 'journal article', 'publicationDate': '2013', 'title': 'Structural basis for regulation of human glucokinase by glucokinase regulatory protein.', 'authors': ['Beck T.', 'Miller B.G.'], 'publication': {'journalName': 'Biochemistry'}, 'location': {'volume': '52', 'firstPage': '6232', 'lastPage': '6239'}, 'dbReferences': [{'type': 'PubMed', 'id': '23957911'}, {'type': 'DOI', 'id': '10.1021/bi400838t'}]}, 'scope': ['X-RAY CRYSTALLOGRAPHY (3.4 ANGSTROMS) OF 3-465 IN COMPLEX WITH RAT GCKR']}, {'citation': {'type': 'journal article', 'publicationDate': '1992', 'title': 'Nonsense mutation of glucokinase gene in late-onset non-insulin-dependent diabetes mellitus.', 'authors': ['Katagiri H.', 'Asano T.', 'Ishihara H.', 'Inukai K.', 'Anai M.', 'Miyazaki J.', 'Tsukuda K.', 'Kikuchi M.', 'Yazaki Y.', 'Oka Y.'], 'publication': {'journalName': 'Lancet'}, 'location': {'volume': '340', 'firstPage': '1316', 'lastPage': '1317'}, 'dbReferences': [{'type': 'PubMed', 'id': '1360036'}, {'type': 'DOI', 'id': '10.1016/0140-6736(92)92494-z'}]}, 'scope': ['INVOLVEMENT IN NIDDM', 'VARIANT NIDDM 186-ARG--GLN-465 DEL']}, {'citation': {'type': 'journal article', 'publicationDate': '1992', 'title': 'Missense glucokinase mutation in maturity-onset diabetes of the young and mutation screening in late-onset diabetes.', 'authors': ['Stoffel M.', 'Patel P.', 'Lo Y.-M.D.', 'Hattersley A.T.', 'Lucassen A.M.', 'Page R.', 'Bell J.I.', 'Bell G.I.', 'Turner R.C.', 'Wainscoat J.S.'], 'publication': {'journalName': 'Nat. Genet.'}, 'location': {'volume': '2', 'firstPage': '153', 'lastPage': '156'}, 'dbReferences': [{'type': 'PubMed', 'id': '1303265'}, {'type': 'DOI', 'id': '10.1038/ng1092-153'}]}, 'scope': ['VARIANT MODY2 ARG-299']}, {'citation': {'type': 'journal article', 'publicationDate': '1993', 'title': 'Glucokinase gene variants in the common form of NIDDM.', 'authors': ['Chiu K.C.', 'Tanizawa Y.', 'Permutt M.A.'], 'publication': {'journalName': 'Diabetes'}, 'location': {'volume': '42', 'firstPage': '579', 'lastPage': '582'}, 'dbReferences': [{'type': 'PubMed', 'id': '8454109'}, {'type': 'DOI', 'id': '10.2337/diab.42.4.579'}]}, 'scope': ['VARIANT THR-11']}, {'citation': {'type': 'journal article', 'publicationDate': '1993', 'title': 'Identification of glucokinase mutations in subjects with gestational diabetes mellitus.', 'authors': ['Stoffel M.', 'Bell K.L.', 'Blackburn C.L.', 'Powell K.L.', 'Seo T.S.', 'Takeda J.', 'Vionnet N.', 'Xiang K.-S.', 'Gidh-Jain M.', 'Pilkis S.J.', 'Ober C.', 'Bell G.I.'], 'publication': {'journalName': 'Diabetes'}, 'location': {'volume': '42', 'firstPage': '937', 'lastPage': '940'}, 'dbReferences': [{'type': 'PubMed', 'id': '8495817'}, {'type': 'DOI', 'id': '10.2337/diab.42.6.937'}]}, 'scope': ['VARIANT MODY2 PRO-131']}, {'citation': {'type': 'journal article', 'publicationDate': '1993', 'title': 'Structure/function studies of human beta-cell glucokinase. Enzymatic properties of a sequence polymorphism, mutations associated with diabetes, and other site-directed mutants.', 'authors': ['Takeda J.', 'Gidh-Jain M.', 'Xu L.Z.', 'Froguel P.', 'Velho G.', 'Vaxillaire M.', 'Cohen D.', 'Shimada F.', 'Makino H.', 'Nishi S.', 'Stoffel M.', 'Vionnet N.', 'St Charles R.', 'Harrison R.W.', 'Weber I.T.', 'Bell G.I.', 'Pilkis S.J.'], 'publication': {'journalName': 'J. Biol. Chem.'}, 'location': {'volume': '268', 'firstPage': '15200', 'lastPage': '15204'}, 'dbReferences': [{'type': 'PubMed', 'id': '8325892'}]}, 'scope': ['VARIANT ASN-4', 'VARIANTS MODY2 LYS-70; PRO-131; THR-188; ARG-257 AND GLU-414', 'MUTAGENESIS OF GLU-177; GLU-256 AND LYS-414', 'CATALYTIC ACTIVITY', 'FUNCTION']}, {'citation': {'type': 'journal article', 'publicationDate': '1993', 'title': 'Glucokinase mutations associated with non-insulin-dependent (type 2) diabetes mellitus have decreased enzymatic activity: implications for structure/function relationships.', 'authors': ['Gidh-Jain M.', 'Takeda J.', 'Xu L.Z.', 'Lange A.J.', 'Vionnet N.', 'Stoffel M.', 'Froguel P.', 'Velho G.', 'Sun D.', 'Cohen D.', 'Patel P.', 'Lo Y.-M.D.', 'Hattersley A.T.', 'Luthman H.', 'Wedell A.', 'St Charles R.', 'Harrison R.W.', 'Weber I.T.', 'Bell G.I.', 'Pilkis S.J.'], 'publication': {'journalName': 'Proc. Natl. Acad. Sci. U.S.A.'}, 'location': {'volume': '90', 'firstPage': '1932', 'lastPage': '1936'}, 'dbReferences': [{'type': 'PubMed', 'id': '8446612'}, {'type': 'DOI', 'id': '10.1073/pnas.90.5.1932'}]}, 'scope': ['CHARACTERIZATION OF VARIANTS MODY2']}, {'citation': {'type': 'journal article', 'publicationDate': '1994', 'title': 'Six mutations in the glucokinase gene identified in MODY by using a nonradioactive sensitive screening technique.', 'authors': ['Hager J.', 'Blanche H.', 'Sun F.', 'Vionnet N.', 'Vaxillaire M.', 'Poller W.', 'Cohen D.', 'Czernichow P.', 'Velho G.', 'Robert J.-J.', 'Cohen N.', 'Froguel P.'], 'publication': {'journalName': 'Diabetes'}, 'location': {'volume': '43', 'firstPage': '730', 'lastPage': '733'}, 'dbReferences': [{'type': 'PubMed', 'id': '8168652'}, {'type': 'DOI', 'id': '10.2337/diab.43.5.730'}]}, 'scope': ['VARIANTS MODY2 TRP-36; MET-209 AND GLU-261']}, {'citation': {'type': 'journal article', 'publicationDate': '1997', 'title': 'Identification of 14 new glucokinase mutations and description of the clinical profile of 42 MODY-2 families.', 'authors': ['Velho G.', 'Blanche H.', 'Vaxillaire M.', 'Bellanne-Chantelot C.', 'Pardini V.C.', 'Timsit J.', 'Passa P.', 'Deschamps I.', 'Robert J.-J.', 'Weber I.T.', 'Marotta D.', 'Pilkis S.J.', 'Lipkind G.M.', 'Bell G.I.', 'Froguel P.'], 'publication': {'journalName': 'Diabetologia'}, 'location': {'volume': '40', 'firstPage': '217', 'lastPage': '224'}, 'dbReferences': [{'type': 'PubMed', 'id': '9049484'}, {'type': 'DOI', 'id': '10.1007/s001250050666'}]}, 'scope': ['VARIANTS MODY2 SER-53; ALA-80; ARG-137; PRO-168; 186-ARG--GLN-465 DEL; THR-210; ARG-213; MET-226; 248-GLU--GLN-465 DEL; ARG-261; LEU-336; 360-SER--GLN-465 DEL AND MET-367']}, {'citation': {'type': 'journal article', 'publicationDate': '1998', 'title': 'Three novel missense mutations in the glucokinase gene (G80S; E221K; G227C) in Italian subjects with maturity-onset diabetes of the young (MODY).', 'authors': ['Guazzini B.', 'Gaffi D.', 'Mainieri D.', 'Multari G.', 'Cordera R.', 'Bertolini S.', 'Pozza G.', 'Meschi F.', 'Barbetti F.'], 'publication': {'journalName': 'Hum. Mutat.'}, 'location': {'volume': '12', 'firstPage': '136', 'lastPage': '136'}, 'dbReferences': [{'type': 'PubMed', 'id': '10694920'}, {'type': 'DOI', 'id': '10.1002/(SICI)1098-1004(1998)12:2<136::AID-HUMU13>3.3.CO;2-M'}]}, 'scope': ['VARIANTS MODY2 SER-80; LYS-221 AND CYS-227']}, {'citation': {'type': 'journal article', 'publicationDate': '1998', 'title': 'Mutations in the glucokinase gene of the fetus result in reduced birth weight.', 'authors': ['Hattersley A.T.', 'Beards F.', 'Ballantyne E.', 'Appleton M.', 'Harvey R.', 'Ellard S.'], 'publication': {'journalName': 'Nat. Genet.'}, 'location': {'volume': '19', 'firstPage': '268', 'lastPage': '270'}, 'dbReferences': [{'type': 'PubMed', 'id': '9662401'}, {'type': 'DOI', 'id': '10.1038/953'}]}, 'scope': ['VARIANTS MODY2 HIS-108; SER-150; THR-259; ARG-299; TYR-382; THR-384 AND CYS-392']}, {'citation': {'type': 'journal article', 'publicationDate': '1998', 'title': 'Familial hyperinsulinism caused by an activating glucokinase mutation.', 'authors': ['Glaser B.', 'Kesavan P.', 'Heyman M.', 'Davis E.', 'Cuesta A.', 'Buchs A.', 'Stanley C.A.', 'Thornton P.S.', 'Permutt M.A.', 'Matschinsky F.M.', 'Herold K.C.'], 'publication': {'journalName': 'N. Engl. J. Med.'}, 'location': {'volume': '338', 'firstPage': '226', 'lastPage': '230'}, 'dbReferences': [{'type': 'PubMed', 'id': '9435328'}, {'type': 'DOI', 'id': '10.1056/nejm199801223380404'}]}, 'scope': ['VARIANT HHF3 MET-455']}, {'citation': {'type': 'journal article', 'publicationDate': '1999', 'title': 'Molecular genetics of diabetes mellitus in Chinese subjects: identification of mutations in glucokinase and hepatocyte nuclear factor-1alpha genes in patients with early-onset type 2 diabetes mellitus/MODY.', 'authors': ['Ng M.C.Y.', 'Cockburn B.N.', 'Lindner T.H.', 'Yeung V.T.F.', 'Chow C.-C.', 'So W.-Y.', 'Li J.K.Y.', 'Lo Y.M.D.', 'Lee Z.S.K.', 'Cockram C.S.', 'Critchley J.A.J.H.', 'Bell G.I.', 'Chan J.C.N.'], 'publication': {'journalName': 'Diabet. Med.'}, 'location': {'volume': '16', 'firstPage': '956', 'lastPage': '963'}, 'dbReferences': [{'type': 'PubMed', 'id': '10588527'}, {'type': 'DOI', 'id': '10.1046/j.1464-5491.1999.00188.x'}]}, 'scope': ['VARIANTS MODY2 THR-110; ASP-119 AND VAL-385']}, {'citation': {'type': 'journal article', 'publicationDate': '2000', 'title': 'Identification of glucokinase mutation in subjects with post-renal transplantation diabetes mellitus.', 'authors': ['Nam J.H.', 'Lee H.C.', 'Kim Y.H.', 'Cha B.S.', 'Song Y.D.', 'Lim S.K.', 'Kim K.R.', 'Huh K.B.'], 'publication': {'journalName': 'Diabetes Res. Clin. Pract.'}, 'location': {'volume': '50', 'firstPage': '169', 'lastPage': '176'}, 'dbReferences': [{'type': 'PubMed', 'id': '11106831'}, {'type': 'DOI', 'id': '10.1016/s0168-8227(00)00191-1'}]}, 'scope': ['VARIANT MODY2 PRO-164']}, {'citation': {'type': 'journal article', 'publicationDate': '2001', 'title': 'Neonatal diabetes mellitus due to complete glucokinase deficiency.', 'authors': ['Njoelstad P.R.', 'Soevik O.', 'Cuesta-Munoz A.', 'Bjoerkhaug L.', 'Massa O.', 'Barbetti F.', 'Undlien D.E.', 'Shiota C.', 'Magnuson M.A.', 'Molven A.', 'Matschinsky F.M.', 'Bell G.I.'], 'publication': {'journalName': 'N. Engl. J. Med.'}, 'location': {'volume': '344', 'firstPage': '1588', 'lastPage': '1592'}, 'dbReferences': [{'type': 'PubMed', 'id': '11372010'}, {'type': 'DOI', 'id': '10.1056/nejm200105243442104'}]}, 'scope': ['INVOLVEMENT IN PNDM', 'INVOLVEMENT IN MODY2', 'VARIANTS MODY2 LYS-210 AND MET-228', 'VARIANTS PNDM LYS-210 AND MET-228']}, {'citation': {'type': 'journal article', 'publicationDate': '2002', 'title': 'The second activating glucokinase mutation (A456V): implications for glucose homeostasis and diabetes therapy.', 'authors': ['Christesen H.B.', 'Jacobsen B.B.', 'Odili S.', 'Buettger C.', 'Cuesta-Munoz A.', 'Hansen T.', 'Brusgaard K.', 'Massa O.', 'Magnuson M.A.', 'Shiota C.', 'Matschinsky F.M.', 'Barbetti F.'], 'publication': {'journalName': 'Diabetes'}, 'location': {'volume': '51', 'firstPage': '1240', 'lastPage': '1246'}, 'dbReferences': [{'type': 'PubMed', 'id': '11916951'}, {'type': 'DOI', 'id': '10.2337/diabetes.51.4.1240'}]}, 'scope': ['VARIANT HHF3 VAL-456', 'CHARACTERIZATION OF VARIANT HHF3 VAL-456', 'FUNCTION', 'CATALYTIC ACTIVITY']}, {'citation': {'type': 'journal article', 'publicationDate': '2003', 'title': 'Insights into the biochemical and genetic basis of glucokinase activation from naturally occurring hypoglycemia mutations.', 'authors': ['Gloyn A.L.', 'Noordam K.', 'Willemsen M.A.', 'Ellard S.', 'Lam W.W.', 'Campbell I.W.', 'Midgley P.', 'Shiota C.', 'Buettger C.', 'Magnuson M.A.', 'Matschinsky F.M.', 'Hattersley A.T.'], 'publication': {'journalName': 'Diabetes'}, 'location': {'volume': '52', 'firstPage': '2433', 'lastPage': '2440'}, 'dbReferences': [{'type': 'PubMed', 'id': '12941786'}, {'type': 'DOI', 'id': '10.2337/diabetes.52.9.2433'}]}, 'scope': ['VARIANT HHF3 ILE-65', 'CHARACTERIZATION OF VARIANT HHF3 ILE-65']}, {'citation': {'type': 'journal article', 'publicationDate': '2004', 'title': 'Severe persistent hyperinsulinemic hypoglycemia due to a de novo glucokinase mutation.', 'authors': ['Cuesta-Munoz A.L.', 'Huopio H.', 'Otonkoski T.', 'Gomez-Zumaquero J.M.', 'Naentoe-Salonen K.', 'Rahier J.', 'Lopez-Enriquez S.', 'Garcia-Gimeno M.A.', 'Sanz P.', 'Soriguer F.C.', 'Laakso M.'], 'publication': {'journalName': 'Diabetes'}, 'location': {'volume': '53', 'firstPage': '2164', 'lastPage': '2168'}, 'dbReferences': [{'type': 'PubMed', 'id': '15277402'}, {'type': 'DOI', 'id': '10.2337/diabetes.53.8.2164'}]}, 'scope': ['VARIANT HHF3 CYS-214', 'CHARACTERIZATION OF VARIANT HHF3 CYS-214', 'FUNCTION', 'CATALYTIC ACTIVITY']}, {'citation': {'type': 'journal article', 'publicationDate': '2006', 'title': 'Identification of novel and recurrent glucokinase mutations in Belgian and Luxembourg maturity onset diabetes of the young patients.', 'authors': ['Vits L.', 'Beckers D.', 'Craen M.', 'de Beaufort C.', 'Vanfleteren E.', 'Dahan K.', 'Nollet A.', 'Vanhaverbeke G.', 'Imschoot S.V.', 'Bourguignon J.P.', 'Beauloye V.', 'Storm K.', 'Massa G.', 'Giri M.', 'Nobels F.', 'De Schepper J.', 'Rooman R.', 'Van den Bruel A.', 'Mathieu C.', 'Wuyts W.'], 'publication': {'journalName': 'Clin. Genet.'}, 'location': {'volume': '70', 'firstPage': '355', 'lastPage': '359'}, 'dbReferences': [{'type': 'PubMed', 'id': '16965331'}, {'type': 'DOI', 'id': '10.1111/j.1399-0004.2006.00686.x'}]}, 'scope': ['VARIANTS MODY2 TRP-36; TYR-129; LEU-152; VAL-188; TRP-191; ARG-202; SER-223; MET-226; HIS-231; PHE-315; THR-378; PHE-434; TRP-441 AND GLN-447']}, {'citation': {'type': 'journal article', 'publicationDate': '2006', 'title': 'Biochemical basis of glucokinase activation and the regulation by glucokinase regulatory protein in naturally occurring mutations.', 'authors': ['Heredia V.V.', 'Carlson T.J.', 'Garcia E.', 'Sun S.'], 'publication': {'journalName': 'J. Biol. Chem.'}, 'location': {'volume': '281', 'firstPage': '40201', 'lastPage': '40207'}, 'dbReferences': [{'type': 'PubMed', 'id': '17082186'}, {'type': 'DOI', 'id': '10.1074/jbc.m607987200'}]}, 'scope': ['CHARACTERIZATION OF VARIANTS HHF3 ILE-65; CYS-214; MET-455 AND VAL-456', 'MUTAGENESIS OF TYR-214 AND TYR-215', 'FUNCTION', 'CATALYTIC ACTIVITY']}, {'citation': {'type': 'journal article', 'publicationDate': '2007', 'title': 'Mutations in GCK and HNF-1alpha explain the majority of cases with clinical diagnosis of MODY in Spain.', 'authors': ['Estalella I.', 'Rica I.', 'Perez de Nanclares G.', 'Bilbao J.R.', 'Vazquez J.A.', 'San Pedro J.I.', 'Busturia M.A.', 'Castano L.'], 'consortiums': ['Spanish MODY Group'], 'publication': {'journalName': 'Clin. Endocrinol. (Oxf.)'}, 'location': {'volume': '67', 'firstPage': '538', 'lastPage': '546'}, 'dbReferences': [{'type': 'PubMed', 'id': '17573900'}, {'type': 'DOI', 'id': '10.1111/j.1365-2265.2007.02921.x'}]}, 'scope': ['VARIANTS MODY2 GLU-16; ASN-19; PRO-20; TRP-36; SER-43; SER-44; 61-TYR--GLN-465 DEL; SER-61; LYS-70; ARG-72; PRO-77; GLU-78; ASP-80; ILE-82; HIS-108; PRO-116; LEU-182; 186-ARG--GLN-465 DEL; TYR-187; TRP-191; LEU-200; THR-202; MET-206; MET-209; SER-223; ARG-224; SER-227; MET-228; ARG-233; 234-TYR--GLN-465 DEL; GLY-252; ALA-255; LYS-256; ARG-261; LYS-265; LYS-298; TRP-308; HIS-377; VAL-379; LEU-383; 399-GLU--GLN-465 DEL; PHE-411; PRO-416; GLU-420 AND TRP-441']}, {'citation': {'type': 'journal article', 'publicationDate': '2008', 'title': 'Biochemical characterization of novel glucokinase mutations isolated from Spanish maturity-onset diabetes of the young (MODY2) patients.', 'authors': ['Estalella I.', 'Garcia-Gimeno M.A.', 'Marina A.', 'Castano L.', 'Sanz P.'], 'publication': {'journalName': 'J. Hum. Genet.'}, 'location': {'volume': '53', 'firstPage': '460', 'lastPage': '466'}, 'dbReferences': [{'type': 'PubMed', 'id': '18322640'}, {'type': 'DOI', 'id': '10.1007/s10038-008-0271-5'}]}, 'scope': ['CHARACTERIZATION OF VARIANTS MODY2 SER-61; LEU-182; ARG-233; LYS-265; VAL-379 AND GLU-420', 'FUNCTION', 'CATALYTIC ACTIVITY']}, {'citation': {'type': 'journal article', 'publicationDate': '2009', 'title': 'Opposite clinical phenotypes of glucokinase disease: Description of a novel activating mutation and contiguous inactivating mutations in human glucokinase (GCK) gene.', 'authors': ['Barbetti F.', 'Cobo-Vuilleumier N.', 'Dionisi-Vici C.', 'Toni S.', 'Ciampalini P.', 'Massa O.', 'Rodriguez-Bada P.', 'Colombo C.', 'Lenzi L.', 'Garcia-Gimeno M.A.', 'Bermudez-Silva F.J.', 'Rodriguez de Fonseca F.', 'Banin P.', 'Aledo J.C.', 'Baixeras E.', 'Sanz P.', 'Cuesta-Munoz A.L.'], 'publication': {'journalName': 'Mol. Endocrinol.'}, 'location': {'volume': '23', 'firstPage': '1983', 'lastPage': '1989'}, 'dbReferences': [{'type': 'PubMed', 'id': '19884385'}, {'type': 'DOI', 'id': '10.1210/me.2009-0094'}]}, 'scope': ['VARIANT MODY2 TRP-441', 'CHARACTERIZATION OF VARIANT MODY2 TRP-441', 'VARIANT HHF3 LYS-442', 'CHARACTERIZATION OF VARIANT HHF3 LYS-442']}, {'citation': {'type': 'journal article', 'publicationDate': '2010', 'title': 'Large islets, beta-cell proliferation, and a glucokinase mutation.', 'authors': ['Kassem S.', 'Bhandari S.', 'Rodriguez-Bada P.', 'Motaghedi R.', 'Heyman M.', 'Garcia-Gimeno M.A.', 'Cobo-Vuilleumier N.', 'Sanz P.', 'Maclaren N.K.', 'Rahier J.', 'Glaser B.', 'Cuesta-Munoz A.L.'], 'publication': {'journalName': 'N. Engl. J. Med.'}, 'location': {'volume': '362', 'firstPage': '1348', 'lastPage': '1350'}, 'dbReferences': [{'type': 'PubMed', 'id': '20375417'}, {'type': 'DOI', 'id': '10.1056/nejmc0909845'}]}, 'scope': ['VARIANT HHF3 LEU-91', 'CHARACTERIZATION OF VARIANT HHF3 LEU-91']}, {'citation': {'type': 'journal article', 'publicationDate': '2010', 'authors': ['Kassem S.', 'Bhandari S.', 'Rodriguez-Bada P.', 'Motaghedi R.', 'Heyman M.', 'Garcia-Gimeno M.A.', 'Cobo-Vuilleumier N.', 'Sanz P.', 'Maclaren N.K.', 'Rahier J.', 'Glaser B.', 'Cuesta-Munoz A.L.'], 'publication': {'journalName': 'N. Engl. J. Med.'}, 'location': {'volume': '363', 'firstPage': '2178', 'lastPage': '2178'}}, 'scope': ['ERRATUM']}, {'citation': {'type': 'journal article', 'publicationDate': '2011', 'title': 'The previously reported T342P GCK missense variant is not a pathogenic mutation causing MODY.', 'authors': ['Steele A.M.', 'Tribble N.D.', 'Caswell R.', 'Wensley K.J.', 'Hattersley A.T.', 'Gloyn A.L.', 'Ellard S.'], 'publication': {'journalName': 'Diabetologia'}, 'location': {'volume': '54', 'firstPage': '2202', 'lastPage': '2205'}, 'dbReferences': [{'type': 'PubMed', 'id': '21604084'}, {'type': 'DOI', 'id': '10.1007/s00125-011-2194-5'}]}, 'scope': ['VARIANT PRO-342']}, {'citation': {'type': 'journal article', 'publicationDate': '2012', 'title': 'Insights into the pathogenicity of rare missense GCK variants from the identification and functional characterization of compound heterozygous and double mutations inherited in cis.', 'authors': ['Beer N.L.', 'Osbak K.K.', 'van de Bunt M.', 'Tribble N.D.', 'Steele A.M.', 'Wensley K.J.', 'Edghill E.L.', 'Colcough K.', 'Barrett A.', 'Valentinova L.', 'Rundle J.K.', 'Raimondo A.', 'Grimsby J.', 'Ellard S.', 'Gloyn A.L.'], 'publication': {'journalName': 'Diabetes Care'}, 'location': {'volume': '35', 'firstPage': '1482', 'lastPage': '1484'}, 'dbReferences': [{'type': 'PubMed', 'id': '22611063'}, {'type': 'DOI', 'id': '10.2337/dc11-2420'}]}, 'scope': ['VARIANTS MODY2 HIS-43; ASP-68; ASN-217; MET-225; LYS-248; ARG-261 AND ARG-261', 'CHARACTERIZATION OF VARIANTS MODY2 HIS-43; ASP-68; ASN-217; MET-225; LYS-248; ARG-261 AND ARG-261']}, {'citation': {'type': 'journal article', 'publicationDate': '2014', 'title': 'Phenotypic severity of homozygous GCK mutations causing neonatal or childhood-onset diabetes is primarily mediated through effects on protein stability.', 'authors': ['Raimondo A.', 'Chakera A.J.', 'Thomsen S.K.', 'Colclough K.', 'Barrett A.', 'De Franco E.', 'Chatelas A.', 'Demirbilek H.', 'Akcay T.', 'Alawneh H.', 'Flanagan S.E.', 'Van De Bunt M.', 'Hattersley A.T.', 'Gloyn A.L.', 'Ellard S.'], 'consortiums': ['International NDM Consortium'], 'publication': {'journalName': 'Hum. Mol. Genet.'}, 'location': {'volume': '23', 'firstPage': '6432', 'lastPage': '6440'}, 'dbReferences': [{'type': 'PubMed', 'id': '25015100'}, {'type': 'DOI', 'id': '10.1093/hmg/ddu360'}]}, 'scope': ['VARIANTS PNDM LYS-40; CYS-43; ASP-50; ARG-72; THR-151; PRO-164; ALA-168; ARG-169; ARG-261; THR-393; LEU-397; LEU-441 AND THR-449', 'CHARACTERIZATION OF VARIANTS PNDM LYS-40; CYS-43; ASP-50; ARG-72; ALA-168; ARG-261; THR-393; LEU-397; LEU-441 AND THR-449', 'VARIANTS MODY2 ASN-160 AND MET-226', 'CHARACTERIZATION OF VARIANT MODY2 ASN-160 AND MET-226', 'FUNCTION', 'CATALYTIC ACTIVITY']}, {'citation': {'type': 'journal article', 'publicationDate': '2017', 'title': 'Heterogeneity in phenotype of hyperinsulinism caused by activating glucokinase mutations: a novel mutation and its functional characterization.', 'authors': ['Martinez R.', 'Gutierrez-Nogues A.', 'Fernandez-Ramos C.', 'Velayos T.', 'Vela A.', 'Navas M.A.', 'Castano L.'], 'consortiums': ['Spanish Congenital Hyperinsulinism Group'], 'publication': {'journalName': 'Clin. Endocrinol. (Oxf.)'}, 'location': {'volume': '86', 'firstPage': '778', 'lastPage': '783'}, 'dbReferences': [{'type': 'PubMed', 'id': '28247534'}, {'type': 'DOI', 'id': '10.1111/cen.13318'}]}, 'scope': ['VARIANTS HHF3 ILE-65; LEU-91; CYS-99 AND LYS-442', 'CHARACTERIZATION OF VARIANT HHF3 CYS-99']}], 'sequence': {'version': 1, 'length': 465, 'mass': 52191, 'modified': '1994-06-01', 'sequence': 'MLDDRARMEAAKKEKVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ'}}


.. code:: ipython3

    json['organism']




.. parsed-literal::

    {'taxonomy': 9606,
     'names': [{'type': 'scientific', 'value': 'Homo sapiens'},
      {'type': 'common', 'value': 'Human'}],
     'lineage': ['Eukaryota',
      'Metazoa',
      'Chordata',
      'Craniata',
      'Vertebrata',
      'Euteleostomi',
      'Mammalia',
      'Eutheria',
      'Euarchontoglires',
      'Primates',
      'Haplorrhini',
      'Catarrhini',
      'Hominidae',
      'Homo']}



.. code:: ipython3

    import pandas as pd
    df = pd.DataFrame(json['dbReferences'])

.. code:: ipython3

    df




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
          <th>type</th>
          <th>id</th>
          <th>properties</th>
          <th>isoform</th>
          <th>evidences</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>0</th>
          <td>EMBL</td>
          <td>M88011</td>
          <td>{'molecule type': 'mRNA', 'protein sequence ID...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>1</th>
          <td>EMBL</td>
          <td>M69051</td>
          <td>{'molecule type': 'mRNA', 'protein sequence ID...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>2</th>
          <td>EMBL</td>
          <td>M90298</td>
          <td>{'molecule type': 'Genomic_DNA', 'protein sequ...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>3</th>
          <td>EMBL</td>
          <td>M90298</td>
          <td>{'molecule type': 'Genomic_DNA', 'protein sequ...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>4</th>
          <td>EMBL</td>
          <td>M90299</td>
          <td>{'molecule type': 'mRNA', 'protein sequence ID...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>...</th>
          <td>...</td>
          <td>...</td>
          <td>...</td>
          <td>...</td>
          <td>...</td>
        </tr>
        <tr>
          <th>236</th>
          <td>PANTHER</td>
          <td>PTHR19443:SF3</td>
          <td>{'match status': '1', 'entry name': 'PTHR19443...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>237</th>
          <td>Pfam</td>
          <td>PF00349</td>
          <td>{'match status': '1', 'entry name': 'Hexokinas...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>238</th>
          <td>Pfam</td>
          <td>PF03727</td>
          <td>{'match status': '1', 'entry name': 'Hexokinas...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>239</th>
          <td>PROSITE</td>
          <td>PS00378</td>
          <td>{'match status': '1', 'entry name': 'HEXOKINAS...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>240</th>
          <td>PROSITE</td>
          <td>PS51748</td>
          <td>{'match status': '1', 'entry name': 'HEXOKINAS...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
      </tbody>
    </table>
    <p>241 rows × 5 columns</p>
    </div>



.. code:: ipython3

    df.type.unique()




.. parsed-literal::

    array(['EMBL', 'CCDS', 'PIR', 'RefSeq', 'PDB', 'PDBsum', 'SMR', 'BioGrid',
           'IntAct', 'STRING', 'BindingDB', 'ChEMBL', 'DrugBank',
           'GuidetoPHARMACOLOGY', 'iPTMnet', 'PhosphoSitePlus', 'BioMuta',
           'DMDM', 'jPOST', 'MassIVE', 'PaxDb', 'PeptideAtlas', 'PRIDE',
           'ProteomicsDB', 'DNASU', 'Ensembl', 'GeneID', 'KEGG', 'UCSC',
           'CTD', 'DisGeNET', 'EuPathDB', 'GeneCards', 'GeneReviews', 'HGNC',
           'HPA', 'MalaCards', 'MIM', 'neXtProt', 'OpenTargets', 'Orphanet',
           'PharmGKB', 'eggNOG', 'GeneTree', 'HOGENOM', 'InParanoid', 'KO',
           'OMA', 'OrthoDB', 'PhylomeDB', 'TreeFam', 'BioCyc', 'BRENDA',
           'Reactome', 'SABIO-RK', 'SIGNOR', 'UniPathway', 'ChiTaRS',
           'EvolutionaryTrace', 'GeneWiki', 'GenomeRNAi', 'Pharos', 'PRO',
           'Proteomes', 'RNAct', 'Bgee', 'ExpressionAtlas', 'Genevisible',
           'GO', 'InterPro', 'PANTHER', 'Pfam', 'PROSITE'], dtype=object)



Looking up ontologies with the OLS (ontology lookup service)
------------------------------------------------------------

The Ontology Lookup Service (OLS) is a repository for biomedical
ontologies that aims to provide a single point of access to the latest
ontology versions. You can browse the ontologies through the website as
well as programmatically via the OLS API. OLS is developed and
maintained by the Samples, Phenotypes and Ontologies Team (SPOT) at
EMBL-EBI.

https://www.ebi.ac.uk/ols/index

https://www.ebi.ac.uk/ols/docs/api

.. code:: ipython3

    df[df.type=="GO"]




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
          <th>type</th>
          <th>id</th>
          <th>properties</th>
          <th>isoform</th>
          <th>evidences</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>205</th>
          <td>GO</td>
          <td>GO:0005623</td>
          <td>{'term': 'C:cell', 'source': 'IEA:GOC'}</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>206</th>
          <td>GO</td>
          <td>GO:0005829</td>
          <td>{'term': 'C:cytosol', 'source': 'IDA:HPA'}</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>207</th>
          <td>GO</td>
          <td>GO:0005739</td>
          <td>{'term': 'C:mitochondrion', 'source': 'IEA:Uni...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>208</th>
          <td>GO</td>
          <td>GO:0005654</td>
          <td>{'term': 'C:nucleoplasm', 'source': 'TAS:React...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>209</th>
          <td>GO</td>
          <td>GO:0005524</td>
          <td>{'term': 'F:ATP binding', 'source': 'IDA:UniPr...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>210</th>
          <td>GO</td>
          <td>GO:0008865</td>
          <td>{'term': 'F:fructokinase activity', 'source': ...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>211</th>
          <td>GO</td>
          <td>GO:0004340</td>
          <td>{'term': 'F:glucokinase activity', 'source': '...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>212</th>
          <td>GO</td>
          <td>GO:0005536</td>
          <td>{'term': 'F:glucose binding', 'source': 'IDA:U...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>213</th>
          <td>GO</td>
          <td>GO:0019158</td>
          <td>{'term': 'F:mannokinase activity', 'source': '...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>214</th>
          <td>GO</td>
          <td>GO:0070509</td>
          <td>{'term': 'P:calcium ion import', 'source': 'IE...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>215</th>
          <td>GO</td>
          <td>GO:0061621</td>
          <td>{'term': 'P:canonical glycolysis', 'source': '...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>216</th>
          <td>GO</td>
          <td>GO:0001678</td>
          <td>{'term': 'P:cellular glucose homeostasis', 'so...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>217</th>
          <td>GO</td>
          <td>GO:0032869</td>
          <td>{'term': 'P:cellular response to insulin stimu...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>218</th>
          <td>GO</td>
          <td>GO:0044320</td>
          <td>{'term': 'P:cellular response to leptin stimul...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>219</th>
          <td>GO</td>
          <td>GO:0051594</td>
          <td>{'term': 'P:detection of glucose', 'source': '...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>220</th>
          <td>GO</td>
          <td>GO:0051156</td>
          <td>{'term': 'P:glucose 6-phosphate metabolic proc...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>221</th>
          <td>GO</td>
          <td>GO:0042593</td>
          <td>{'term': 'P:glucose homeostasis', 'source': 'I...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>222</th>
          <td>GO</td>
          <td>GO:0006096</td>
          <td>{'term': 'P:glycolytic process', 'source': 'IB...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>223</th>
          <td>GO</td>
          <td>GO:0006739</td>
          <td>{'term': 'P:NADP metabolic process', 'source':...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>224</th>
          <td>GO</td>
          <td>GO:0045721</td>
          <td>{'term': 'P:negative regulation of gluconeogen...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>225</th>
          <td>GO</td>
          <td>GO:0045725</td>
          <td>{'term': 'P:positive regulation of glycogen bi...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>226</th>
          <td>GO</td>
          <td>GO:0032024</td>
          <td>{'term': 'P:positive regulation of insulin sec...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>227</th>
          <td>GO</td>
          <td>GO:0006110</td>
          <td>{'term': 'P:regulation of glycolytic process',...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>228</th>
          <td>GO</td>
          <td>GO:0050796</td>
          <td>{'term': 'P:regulation of insulin secretion', ...</td>
          <td>NaN</td>
          <td>[{'code': 'ECO:0000269', 'source': {'name': 'P...</td>
        </tr>
        <tr>
          <th>229</th>
          <td>GO</td>
          <td>GO:0043266</td>
          <td>{'term': 'P:regulation of potassium ion transp...</td>
          <td>NaN</td>
          <td>NaN</td>
        </tr>
      </tbody>
    </table>
    </div>



.. code:: ipython3

    ols_results = {}
    for goid in df[df.type=='GO'].id:
        print(goid)
        query_id = goid.replace(':', '_')
        r = requests.get('http://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252F{}'.format(query_id))
        print(r.url)
        print(r.status_code)
        ols_results[goid] = r.json()


.. parsed-literal::

    GO:0005623
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0005623
    200
    GO:0005829
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0005829
    200
    GO:0005739
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0005739
    200
    GO:0005654
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0005654
    200
    GO:0005524
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0005524
    200
    GO:0008865
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0008865
    200
    GO:0004340
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0004340
    200
    GO:0005536
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0005536
    200
    GO:0019158
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0019158
    200
    GO:0070509
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0070509
    200
    GO:0061621
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0061621
    200
    GO:0001678
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0001678
    200
    GO:0032869
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0032869
    200
    GO:0044320
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0044320
    200
    GO:0051594
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0051594
    200
    GO:0051156
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0051156
    200
    GO:0042593
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0042593
    200
    GO:0006096
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0006096
    200
    GO:0006739
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0006739
    200
    GO:0045721
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0045721
    200
    GO:0045725
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0045725
    200
    GO:0032024
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0032024
    200
    GO:0006110
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0006110
    200
    GO:0050796
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0050796
    200
    GO:0043266
    https://www.ebi.ac.uk/ols/api/ontologies/go/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252FGO_0043266
    200


.. code:: ipython3

    ols_results
    for key, value in ols_results.items():
        print(key, value['label'])
        print(value['description'][0])
        print()


.. parsed-literal::

    GO:0005623 cell
    The basic structural and functional unit of all organisms. Includes the plasma membrane and any external encapsulating structures such as the cell wall and cell envelope.
    
    GO:0005829 cytosol
    The part of the cytoplasm that does not contain organelles but which does contain other particulate matter, such as protein complexes.
    
    GO:0005739 mitochondrion
    A semiautonomous, self replicating organelle that occurs in varying numbers, shapes, and sizes in the cytoplasm of virtually all eukaryotic cells. It is notably the site of tissue respiration.
    
    GO:0005654 nucleoplasm
    That part of the nuclear content other than the chromosomes or the nucleolus.
    
    GO:0005524 ATP binding
    Interacting selectively and non-covalently with ATP, adenosine 5'-triphosphate, a universally important coenzyme and enzyme regulator.
    
    GO:0008865 fructokinase activity
    Catalysis of the reaction: ATP + D-fructose = ADP + D-fructose 6-phosphate.
    
    GO:0004340 glucokinase activity
    Catalysis of the reaction: ATP + D-glucose = ADP + D-glucose-6-phosphate.
    
    GO:0005536 glucose binding
    Interacting selectively and non-covalently with the D- or L-enantiomer of glucose.
    
    GO:0019158 mannokinase activity
    Catalysis of the reaction: ATP + D-mannose = ADP + D-mannose 6-phosphate.
    
    GO:0070509 calcium ion import
    The directed movement of calcium ions into a cell or organelle.
    
    GO:0061621 canonical glycolysis
    The glycolytic process that begins with the conversion of glucose to glucose-6-phosphate by glucokinase activity. Glycolytic processes are the  chemical reactions and pathways resulting in the breakdown of a carbohydrate into pyruvate, with the concomitant production of a small amount of ATP.
    
    GO:0001678 cellular glucose homeostasis
    A cellular homeostatic process involved in the maintenance of an internal steady state of glucose within a cell or between a cell and its external environment.
    
    GO:0032869 cellular response to insulin stimulus
    Any process that results in a change in state or activity of a cell (in terms of movement, secretion, enzyme production, gene expression, etc.) as a result of an insulin stimulus. Insulin is a polypeptide hormone produced by the islets of Langerhans of the pancreas in mammals, and by the homologous organs of other organisms.
    
    GO:0044320 cellular response to leptin stimulus
    Any process that results in a change in state or activity of a cell (in terms of movement, secretion, enzyme production, gene expression, etc.) as a result of a leptin stimulus. Leptin is a hormone manufactured primarily in the adipocytes of white adipose tissue, and the level of circulating leptin is directly proportional to the total amount of fat in the body. It plays a key role in regulating energy intake and energy expenditure, including appetite and metabolism.
    
    GO:0051594 detection of glucose
    The series of events in which a glucose stimulus is received by a cell and converted into a molecular signal.
    
    GO:0051156 glucose 6-phosphate metabolic process
    The chemical reactions and pathways involving glucose 6-phosphate, a monophosphorylated derivative of glucose with the phosphate group attached to C-6.
    
    GO:0042593 glucose homeostasis
    Any process involved in the maintenance of an internal steady state of glucose within an organism or cell.
    
    GO:0006096 glycolytic process
    The chemical reactions and pathways resulting in the breakdown of a carbohydrate into pyruvate, with the concomitant production of a small amount of ATP and the reduction of NAD(P) to NAD(P)H. Glycolysis begins with the metabolism of a carbohydrate to generate products that can enter the pathway and ends with the production of pyruvate. Pyruvate may be converted to acetyl-coenzyme A, ethanol, lactate, or other small molecules.
    
    GO:0006739 NADP metabolic process
    The chemical reactions and pathways involving nicotinamide-adenine dinucleotide phosphate, a coenzyme involved in many redox and biosynthetic reactions; metabolism may be of either the oxidized form, NADP, or the reduced form, NADPH.
    
    GO:0045721 negative regulation of gluconeogenesis
    Any process that stops, prevents, or reduces the frequency, rate or extent of gluconeogenesis.
    
    GO:0045725 positive regulation of glycogen biosynthetic process
    Any process that activates or increases the frequency, rate or extent of the chemical reactions and pathways resulting in the formation of glycogen.
    
    GO:0032024 positive regulation of insulin secretion
    Any process that activates or increases the frequency, rate or extent of the regulated release of insulin.
    
    GO:0006110 regulation of glycolytic process
    Any process that modulates the frequency, rate or extent of glycolysis.
    
    GO:0050796 regulation of insulin secretion
    Any process that modulates the frequency, rate or extent of the regulated release of insulin.
    
    GO:0043266 regulation of potassium ion transport
    Any process that modulates the frequency, rate or extent of the directed movement of potassium ions (K+) into, out of or within a cell, or between cells, by means of some agent such as a transporter or pore.
    


Ensembl information
-------------------

https://rest.ensembl.org/

For instance retrieving the homolog proteins in mouse
https://rest.ensembl.org/documentation/info/homology\_ensemblgene

.. code:: ipython3

    df[df.type=="Ensembl"]




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
          <th>type</th>
          <th>id</th>
          <th>properties</th>
          <th>isoform</th>
          <th>evidences</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>143</th>
          <td>Ensembl</td>
          <td>ENST00000345378</td>
          <td>{'gene ID': 'ENSG00000106633', 'protein sequen...</td>
          <td>P35557-2</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>144</th>
          <td>Ensembl</td>
          <td>ENST00000395796</td>
          <td>{'gene ID': 'ENSG00000106633', 'protein sequen...</td>
          <td>P35557-3</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>145</th>
          <td>Ensembl</td>
          <td>ENST00000403799</td>
          <td>{'gene ID': 'ENSG00000106633', 'protein sequen...</td>
          <td>P35557-1</td>
          <td>NaN</td>
        </tr>
        <tr>
          <th>146</th>
          <td>Ensembl</td>
          <td>ENST00000616242</td>
          <td>{'gene ID': 'ENSG00000106633', 'protein sequen...</td>
          <td>P35557-3</td>
          <td>NaN</td>
        </tr>
      </tbody>
    </table>
    </div>



.. code:: ipython3

    for p in df[df.type=="Ensembl"].properties:
        print(p)


.. parsed-literal::

    {'gene ID': 'ENSG00000106633', 'protein sequence ID': 'ENSP00000223366'}
    {'gene ID': 'ENSG00000106633', 'protein sequence ID': 'ENSP00000379142'}
    {'gene ID': 'ENSG00000106633', 'protein sequence ID': 'ENSP00000384247'}
    {'gene ID': 'ENSG00000106633', 'protein sequence ID': 'ENSP00000482149'}


.. code:: ipython3

    from pprint import pprint
    r = requests.get('https://rest.ensembl.org/homology/id/ENSG00000106633?content-type=application/json')
    entries = r.json()
    data = entries['data'][0]
    for homology in data['homologies']:
        pprint(homology)


.. parsed-literal::

    {'dn_ds': 0.26749,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 96.5665,
                'perc_pos': 96.9957,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'LEDSRARTSPSQW---QEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13M3D450M',
                'id': 'ENSPPAG00000030131',
                'perc_id': 97.1922,
                'perc_pos': 97.6242,
                'protein_id': 'ENSPPAP00000014005',
                'species': 'pan_paniscus',
                'taxon_id': 9597},
     'taxonomy_level': 'Homininae',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.05357,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 99.7854,
                'perc_pos': 100,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGKASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSPTRG00000019140',
                'perc_id': 99.7854,
                'perc_pos': 100,
                'protein_id': 'ENSPTRP00000043519',
                'species': 'pan_troglodytes',
                'taxon_id': 9598},
     'taxonomy_level': 'Homininae',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02535,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 99.7854,
                'perc_pos': 100,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKEQFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSGGOG00000001501',
                'perc_id': 99.7854,
                'perc_pos': 100,
                'protein_id': 'ENSGGOP00000001483',
                'species': 'gorilla_gorilla',
                'taxon_id': 9595},
     'taxonomy_level': 'Homininae',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.11468,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 97.2103,
                'perc_pos': 97.6395,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEAAKE--KVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13M2D451M',
                'id': 'ENSPPYG00000017596',
                'perc_id': 97.6293,
                'perc_pos': 98.0603,
                'protein_id': 'ENSPPYP00000019722',
                'species': 'pongo_abelii',
                'taxon_id': 9601},
     'taxonomy_level': 'Hominidae',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.31115,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA--QTALT-L--VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGS-EVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEML--FDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVE-SDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '10M2D5MDM2D54MD53M2D217MD126M',
                'id': 'ENSG00000106633',
                'perc_id': 82.4034,
                'perc_pos': 82.8326,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MA-----MDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSV-------LTLGSSG--PALGHSGEGNCGQ--VPVGGLPASTPPCQMVTMACIFQLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVER------------------------C--------SVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M5D69M7D7M2D13M2D242M24DM8D93M',
                'id': 'ENSNLEG00000028208',
                'perc_id': 89.9297,
                'perc_pos': 90.3981,
                'protein_id': 'ENSNLEP00000027462',
                'species': 'nomascus_leucogenys',
                'taxon_id': 61853},
     'taxonomy_level': 'Hominoidea',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03364,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 98.927,
                'perc_pos': 99.3562,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDAMRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDIMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCQITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSCANG00000013002',
                'perc_id': 98.927,
                'perc_pos': 99.3562,
                'protein_id': 'ENSCANP00000003917',
                'species': 'colobus_angolensis_palliatus',
                'taxon_id': 336983},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.0156,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 99.5708,
                'perc_pos': 99.5708,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDATRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSMMUG00000002427',
                'perc_id': 99.5708,
                'perc_pos': 99.5708,
                'protein_id': 'ENSMMUP00000051138',
                'species': 'macaca_mulatta',
                'taxon_id': 9544},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02248,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 99.3562,
                'perc_pos': 99.5708,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDATRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKEQFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSCSAG00000015587',
                'perc_id': 99.3562,
                'perc_pos': 99.5708,
                'protein_id': 'ENSCSAP00000011672',
                'species': 'chlorocebus_sabaeus',
                'taxon_id': 60711},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.12778,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMD--VTRSQAQTALT------------LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '4M2D11M12D451M',
                'id': 'ENSG00000106633',
                'perc_id': 96.7811,
                'perc_pos': 97.2103,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MQPGWVRGKFGASAWVQTPPWPVVLWAWGRVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '480M',
                'id': 'ENSMFAG00000043774',
                'perc_id': 93.9583,
                'perc_pos': 94.375,
                'protein_id': 'ENSMFAP00000024627',
                'species': 'macaca_fascicularis',
                'taxon_id': 9541},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.01442,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 99.5708,
                'perc_pos': 99.5708,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDATRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSMLEG00000039475',
                'perc_id': 99.5708,
                'perc_pos': 99.5708,
                'protein_id': 'ENSMLEP00000030794',
                'species': 'mandrillus_leucophaeus',
                'taxon_id': 9568},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04137,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 98.7124,
                'perc_pos': 98.927,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDAMMSQAQRALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDIMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSRROG00000035669',
                'perc_id': 98.7124,
                'perc_pos': 98.927,
                'protein_id': 'ENSRROP00000023696',
                'species': 'rhinopithecus_roxellana',
                'taxon_id': 61622},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.12013,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMD--VTRSQAQTALT------------LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '4M2D11M12D451M',
                'id': 'ENSG00000106633',
                'perc_id': 96.5665,
                'perc_pos': 96.9957,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MQPGWVRGKFGASAWVQTSPWPVVLWAWGRVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASELLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '480M',
                'id': 'ENSPANG00000021695',
                'perc_id': 93.75,
                'perc_pos': 94.1667,
                'protein_id': 'ENSPANP00000041169',
                'species': 'papio_anubis',
                'taxon_id': 9555},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.0234,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 99.3562,
                'perc_pos': 99.5708,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDATRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLLLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSMNEG00000036780',
                'perc_id': 99.3562,
                'perc_pos': 99.5708,
                'protein_id': 'ENSMNEP00000026883',
                'species': 'macaca_nemestrina',
                'taxon_id': 9545},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.124,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMD--VTRSQAQTALT------------LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '4M2D11M12D451M',
                'id': 'ENSG00000106633',
                'perc_id': 96.7811,
                'perc_pos': 97.2103,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MQPGWVRGKFGASAWVQTPPWPVVLWAWGRVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '480M',
                'id': 'ENSCATG00000038208',
                'perc_id': 93.9583,
                'perc_pos': 94.375,
                'protein_id': 'ENSCATP00000030077',
                'species': 'cercocebus_atys',
                'taxon_id': 9531},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04335,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 98.927,
                'perc_pos': 99.1416,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MVMDATRSQAQRALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDIMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSRBIG00000034645',
                'perc_id': 98.927,
                'perc_pos': 99.1416,
                'protein_id': 'ENSRBIP00000021383',
                'species': 'rhinopithecus_bieti',
                'taxon_id': 61621},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03103,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 98.927,
                'perc_pos': 99.1416,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDAMRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDIMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGH',
                'cigar_line': '466M',
                'id': 'ENSPTEG00000003496',
                'perc_id': 98.927,
                'perc_pos': 99.1416,
                'protein_id': 'ENSPTEP00000002966',
                'species': 'piliocolobus_tephrosceles',
                'taxon_id': 591936},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.0201,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 99.3562,
                'perc_pos': 99.3562,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDATRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASELLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSTGEG00000012839',
                'perc_id': 99.3562,
                'perc_pos': 99.3562,
                'protein_id': 'ENSTGEP00000015909',
                'species': 'theropithecus_gelada',
                'taxon_id': 9565},
     'taxonomy_level': 'Catarrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.06281,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MD-VTRSQA----QTALT-----LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M2D2MD6M4D5M5D451M',
                'id': 'ENSG00000106633',
                'perc_id': 97.2103,
                'perc_pos': 97.4249,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MWVPDDIPPRSPAYPLPSLAAPIPLPMQVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKASMLGQ',
                'cigar_line': '478M',
                'id': 'ENSCJAG00000008025',
                'perc_id': 94.7699,
                'perc_pos': 94.9791,
                'protein_id': 'ENSCJAP00000014864',
                'species': 'callithrix_jacchus',
                'taxon_id': 9483},
     'taxonomy_level': 'Simiiformes',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02766,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 98.4979,
                'perc_pos': 99.1416,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDVTKNQDQTVLTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKDRFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKASMLGQ',
                'cigar_line': '466M',
                'id': 'ENSSBOG00000000143',
                'perc_id': 98.4979,
                'perc_pos': 99.1416,
                'protein_id': 'ENSSBOP00000000162',
                'species': 'saimiri_boliviensis_boliviensis',
                'taxon_id': 39432},
     'taxonomy_level': 'Simiiformes',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02241,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 98.7124,
                'perc_pos': 99.1416,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDVTKNQDQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRLLTPSCEITFIESEEGSGRGAALVSAVACKKASMLGQ',
                'cigar_line': '466M',
                'id': 'ENSCCAG00000027953',
                'perc_id': 98.7124,
                'perc_pos': 99.1416,
                'protein_id': 'ENSCCAP00000020417',
                'species': 'cebus_capucinus',
                'taxon_id': 1737458},
     'taxonomy_level': 'Simiiformes',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02031,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 98.927,
                'perc_pos': 99.3562,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDVTKNQHQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKASMLGQ',
                'cigar_line': '466M',
                'id': 'ENSANAG00000028532',
                'perc_id': 98.927,
                'perc_pos': 99.3562,
                'protein_id': 'ENSANAP00000021505',
                'species': 'aotus_nancymaae',
                'taxon_id': 37293},
     'taxonomy_level': 'Simiiformes',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04134,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-MA-MDVTRSQAQTALTL-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': 'D2MD14MD450M',
                'id': 'ENSG00000106633',
                'perc_id': 95.7082,
                'perc_pos': 96.5665,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'SLGN--RVRLQLKKKKKLWVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEGGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRERRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLSQ',
                'cigar_line': '4M2D463M',
                'id': 'ENSTSYG00000007022',
                'perc_id': 95.5032,
                'perc_pos': 96.3597,
                'protein_id': 'ENSTSYP00000006413',
                'species': 'carlito_syrichta',
                'taxon_id': 1868482},
     'taxonomy_level': 'Haplorrhini',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02851,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMD--VTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '4M2D462M',
                'id': 'ENSG00000106633',
                'perc_id': 96.3519,
                'perc_pos': 97.8541,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAVDATRSKS--QTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLADENLLFHGEASEQLRTRGAFETRFVSQVESDSGDCKQIHNILSTLGLRPSAADCDIVRRVCESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '10M2D456M',
                'id': 'ENSPCOG00000021845',
                'perc_id': 96.3519,
                'perc_pos': 97.8541,
                'protein_id': 'ENSPCOP00000019771',
                'species': 'propithecus_coquereli',
                'taxon_id': 379532},
     'taxonomy_level': 'Primates',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03799,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MD--VTRSQA--QTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M2D2M2D6M2D456M',
                'id': 'ENSG00000106633',
                'perc_id': 95.0644,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MATRLACQDRRAGMDPPTRPVQVEQILAEFQLQEEDLKKVMRRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLADENLLFHGEASEQLRTRGAFETRFVSQVESDSGDCKQIHNILSTLGLRPSVADCDIVRRVCESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '472M',
                'id': 'ENSMICG00000013503',
                'perc_id': 93.8559,
                'perc_pos': 95.1271,
                'protein_id': 'ENSMICP00000043190',
                'species': 'microcebus_murinus',
                'taxon_id': 30608},
     'taxonomy_level': 'Primates',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.01515,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 97.4249,
                'perc_pos': 98.927,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAVDTTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFQGEASEQLRTRGAFETRFVSQVESDSGDYKQIHNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEEVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIQSEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSOGAG00000013533',
                'perc_id': 97.4249,
                'perc_pos': 98.927,
                'protein_id': 'ENSOGAP00000019975',
                'species': 'otolemur_garnettii',
                'taxon_id': 30611},
     'taxonomy_level': 'Primates',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04091,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMD--VTRSQA--------------QTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '4M2D6M14D456M',
                'id': 'ENSG00000106633',
                'perc_id': 94.6352,
                'perc_pos': 96.1373,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MILSCCSRKKGCFCSCSRSAPVPHIPRRAQLEVEQILAEFQLQEEDLKKVMRRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLADENLLFHGEASEQLRTRGAFETRFVSQVESDSGDCKQIHNILSTLGLRPSAADCDIVRRVCESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '482M',
                'id': 'ENSPSMG00000016706',
                'perc_id': 91.4938,
                'perc_pos': 92.9461,
                'protein_id': 'ENSPSMP00000023640',
                'species': 'prolemur_simus',
                'taxon_id': 1328070},
     'taxonomy_level': 'Primates',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVM-------RITVGVDGSV--YKLH-PSF--KERFHASVR------------------------RLTPS--------CEITFIE----------------SEEGSG---------------------------RGAALV----SAVACKKACMLGQ---------------------------------',
                'cigar_line': '403M7D10M2D4MD3M2D9M24D5M8D7M16D6M27D6M4D13M33D',
                'id': 'ENSG00000106633',
                'perc_id': 78.7554,
                'perc_pos': 84.9785,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDNRARMEATKKEK-AEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKQQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFV-----DPGDRKQIHNILSTLGLRPSATDCDIVRPLLQ--FSRWAALVLAGVASRRSRHRDSNAPAYLGWNAVPGRKWITQDFAVPHWTLWLPAWPGKEVFPGPGLGRGPQDPAIAWTLWGPPCRGRHLQKLGQTDQGPRGMRAAVTWVGVFLPVAWETWDPWKRAQQHGSASQAAGVPRRPFPSHSPSPGWLVVLAWLRGPPLGDLLGPPSALRQGGVLGSYTGPERCSQQHPAHLRGPPQTRLLSSSGHPCST',
                'cigar_line': '15MD320M5D32M2D215M',
                'id': 'ENSFDAG00000015691',
                'perc_id': 63.0584,
                'perc_pos': 68.0412,
                'protein_id': 'ENSFDAP00000007096',
                'species': 'fukomys_damarensis',
                'taxon_id': 885580},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02237,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 85.4077,
                'perc_pos': 86.6953,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDEARSRAQAALTLAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGNSGELDEFLLEYDRMVDESSVNPGQQL----------------------------------------------------DPGDRKQIHNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSLDMMRITVGVDGSVYKLHPSFKERFHASVRRLTPRCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '289M52D125M',
                'id': 'ENSCPOG00000005392',
                'perc_id': 96.1353,
                'perc_pos': 97.5845,
                'protein_id': 'ENSCPOP00000029488',
                'species': 'cavia_porcellus',
                'taxon_id': 10141},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03003,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 95.0644,
                'perc_pos': 96.5665,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEAAKKDKVAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDPGDRKQIHNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSQDVMRITVGVDGSVYKLHPSFKERFHASVRRLAPRCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSODEG00000014198',
                'perc_id': 95.0644,
                'perc_pos': 96.5665,
                'protein_id': 'ENSODEP00000019248',
                'species': 'octodon_degus',
                'taxon_id': 10160},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.01979,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': 'D466M',
                'id': 'ENSG00000106633',
                'perc_id': 96.7811,
                'perc_pos': 98.0687,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'RDAMESMRSLTQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHXSVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '467M',
                'id': 'ENSUPAG00010021047',
                'perc_id': 96.5739,
                'perc_pos': 97.8587,
                'protein_id': 'ENSUPAP00010026635',
                'species': 'urocitellus_parryii',
                'taxon_id': 9999},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 95.279,
                'perc_pos': 97.2103,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRTRMEATKK-EKVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGDAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDTGDRKQIHNILSTLGLRPSVTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIQSEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'ENSMOCG00000007909',
                'perc_id': 95.4839,
                'perc_pos': 97.4194,
                'protein_id': 'ENSMOCP00000008006',
                'species': 'microtus_ochrogaster',
                'taxon_id': 79684},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03266,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.9914,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDNRARMEATKKEKVAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDPGDRKQIHNILSTLGLRPSPTDCDLVRRACESVSTRAAHMCSAGLAGVINRMRESRSQDVLRITVGVDGSVYKLHPSFKEQFHSSVRRLAPRCEITFIESEEGSGRGAALVSAVACKKACMLG-',
                'cigar_line': '465MD',
                'id': 'ENSHGLG00100010467',
                'perc_id': 94.1936,
                'perc_pos': 96.5591,
                'protein_id': 'ENSHGLP00100014157',
                'species': 'heterocephalus_glaber_male',
                'taxon_id': 10181},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 96.3519,
                'perc_pos': 97.8541,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDEARSRAQAALTLAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRECEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDPGDRKQIHNILSTLGLRPSTADCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSQDVMRITVGVDGSVYKLHPSFKERFHASVRRLAPRCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSCLAG00000004771',
                'perc_id': 96.3519,
                'perc_pos': 97.8541,
                'protein_id': 'ENSCLAP00000006767',
                'species': 'chinchilla_lanigera',
                'taxon_id': 34839},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.5622,
                'perc_pos': 96.1373,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEATKK-EKVEQILAEFQLQEEDLKKVMSRMQKEMDRGLKLETHQEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGNSGELDEFLLEYDRMVDESSVNPGQQLYEKIIGGKYMGELVRLVLLKLVEENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRRQILNILSTLGLRPSVADCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'ENSMUSG00000041798',
                'perc_id': 93.7634,
                'perc_pos': 96.3441,
                'protein_id': 'ENSMUSP00000099984',
                'species': 'mus_musculus',
                'taxon_id': 10090},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 84.3348,
                'perc_pos': 85.6223,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MTMDATSGQAQSTATLVEQILAEFQLQEEDLKKVMRRMQKEMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEVGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQLKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXDSGDRKQTYNILSTLGLRPSAADCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRCVDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGH',
                'cigar_line': '466M',
                'id': 'ENSOPRG00000001902',
                'perc_id': 84.3348,
                'perc_pos': 85.6223,
                'protein_id': 'ENSOPRP00000001752',
                'species': 'ochotona_princeps',
                'taxon_id': 9978},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03266,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.9914,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDNRARMEATKKEKVAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDPGDRKQIHNILSTLGLRPSPTDCDLVRRACESVSTRAAHMCSAGLAGVINRMRESRSQDVLRITVGVDGSVYKLHPSFKEQFHSSVRRLAPRCEITFIESEEGSGRGAALVSAVACKKACMLG-',
                'cigar_line': '465MD',
                'id': 'ENSHGLG00000019150',
                'perc_id': 94.1936,
                'perc_pos': 96.5591,
                'protein_id': 'ENSHGLP00000026925',
                'species': 'heterocephalus_glaber_female',
                'taxon_id': 10181},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT---LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRL-ETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15M3D33MD418M',
                'id': 'ENSG00000106633',
                'perc_id': 84.7639,
                'perc_pos': 87.5536,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-NLDTIQ--------HTW-FSQLL----------QKVMTQ----TDRSYHLSHSHQD------PLK---------VGDFLSLDLGGTNFRVMLVKVGEGDAC-WSVKTEHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDAGDRKQIHNILSTLGLRPSVTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': 'D6M8D3MD5M10D6M4D13M6D3M9D27MD367M',
                'id': 'ENSMAUG00000003438',
                'perc_id': 91.8605,
                'perc_pos': 94.8837,
                'protein_id': 'ENSMAUP00000003252',
                'species': 'mesocricetus_auratus',
                'taxon_id': 10036},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 94.8498,
                'perc_pos': 96.9957,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPDDRTRMEAAKK-EKVEQILAEFQLREEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGDAGQWSVKTKQQMYSIPQDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSVTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'ENSCGRG00000017741',
                'perc_id': 95.0538,
                'perc_pos': 97.2043,
                'protein_id': 'ENSCGRP00000024471',
                'species': 'cricetulus_griseus_crigri',
                'taxon_id': 10029},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03593,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTL--VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVR---------------------RLTPSCEITFIESEEGSG--RGAALVSAVACKKACMLGQ',
                'cigar_line': '16M2D413M21D18M2D19M',
                'id': 'ENSG00000106633',
                'perc_id': 89.2704,
                'perc_pos': 91.2017,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'LLDRGARMEP------RGVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPR----------LQGETAEAGVGVDIQKTSEMF--LPS--------QEVAGNW-GAALVSPVACKKACMLGQ',
                'cigar_line': '10M6D405M10D21M2D3M8D7MD18M',
                'id': 'ENSSDAG00000015099',
                'perc_id': 89.6552,
                'perc_pos': 91.5948,
                'protein_id': 'ENSSDAP00000016725',
                'species': 'spermophilus_dauricus',
                'taxon_id': 99837},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.01939,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': 'D466M',
                'id': 'ENSG00000106633',
                'perc_id': 96.7811,
                'perc_pos': 98.2833,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'RGAMEYMRSLTQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIQSEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '467M',
                'id': 'ENSSTOG00000002740',
                'perc_id': 96.5739,
                'perc_pos': 98.0728,
                'protein_id': 'ENSSTOP00000002448',
                'species': 'ictidomys_tridecemlineatus',
                'taxon_id': 43179},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT--LVEQIL---------------------AEFQLQEEDLKKVMRRMQKEMDR-----GLRLETHEEASVKMLPTYVRST------------------PEGS----EVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15M2D6M21D23M5D22M18D4M4D396M',
                'id': 'ENSG00000106633',
                'perc_id': 85.4077,
                'perc_pos': 88.8412,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDTTR--------CG--AQLLTLGTNKCTNACSLLCRAGTHNGHMNPRCRTEQAAATQL--PTCRVQLLLNYHVEGRAD------PGRVPAAGGRPEEGDEPDAEGDGPWPEAGDPRGEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKIIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSVTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLAQ',
                'cigar_line': '7M8D2M2D42M2D18M6D429M',
                'id': 'ENSRNOG00000061527',
                'perc_id': 79.9197,
                'perc_pos': 83.1325,
                'protein_id': 'ENSRNOP00000068656',
                'species': 'rattus_norvegicus',
                'taxon_id': 10116},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.01508,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 97.4249,
                'perc_pos': 98.2833,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MATDATRSQAQTALTLAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSMNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDLGDRKQIHNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSDORG00000016392',
                'perc_id': 97.4249,
                'perc_pos': 98.2833,
                'protein_id': 'ENSDORP00000026422',
                'species': 'dipodomys_ordii',
                'taxon_id': 10020},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 94.8498,
                'perc_pos': 96.9957,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPDDRTRMEAAKK-EKVEQILAEFQLREEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGDAGQWSVKTKQQMYSIPQDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSVTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'ENSCGRG00001009989',
                'perc_id': 95.0538,
                'perc_pos': 97.2043,
                'protein_id': 'ENSCGRP00001007607',
                'species': 'cricetulus_griseus_chok1gshd',
                'taxon_id': 10029},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02112,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 96.5665,
                'perc_pos': 98.4979,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MATDPTKNRDQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRQSRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEISFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSCCNG00000017006',
                'perc_id': 96.5665,
                'perc_pos': 98.4979,
                'protein_id': 'ENSCCNP00000016778',
                'species': 'castor_canadensis',
                'taxon_id': 51338},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.01839,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 69.5279,
                'perc_pos': 70.3863,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDEARSRAQAALTLAEQILAEFQLQEEDLKKVMQRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQL----------------------------------------------------------------------------------------------------------------------------------FKERFHASVRRLTPRCEITFIESEEGSGRGAALVSAVACKKACMQGQ',
                'cigar_line': '289M130D47M',
                'id': 'ENSCAPG00000016334',
                'perc_id': 96.4286,
                'perc_pos': 97.619,
                'protein_id': 'ENSCAPP00000016450',
                'species': 'cavia_aperea',
                'taxon_id': 37548},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.06422,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLH-PSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '417MD49M',
                'id': 'ENSG00000106633',
                'perc_id': 47.8541,
                'perc_pos': 49.1416,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MTMEATRRQAQTATSLVEQILAEFQLHEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQLKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGK--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------APTCRTPF-----WLGPE-------------------HRVL---------',
                'cigar_line': '229M188D8M5D5M19D4M9D',
                'id': 'ENSOCUG00000001018',
                'perc_id': 90.6504,
                'perc_pos': 93.0894,
                'protein_id': 'ENSOCUP00000032410',
                'species': 'oryctolagus_cuniculus',
                'taxon_id': 9986},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02169,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 95.4936,
                'perc_pos': 98.0687,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MATDATRTRAHSSLTLAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEKLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSITDCDIVRHACESVSTRAAHMCSAGLAGVINRMRESRSEEVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSNGAG00000022694',
                'perc_id': 95.4936,
                'perc_pos': 98.0687,
                'protein_id': 'ENSNGAP00000024422',
                'species': 'nannospalax_galili',
                'taxon_id': 1026970},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02043,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-----------------------------MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '29D466M',
                'id': 'ENSG00000106633',
                'perc_id': 96.9957,
                'perc_pos': 98.4979,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPQLQLHPRPQQAEASPPSKNTSFLCPWRDAVESMRSQTQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSATDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '495M',
                'id': 'ENSMMMG00000012459',
                'perc_id': 91.3131,
                'perc_pos': 92.7273,
                'protein_id': 'ENSMMMP00000013989',
                'species': 'marmota_marmota_marmota',
                'taxon_id': 9994},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02922,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 94.6352,
                'perc_pos': 97.4249,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAVDTTRRGAQSL-TLVEQILAEFQLQEEDLKKVMSRMQKEMDRGLKLETHQEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGNSGELDEFLLEYDRMVDESSVNPGQQLYEKIIGGKYMGELVRLVLLKLVEENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRRQIRNILSTLGLRPSVADCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'ENSMSIG00000019231',
                'perc_id': 94.8387,
                'perc_pos': 97.6344,
                'protein_id': 'ENSMSIP00000022689',
                'species': 'mus_spicilegus',
                'taxon_id': 10103},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.01949,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 96.5665,
                'perc_pos': 98.0687,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDATGSSAQSALILVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHKEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEEEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSAADCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSJJAG00000020695',
                'perc_id': 96.5665,
                'perc_pos': 98.0687,
                'protein_id': 'ENSJJAP00000019855',
                'species': 'jaculus_jaculus',
                'taxon_id': 51337},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.5622,
                'perc_pos': 96.1373,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEATKK-EKVEQILAEFQLQEEDLKKVMSRMQKEMDRGLKLETHQEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGNSGELDEFLLEYDRMVDESSVNPGQQLYEKIIGGKYMGELVRLVLLKLVEENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRRQIRNILSTLGLRPSVADCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'MGP_SPRETEiJ_G0016905',
                'perc_id': 93.7634,
                'perc_pos': 96.3441,
                'protein_id': 'MGP_SPRETEiJ_P0026897',
                'species': 'mus_spretus',
                'taxon_id': 10096},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 94.206,
                'perc_pos': 96.1373,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEATKK-EKVEQILAEFQLQEEDLKKVMSRMQKEMDRGLRLETHQEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQLYEKIIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRRQIRNILSTLGLRPSVADCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'MGP_CAROLIEiJ_G0016063',
                'perc_id': 94.4086,
                'perc_pos': 96.3441,
                'protein_id': 'MGP_CAROLIEiJ_P0025564',
                'species': 'mus_caroli',
                'taxon_id': 10089},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 94.206,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEATKK-EKVEQILAEFQLQEEDLKKVMSRMQKEMDRGLRLETHQEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSVNPGQQLYEKIIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRRQIHNILSTLGLRPSVADCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'MGP_PahariEiJ_G0016828',
                'perc_id': 94.4086,
                'perc_pos': 96.5591,
                'protein_id': 'MGP_PahariEiJ_P0030387',
                'species': 'mus_pahari',
                'taxon_id': 10093},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 94.8498,
                'perc_pos': 96.9957,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPDDRTRMEAAKK-EKVEQILAEFQLREEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGDAGQWSVKTKQQMYSIPQDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSVTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'ENSCGRG00015004254',
                'perc_id': 95.0538,
                'perc_pos': 97.2043,
                'protein_id': 'ENSCGRP00015005508',
                'species': 'cricetulus_griseus_picr',
                'taxon_id': 10029},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 95.0644,
                'perc_pos': 96.7811,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'RLDDRARMEAAKK-EKVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEATVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSVTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'ENSMUGG00000023356',
                'perc_id': 95.2688,
                'perc_pos': 96.9893,
                'protein_id': 'ENSMUGP00000028156',
                'species': 'meriones_unguiculatus',
                'taxon_id': 10047},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 95.279,
                'perc_pos': 96.9957,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRIRMEAPKK-EKVEQILAEFQLREEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRMVDESSANPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIHNILSTLGLRPSVTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13MD452M',
                'id': 'ENSPEMG00000001040',
                'perc_id': 95.4839,
                'perc_pos': 97.2043,
                'protein_id': 'ENSPEMP00000001352',
                'species': 'peromyscus_maniculatus_bairdii',
                'taxon_id': 230844},
     'taxonomy_level': 'Euarchontoglires',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03408,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '----------------MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '16D466M',
                'id': 'ENSG00000106633',
                'perc_id': 92.0601,
                'perc_pos': 94.4206,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'CVGPCESGHPGPGPTRLLH--------RPAQ-AEQILADFQLQEADLKKVMRRMQTEMARGLRLQTHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGAEGQWSVTTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPFCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '19M8D4MD450M',
                'id': 'ENSMPUG00000018201',
                'perc_id': 90.6977,
                'perc_pos': 93.0233,
                'protein_id': 'ENSMPUP00000018089',
                'species': 'mustela_putorius_furo',
                'taxon_id': 9669},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03495,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.9914,
                'perc_pos': 96.1373,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'TAMDAMRGQTHTALNLAEQILADFQLQEADLKKVMWRMQKEMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPTATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHTIVRKLTPSCEITFIESEEGSGRGAALVSAVACKKACMQGQ',
                'cigar_line': '466M',
                'id': 'ENSSSUG00005002920',
                'perc_id': 93.9914,
                'perc_pos': 96.1373,
                'protein_id': 'ENSSSUP00005004538',
                'species': 'suricata_suricatta',
                'taxon_id': 37032},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04253,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA---MD--VTRSQA---------------QTALT-------------------------------LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVE-------------------------------------------SDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M3D2M2D6M15D5M31D325M43D126M',
                'id': 'ENSG00000106633',
                'perc_id': 93.3476,
                'perc_pos': 96.5665,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MILPQGESNSTRALLGTWKHAEEPGSQPSAPTASTLARAPQHHGSLPKLMAQLAWPAPAPPEAGRHTAEQILADFQMQEADLKKVMRRMQREMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHEMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKIIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVERRARVAHVRAETPGVEARRPAHCWCLAESDALPSGARAPSALPGDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '560M',
                'id': 'ENSCAFG00040023667',
                'perc_id': 77.6786,
                'perc_pos': 80.3571,
                'protein_id': 'ENSCAFP00040038568',
                'species': 'canis_lupus_familiarisgreatdane',
                'taxon_id': 9615},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02957,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 94.8498,
                'perc_pos': 96.7811,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMTATRIQAQPASNLAEQILADFQLQEADLKKVMRRMQKEMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVTTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDAMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSUAMG00000004714',
                'perc_id': 94.8498,
                'perc_pos': 96.7811,
                'protein_id': 'ENSUAMP00000005276',
                'species': 'ursus_americanus',
                'taxon_id': 9643},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-------------------------------MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '31D466M',
                'id': 'ENSG00000106633',
                'perc_id': 83.2618,
                'perc_pos': 85.4077,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'PLVGRSLGYFCLGSPLGNTEGFQLPRRAAVQMLDDRARMEIAKKEK-VEQILAEFQLQDEDLKKVMRRMQKEMDRGLRLETHKEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAARMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '46MD450M',
                'id': 'ENSTTRG00000006046',
                'perc_id': 78.2258,
                'perc_pos': 80.2419,
                'protein_id': 'ENSTTRP00000005718',
                'species': 'tursiops_truncatus',
                'taxon_id': 9739},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGT-GCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '229MD237M',
                'id': 'ENSG00000106633',
                'perc_id': 43.9914,
                'perc_pos': 45.7082,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-------------------------MQEADLKKVMRRMQREMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHEMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGKDSCPA--------------------------------------------------------------------LSRGLCLPL-----------SSVLRSKG-----------------------------------------------------------------------------------------------------------------------------------------',
                'cigar_line': '25D209M68D9M11D8M137D',
                'id': 'ENSCAFG00000002944',
                'perc_id': 90.708,
                'perc_pos': 94.2478,
                'protein_id': 'ENSCAFP00000004364',
                'species': 'canis_familiaris',
                'taxon_id': 9615},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03697,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMD--VTRSQAQTALT----LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '4M2D11M4D451M',
                'id': 'ENSG00000106633',
                'perc_id': 92.7039,
                'perc_pos': 95.7082,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----GGDDRAWI-----WGAQLAEQILADFQMQEADLKKVMRRMQREMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHEMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKIIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '4D8M5D455M',
                'id': 'ENSCAFG00020016524',
                'perc_id': 93.3045,
                'perc_pos': 96.3283,
                'protein_id': 'ENSCAFP00020020949',
                'species': 'canis_lupus_dingo',
                'taxon_id': 286419},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.0891,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '------------------------------MAMDVTRSQAQTALT--L--VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVR-----------------------------------------------RLTPS----------CEITFIE--SEEGSG---RGAALV---------------------------------SAVACKKACMLGQ----------------------------------------------------------------',
                'cigar_line': '30D15M2DM2D413M47D5M10D7M2D6M3D6M33D13M64D',
                'id': 'ENSG00000106633',
                'perc_id': 87.1245,
                'perc_pos': 90.1288,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MVPPPPTTCGLPKLRKKGQISLLPPDSNSGHFHPQACMEDCRQESEFLRRAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPRPAERRGPGARPRPPSRPSEALPMSFPCSSKPRSKSSRKPSAASTRTVMASSASQTFERPTPSWVSAPLSHRPCAAQARTQCCRAVAGSLMRGPASCRSLPLPVLPFLLTAPSSSHTPPPSHLPPPPPPELPLTCSQSGEGGEGGWKGTEAGPYSGTLKLPVSISLPARTPREGECSRRGAGCHAAGREGAHQLHRLPHVVRGEAQR',
                'cigar_line': '659M',
                'id': 'ENSSSCG00000016751',
                'perc_id': 61.6085,
                'perc_pos': 63.7329,
                'protein_id': 'ENSSSCP00000048940',
                'species': 'sus_scrofa',
                'taxon_id': 9823},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.0437,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 92.0601,
                'perc_pos': 95.4936,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPDDRARMENAKKEK-AEQILAEFRLQDEDLKKVMRRMQMEMDRGLRLETHEKASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYVSECISDFLEKHHMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMHNVELVEGEEGRMCVNTEWGAFGDAGELDEFLLEYDRMVDESSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSRLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPNCEITFIQSEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15MD450M',
                'id': 'ENSRFEG00010020533',
                'perc_id': 92.2581,
                'perc_pos': 95.6989,
                'protein_id': 'ENSRFEP00010031126',
                'species': 'rhinolophus_ferrumequinum',
                'taxon_id': 59479},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04777,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 92.7039,
                'perc_pos': 94.8498,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMDVTKKEK-AEQILADFQLQEADLKKVMRRMQTEMARGLRLQTHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGAEGQWSVTTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPFCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '15MD450M',
                'id': 'ENSNVIG00000021119',
                'perc_id': 92.9032,
                'perc_pos': 95.0538,
                'protein_id': 'ENSNVIP00000027326',
                'species': 'neovison_vison',
                'taxon_id': 452646},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 53.0043,
                'perc_pos': 54.721,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '------------------------------------------------------------------------------------------------------------------------------------------------------------------GILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLFEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVE---------------------------------------------GLSVVINRMRQSRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFLESEEGSGRGAALVSAVAWKKACMLGQ',
                'cigar_line': '162D178M45D81M',
                'id': 'ENSSARG00000006856',
                'perc_id': 95.3668,
                'perc_pos': 98.4556,
                'protein_id': 'ENSSARP00000006210',
                'species': 'sorex_araneus',
                'taxon_id': 42254},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04259,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MDVTRSQA-QTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M2D8MD456M',
                'id': 'ENSG00000106633',
                'perc_id': 92.9185,
                'perc_pos': 95.7082,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--DKGDKRRLEHG-----LVRQILAEFQLQEEDLKKVMRRMQEEMDRGLRLETHEEATVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDAGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRLVSQVESDSGDRKQIYNILSTLGLRPSGTDCDIVRRACESVSTRAAHMCSAGLAAVINRMRESRREDVMRITVGVDGSVYKLHPSFKQRFHASVRRLTPNCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '2D11M5D451M',
                'id': 'ENSEASG00005017749',
                'perc_id': 93.7229,
                'perc_pos': 96.5368,
                'protein_id': 'ENSEASP00005026027',
                'species': 'equus_asinus_asinus',
                'taxon_id': 83772},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03351,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2D466M',
                'id': 'ENSG00000106633',
                'perc_id': 94.206,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'VVMEATRSRAQIALN--LAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSAADCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '15M2D451M',
                'id': 'ENSMMSG00000010554',
                'perc_id': 94.206,
                'perc_pos': 96.3519,
                'protein_id': 'ENSMMSP00000014061',
                'species': 'moschus_moschiferus',
                'taxon_id': 68415},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04217,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT-LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15MD451M',
                'id': 'ENSG00000106633',
                'perc_id': 93.7768,
                'perc_pos': 95.9227,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEISKK--EKAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHKEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTTHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '13M2D452M',
                'id': 'ENSBTAG00000032288',
                'perc_id': 93.9785,
                'perc_pos': 96.129,
                'protein_id': 'ENSBTAP00000043100',
                'species': 'bos_taurus',
                'taxon_id': 9913},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '----MA-----------MDVTRSQA----QTALT------------L--------VEQIL-------------------AEFQLQEEDL--------KKVMR-RMQKEMDR--------------------GLRLETHEEASVKMLPTYVRST----------PEGS------EVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYS--IPEDAMTGTAEML-----------FDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVE---------------------------------------S----DTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '4D2M11D8M4D5M12DM8D5M19D10M8D5MD8M20D22M10D4M6D40M2D13M11D217M39DM4D125M',
                'id': 'ENSG00000106633',
                'perc_id': 76.824,
                'perc_pos': 82.8326,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MVPGMAPAGHILAQCPR--GIR---WVTGQLREQAGAVSTQHSASFLCVTPSPSNSRDTLWGGCSCNVCPGGNATHWWGGLERLQKDDEPSGEAGRGRAILRARVSRQESHGSLVLTTPLHAIGVNQGGRDGMGTSQGPSTSGDLGPSAEHSTIPSFVDGPTQQDGGWSSAGPGVGQPGSWRQQSTEIRVMSTAEPLSKVCGWTSSGRDLSWCCPVPGAAAFGRGALRPMACWRCVFQLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKIIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVERRARVAHVRAETPGVEARRPAHCWCLAESDALPSGARAPSALPGDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '17M2D3M3D600M',
                'id': 'ENSCAFG00030004946',
                'perc_id': 57.7419,
                'perc_pos': 62.2581,
                'protein_id': 'ENSCAFP00030008087',
                'species': 'canis_lupus_familiarisbasenji',
                'taxon_id': 9615},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03808,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTL----------------VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '16M16D450M',
                'id': 'ENSG00000106633',
                'perc_id': 93.5622,
                'perc_pos': 95.4936,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--MVQTRQEGSLEYLLLCQQAETTLLSPPPPQAEQILADFQLQEADLKKVMWRMQKEMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2D480M',
                'id': 'ENSPPRG00000001844',
                'perc_id': 90.8333,
                'perc_pos': 92.7083,
                'protein_id': 'ENSPPRP00000006363',
                'species': 'panthera_pardus',
                'taxon_id': 9691},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03985,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2D466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.7768,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'VVMEATRSQAQTALN--LAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHKEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTTHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '15M2D451M',
                'id': 'ENSBIXG00000003587',
                'perc_id': 93.7768,
                'perc_pos': 96.3519,
                'protein_id': 'ENSBIXP00000015396',
                'species': 'bos_taurus_hybrid',
                'taxon_id': 30522},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04195,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT-LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15MD451M',
                'id': 'ENSG00000106633',
                'perc_id': 94.206,
                'perc_pos': 96.1373,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEIAKK--EKVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSAADCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '13M2D452M',
                'id': 'ENSCHIG00000015555',
                'perc_id': 94.4086,
                'perc_pos': 96.3441,
                'protein_id': 'ENSCHIP00000014563',
                'species': 'capra_hircus',
                'taxon_id': 9925},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02802,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRG----------------------------------------------------------------DFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '194M64D272M',
                'id': 'ENSG00000106633',
                'perc_id': 88.6266,
                'perc_pos': 91.2017,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------------------------MRRMQEEMDRGLRLETHEEATVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGVRRHLPLPLPWVPLTLPRVQDAGEGLLGVHPGRNPVLPHLAGPAQSRLSRDPQPYHRCLCASWQDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDAGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRLVSQVESDSGDRKQIYNILSTLGLRPSGTDCDIVRRACESVSTRAAHMCSAGLAAVINRMRESRREDVMRITVGVDGSVYKLHPSFKQRFHASVRRLTPNCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '34D496M',
                'id': 'ENSECAG00000022171',
                'perc_id': 83.2661,
                'perc_pos': 85.6855,
                'protein_id': 'ENSECAP00000039470',
                'species': 'equus_caballus',
                'taxon_id': 9796},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.07976,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTL-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRG---------------------------------------------DFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALV------------SAVACKKACMLGQ--',
                'cigar_line': '16MD178M45D259M12D13M2D',
                'id': 'ENSG00000106633',
                'perc_id': 81.7597,
                'perc_pos': 84.5494,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMDVTKKE--KAEQILADFQMQEADLKKVMRRMQREMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHEMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGVRWPPCPPWEPPAPLAREPGHWLEGPRAPRPRPRPRHCCLLASWQDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKIIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGS-----------------------------------------PPTPGPPDREGGGPTCCSSSGGG--PR',
                'cigar_line': '14M2D442M41D23M2D2M',
                'id': 'ENSVVUG00000008505',
                'perc_id': 79.21,
                'perc_pos': 81.9127,
                'protein_id': 'ENSVVUP00000011546',
                'species': 'vulpes_vulpes',
                'taxon_id': 9627},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.0408,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT-LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15MD451M',
                'id': 'ENSG00000106633',
                'perc_id': 94.206,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEIAKK--EKVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEKLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAARMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAGVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '13M2D452M',
                'id': 'ENSPCTG00005005671',
                'perc_id': 94.4086,
                'perc_pos': 96.5591,
                'protein_id': 'ENSPCTP00005008141',
                'species': 'physeter_catodon',
                'taxon_id': 9755},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.04429,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT-LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15MD451M',
                'id': 'ENSG00000106633',
                'perc_id': 93.9914,
                'perc_pos': 95.9227,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEIAKK--EKAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSAADCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '13M2D452M',
                'id': 'ENSOARG00000015987',
                'perc_id': 94.1936,
                'perc_pos': 96.129,
                'protein_id': 'ENSOARP00000017168',
                'species': 'ovis_aries',
                'taxon_id': 9940},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03985,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2D466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.7768,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'VVMEATRSQAQTALN--LAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHKEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTTHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '15M2D451M',
                'id': 'ENSBIXG00005019239',
                'perc_id': 93.7768,
                'perc_pos': 96.3519,
                'protein_id': 'ENSBIXP00005015369',
                'species': 'bos_indicus_hybrid',
                'taxon_id': 30522},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 91.8455,
                'perc_pos': 93.9914,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------AEQILAEFRLQEEDLKKVMRRMQKEMDRGLRLATHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSLNTKHQMYSIPEDAMTGTAEMLFDYVSECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMHNVELVDGDEGRMCVNTEWGAFGDAGELDEFLLEYDRMVDESSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDEDLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCGAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHP-FKERFHAIVRRLTPSCEITFIQSEEGSGRGAALVSAVARKKACMLGQ',
                'cigar_line': '16D402MD47M',
                'id': 'ENSPVAG00000008079',
                'perc_id': 95.3229,
                'perc_pos': 97.5501,
                'protein_id': 'ENSPVAP00000007630',
                'species': 'pteropus_vampyrus',
                'taxon_id': 132908},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.07247,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 80.4721,
                'perc_pos': 83.9056,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '---------------------AEFHAAGGRLEEGMRRMQKEMDRGL------------LPMRLVCFSLCAEVGIPL-LDLGGTNFR----------EGQWSVKTKHQMSSIPGVSVLGRPHRLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDEDLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRHACESVSTRAARMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKDRFHTSVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '21D25M12D18MD9M10D370M',
                'id': 'ENSCDRG00005009900',
                'perc_id': 88.8626,
                'perc_pos': 92.654,
                'protein_id': 'ENSCDRP00005014290',
                'species': 'camelus_dromedarius',
                'taxon_id': 9838},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTL-------GLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '356M7D110M',
                'id': 'ENSG00000106633',
                'perc_id': 79.1845,
                'perc_pos': 82.8326,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPDDGAGMETAKKEK-AEQILAEFRLQEEDLKKVMRRMQKEMDRGLRLETHQEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGHWSVKTKHQMYCIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMHNVELVEGEEGRMCVNTEWGAFGDAGELDEFLLEYDRAVDESSLNPGQQLYEKLIGGKYMGELVRLVLLPLVYEDLLYRAEGSEQLSPPGAFETRFVSHVETCARRRPRIQNVISKVYCLDSEHGRLP---------------SPRAQRGC-------------------VHITMGVDGSVYKLHPIFKERFHASVRRLTPSCEITFIQSEDGSGRGAALVSAVACKKAYMLGQ',
                'cigar_line': '15MD351M15D8M19D64M',
                'id': 'ENSMLUG00000012016',
                'perc_id': 84.2466,
                'perc_pos': 88.1279,
                'protein_id': 'ENSMLUP00000010946',
                'species': 'myotis_lucifugus',
                'taxon_id': 59463},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02809,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 94.8498,
                'perc_pos': 96.5665,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDAMRSQTQMPLNLAEQILADFQLQEADLKKVMWRMQKEMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSFCAG00000014361',
                'perc_id': 94.8498,
                'perc_pos': 96.5665,
                'protein_id': 'ENSFCAP00000013323',
                'species': 'felis_catus',
                'taxon_id': 9685},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03446,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMD-VTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '4MD462M',
                'id': 'ENSG00000106633',
                'perc_id': 69.5279,
                'perc_pos': 71.03,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDIRSQ---TAAPNLAEHILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLKDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAARMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRLLTPSCEITFIE-SEGSGPGAGLVSAVAWK-ACMLGQ',
                'cigar_line': '8M3D431MD17MD6M',
                'id': 'ENSEEUG00000001219',
                'perc_id': 70.1299,
                'perc_pos': 71.645,
                'protein_id': 'ENSEEUP00000001096',
                'species': 'erinaceus_europaeus',
                'taxon_id': 9365},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT---LVEQILAEFQLQEEDLKKVMRRMQKEMDR-GLRLETHEEASVKMLPTYVRSTPEGS-------EVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEML-----------FDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGEL-VRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPST-TDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEE--GSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15M3D29MD26M7D53M11D179MD60MD82M2D22M',
                'id': 'ENSG00000106633',
                'perc_id': 54.2918,
                'perc_pos': 57.7253,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDDRARMEA-----TKK----------------EKVMHPFGRLLGSVGC--DRHRQA----LPAPPLREPKADVLLPVAAEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMVSSEGLLCVLQLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMHNVELVEGEEGRMCVNTEWGAFGDSGELDEFLLEYDRL-------------------------PLPLVLPLQADDGLVFK-----------------------QLGGR----------------W---------GES-----------------NR------------------------PS--------LRQLAPL----------SFGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '10M5D3M16D16M2D6M4D237M25D17M23D5M16DM9D3M17D2M24D2M8D7M10D24M',
                'id': 'ENSPTIG00000013711',
                'perc_id': 75.976,
                'perc_pos': 80.7808,
                'protein_id': 'ENSPTIP00000014260',
                'species': 'panthera_tigris_altaica',
                'taxon_id': 74533},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03693,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '---MAMDVTRSQA-----QTALT-----LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '3D10M5D5M5D451M',
                'id': 'ENSG00000106633',
                'perc_id': 93.133,
                'perc_pos': 95.279,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'PPWVG--DARELGHPGPPAHAAAPPTPAQAEQILADFQLQEADLKKVMRRMQKEMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVTTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIASEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '5M2D472M',
                'id': 'ENSAMEG00000017601',
                'perc_id': 90.9853,
                'perc_pos': 93.0818,
                'protein_id': 'ENSAMEP00000018607',
                'species': 'ailuropoda_melanoleuca',
                'taxon_id': 9646},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03836,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2D466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.9914,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'VVMEATRSRAQTALN--LAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHKEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTTHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '15M2D451M',
                'id': 'ENSBMUG00000026269',
                'perc_id': 93.9914,
                'perc_pos': 96.3519,
                'protein_id': 'ENSBMUP00000035334',
                'species': 'bos_mutus',
                'taxon_id': 72004},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03911,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2D466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.9914,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'VVMEATRSRAQTALN--LAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHKEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTTHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '15M2D451M',
                'id': 'ENSBBBG00000004174',
                'perc_id': 93.9914,
                'perc_pos': 96.3519,
                'protein_id': 'ENSBBBP00000022778',
                'species': 'bison_bison_bison',
                'taxon_id': 43346},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02732,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 95.0644,
                'perc_pos': 96.7811,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMDATRSQTQMPLNLAEQILADFQLQEADLKKVMWRMQKEMARGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFRGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSLCNG00005002889',
                'perc_id': 95.0644,
                'perc_pos': 96.7811,
                'protein_id': 'ENSLCNP00005004319',
                'species': 'lynx_canadensis',
                'taxon_id': 61383},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03935,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2D466M',
                'id': 'ENSG00000106633',
                'perc_id': 93.9914,
                'perc_pos': 96.3519,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'VVMEATRSRAQTALN--LAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHKEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTTHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSATDCDIVRRACESVSTRAAHMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHAIVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '15M2D451M',
                'id': 'ENSBGRG00000011827',
                'perc_id': 93.9914,
                'perc_pos': 96.3519,
                'protein_id': 'ENSBGRP00000019086',
                'species': 'bos_grunniens',
                'taxon_id': 30521},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.02906,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 95.9227,
                'perc_pos': 98.4979,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MAMEATRSWARTALNLAEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIRRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLIFHGEASEKLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAARMCAAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSCWAG00000006145',
                'perc_id': 95.9227,
                'perc_pos': 98.4979,
                'protein_id': 'ENSCWAP00000008010',
                'species': 'catagonus_wagneri',
                'taxon_id': 51154},
     'taxonomy_level': 'Boreoeutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.05901,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 90.3433,
                'perc_pos': 93.5622,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'SVSSRPRIQGSRREV-AEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGETGQWSIKTKHQMYSIPDDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGNEGRMCVNTEWGGFGDSGELDEFLLEYDRVVDETSMNPGQQLYEKLIGGKYMGELVRLVLLKLADENLLFHGKTSEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRASATDCDIVRLACESVSTRAAQMCSAGLAGVINRMRESRSEEVMHITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIQSEEGSGRGAALISALSAKVLSVLGL',
                'cigar_line': '15MD450M',
                'id': 'ENSLAFG00000020833',
                'perc_id': 90.5376,
                'perc_pos': 93.7634,
                'protein_id': 'ENSLAFP00000015917',
                'species': 'loxodonta_africana',
                'taxon_id': 9785},
     'taxonomy_level': 'Eutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-----------------------MA--------MDVTRSQA-QTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGS-------------------EVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEML------------FDYI----SECISDFLDK--HQMKHKKLPLGFTFSFPVR-HEDIDK--GILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVE-------------------------------------------S----DTGDRKQIYNILSTL-------GLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '23D2M8D8MD60M19D53M12D4M4D10M2D19MD6M2D178M43DM4D15M7D110M',
                'id': 'ENSG00000106633',
                'perc_id': 45.0644,
                'perc_pos': 46.5665,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'SWVRRDFGYFCWRGLLESTEGSQLPGLAAIQMLDHRARME-NAKKEK-AEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSXXXXXXXXXXXXXXXXXXX----------------------------------------XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXYEKLIGGKYMGELVRLVLLKLVDQNLLFHGEASEHLRTRGAFETRFVSQVEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX---------XXX---------------------------------------------FKDRFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLAQ',
                'cigar_line': '40MD6MD73M40D327M9D3M45D47M',
                'id': 'ENSCHOG00000013302',
                'perc_id': 42.3387,
                'perc_pos': 43.75,
                'protein_id': 'ENSCHOP00000011779',
                'species': 'choloepus_hoffmanni',
                'taxon_id': 9358},
     'taxonomy_level': 'Eutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.03065,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 90.7725,
                'perc_pos': 94.6352,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '------------SLRQVEQILAEFQLQEEDLKKVMRRMQEEMDRGLRLETHEAASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEAGQWSVKTKHQMYSIPEDVMTGTAETLFDYVSECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGNEGRMCVNTEWGAFGDSGELDDFLLEYDRVVDENSLNPGQQLYEKLIGGKYMGELVRLLLLKLVDQNLLFHGEASEHLRTRGAFETRFVSQVESDSGDRKQIYNILRTLGLRPSAADCDLVRRACESVSTRAAQMCSAGLAAVLNRMRQSRSEDVMRITVGVDGSVYKLHPSFKDRFHASVRRLTPSCEITFIESQEGSGRGAALVSAVACKKACLLGQ',
                'cigar_line': '12D454M',
                'id': 'ENSDNOG00000015156',
                'perc_id': 93.1718,
                'perc_pos': 97.1366,
                'protein_id': 'ENSDNOP00000011747',
                'species': 'dasypus_novemcinctus',
                'taxon_id': 9361},
     'taxonomy_level': 'Eutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 70.1717,
                'perc_pos': 72.7468,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--------------------------------------------------------------------------------------------------------------------------LLDYVSECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGNEGRMCVNTEWGAFGDAGELDEFLLEYDRVVDETSMNPGQQLYEKLIGGKYMGELVRLVLLKLVDENLLFHGKASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRASATDCDIVRRACESVSTRAAQMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKDRFHASVRRLTPSCEITFIQSEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '122D344M',
                'id': 'ENSETEG00000018598',
                'perc_id': 95.0581,
                'perc_pos': 98.5465,
                'protein_id': 'ENSETEP00000015114',
                'species': 'echinops_telfairi',
                'taxon_id': 9371},
     'taxonomy_level': 'Eutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': 0.05189,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--------------------------MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '26D466M',
                'id': 'ENSG00000106633',
                'perc_id': 91.4163,
                'perc_pos': 94.206,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'RGLGYFCSTDVLESTGSQLTRLAAVQMLDHRARMENA-KEK-AEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGETGQWSIKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEGIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMRSVELVEGNEGRMCVNTEWGGFGDSGELDEFLLEYDRVVDETSINPGQQLYEKLIGGKYMGELVRLVLLKLADENLLFHGKASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLRASATDCDIVHRVCESVSTRAAQMCSAGLAGVINRMRESRREEVMRITVGVDGSVYKLHPRFKERFHASVRRLTPGCEITFIESEEGSGRGAALISAVACKKACMLGQ',
                'cigar_line': '37MD3MD450M',
                'id': 'ENSPCAG00000010715',
                'perc_id': 86.9388,
                'perc_pos': 89.5918,
                'protein_id': 'ENSPCAP00000009993',
                'species': 'procavia_capensis',
                'taxon_id': 9813},
     'taxonomy_level': 'Eutheria',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA-MD-VTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2MD2MD462M',
                'id': 'ENSG00000106633',
                'perc_id': 90.9871,
                'perc_pos': 95.279,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--MLDYRARMDSSKKEK-VEQILSEFRLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGDAGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEQLRTRGAFETRFVSQVESDSGDGKQIYNILSTLGLLPSTTDCDIVRMACESVSTRAAQMCSAGLAGVINRMRESRSEEVMRITVGVDGSVYKLHPSFKHRFHATVRQLAPCCDISFIQSEEGSGRGAALVSAVACKKACMLNQ',
                'cigar_line': '2D15MD450M',
                'id': 'ENSPCIG00000009364',
                'perc_id': 91.1828,
                'perc_pos': 95.4839,
                'protein_id': 'ENSPCIP00000044788',
                'species': 'phascolarctos_cinereus',
                'taxon_id': 38626},
     'taxonomy_level': 'Mammalia',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '---------------------------------------------------------------MA---MD-VTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '63D2M3D2MD462M',
                'id': 'ENSG00000106633',
                'perc_id': 90.5579,
                'perc_pos': 95.279,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MTETQKVNQQRQSIPIQTLVSGTIEKGPHSSVEDDLENFCSETERTTGNSHKWTCPWAAHLALEAAQMLDYRARMESSKKEK-VEQILSEFRLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEEEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHHMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGNAGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLMKLVDENLLFNGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLIPSTTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSEEVMRITVGVDGSVYKLHPSFKHRFHATVRQLAPCCDITFIQSEEGSGRGAALVSAVACKKACMLSQ',
                'cigar_line': '82MD450M',
                'id': 'ENSMODG00000016167',
                'perc_id': 79.3233,
                'perc_pos': 83.4586,
                'protein_id': 'ENSMODP00000048190',
                'species': 'monodelphis_domestica',
                'taxon_id': 13616},
     'taxonomy_level': 'Mammalia',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--MA---MDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIE--SEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2D2M3D439M2D25M',
                'id': 'ENSG00000106633',
                'perc_id': 90.9871,
                'perc_pos': 95.279,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'FLRALQRLD----KVKKISQ-VEQILSEFRLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHHMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGDAGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLLPSTTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSEEVMRITVGVDGSVYKLHPSFKHRFHATVRQLAPCCDITFIQSESEEGSGRGAALVSAVACKKACMLSQ',
                'cigar_line': '9M4D7MD452M',
                'id': 'ENSSHAG00000014686',
                'perc_id': 90.5983,
                'perc_pos': 94.8718,
                'protein_id': 'ENSSHAP00000017276',
                'species': 'sarcophilus_harrisii',
                'taxon_id': 9305},
     'taxonomy_level': 'Mammalia',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--------MAMDVTRSQAQTALT----LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGS---EVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDK--GILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '8D15M4D55M3D92M2D304M',
                'id': 'ENSG00000106633',
                'perc_id': 88.6266,
                'perc_pos': 92.7039,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'LPLPLTIHLL-------------CCLGQVEQILSEFRLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSGPTEVGDFLSLDLGGTNLRVMLVKVGEGEEGQWSVKTKHQLYSIPTDAMTGTAEMLFDYISECISDFLDKHHMKHKKLPLGFTFSFPVRHEDIDKSKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMINDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGAAGELDDFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFGGEASEKLRTRGAFETRFVSQVESDCGDRKQIYNLLSTLGLRPSPADCDIVRLACESVSTRAAQMCSAGLAGVINRMRESRLGELTRITVGVDGSVYKLHPSFKERFHASVRQLAPCCEITFIQSEEGSGRGAALVSAVACKKACMLAQ',
                'cigar_line': '10M13D460M',
                'id': 'ENSOANG00000006506',
                'perc_id': 87.8723,
                'perc_pos': 91.9149,
                'protein_id': 'ENSOANP00000010387',
                'species': 'ornithorhynchus_anatinus',
                'taxon_id': 9258},
     'taxonomy_level': 'Mammalia',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 90.5579,
                'perc_pos': 94.206,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------VEQILSEFRLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGDAGELDEFLLEYDRVVDEASLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEQLRTRGAFETRFVSQVESDSGDGKQIYNILSTLGLLPSMTDCDIVRMACESVSTRAAQMCSAGLAGVINRMRESRSEEVMRITVGVDGSVYKLHPSFKHRFHATVRQLAPCCDITFIQSEEGSGRGAALVSAVACKKACMLNQ',
                'cigar_line': '16D450M',
                'id': 'ENSVURG00010002504',
                'perc_id': 93.7778,
                'perc_pos': 97.5556,
                'protein_id': 'ENSVURP00010003115',
                'species': 'vombatus_ursinus',
                'taxon_id': 29139},
     'taxonomy_level': 'Mammalia',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 65.0215,
                'perc_pos': 68.4549,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--------------------------------------------------------------------------------------------------------------------------LFDYISECISDFLDKHHMKHKKLPLXXXXXXXXXXXXXXXGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRQCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGDAGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEQLRTRGAFETRFVSQVESDSGDRKQIYNILSTLGLLPSTTDCDIVRMACESVSTRAAQMCSAGLAGVINRMRESRSEEVMRITVGVDGSVYKLHPSFKHRFHATVRQLAPCCDITFIQSEEGSGRGAALISAVACKKACMLSQ',
                'cigar_line': '122D344M',
                'id': 'ENSMEUG00000001332',
                'perc_id': 88.0814,
                'perc_pos': 92.7326,
                'protein_id': 'ENSMEUP00000001217',
                'species': 'notamacropus_eugenii',
                'taxon_id': 9315},
     'taxonomy_level': 'Mammalia',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 68.4549,
                'perc_pos': 73.3906,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-----------------------------------------MGTGWR-------------------------------GRGGTGAR------GRGRHGD----------------SSATPPQLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFVSQIESDSGDRKQIYNILTAFELLPSGTDCDIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '41D6M31D8M6D7M16D351M',
                'id': 'ENSAPLG00000023543',
                'perc_id': 85.7527,
                'perc_pos': 91.9355,
                'protein_id': 'ENSAPLP00000030627',
                'species': 'anas_platyrhynchos_platyrhynchos',
                'taxon_id': 8840},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 86.9099,
                'perc_pos': 92.9185,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------VDQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPKDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSGDRKQIYNILTAFELLPSGTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRRLTPGCDITFIQSEEGSGRGAALVSAVACKMACMIGQ',
                'cigar_line': '16D450M',
                'id': 'ENSAHAG00000006122',
                'perc_id': 90,
                'perc_pos': 96.2222,
                'protein_id': 'ENSAHAP00000008274',
                'species': 'apteryx_haastii',
                'taxon_id': 8823},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT---LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGS----------------------------------------EVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15M3D55M40D396M',
                'id': 'ENSG00000106633',
                'perc_id': 87.1245,
                'perc_pos': 92.7039,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'ML-------------CGVQVEQILSEFHLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSGTVSLPVPCVSPLPLTPSSSMWKAEPTKSPSPSPPLPGFAEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '2M13D494M',
                'id': 'ENSCCEG00000012267',
                'perc_id': 81.8548,
                'perc_pos': 87.0968,
                'protein_id': 'ENSCCEP00000012723',
                'species': 'cyanistes_caeruleus',
                'taxon_id': 156563},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.5536,
                'perc_pos': 93.9914,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRSRMESWRQE-KVEQILSEFRLKEEDLRKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLRLVDENLLFSGQACEKLKTRGAFETRFVSQVESDSGDRKQIYNILTAFGLLPSGSDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSPCLG00000012093',
                'perc_id': 87.7419,
                'perc_pos': 94.1936,
                'protein_id': 'ENSPCLP00000014771',
                'species': 'phasianus_colchicus',
                'taxon_id': 9054},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 86.6953,
                'perc_pos': 92.9185,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------VERILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILTAFELLPSGTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '16D450M',
                'id': 'ENSACCG00020006927',
                'perc_id': 89.7778,
                'perc_pos': 96.2222,
                'protein_id': 'ENSACCP00020010150',
                'species': 'aquila_chrysaetos_chrysaetos',
                'taxon_id': 223781},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.3391,
                'perc_pos': 93.5622,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESGRKE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSTGUG00000003490',
                'perc_id': 87.5269,
                'perc_pos': 93.7634,
                'protein_id': 'ENSTGUP00000003646',
                'species': 'taeniopygia_guttata',
                'taxon_id': 59729},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGS--EVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '70M2D396M',
                'id': 'ENSG00000106633',
                'perc_id': 86.2661,
                'perc_pos': 93.3476,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMDSSKKE-KVEQILSEFQLREEDLKKVMRRMQKEMDRGLKLETHQEASVKMLPTYVRSTPEGSAAEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWTVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGNEGRMCVNTEWGAFGASGELDEFLLEYDHVVDETSLNPGQQLYEKIIGGKYMGEIARLVLLKLVNENLLFNGEASEKLKTRGSFETRLISQVESDPGDRKQIYNILTSFGLLPSATDCDIVRMVCERVSTRAAQMCSAGLAGVINRMRDSRSEETLKITVGVDGSVYKLHPSFKDRFHTTVRQLTPGCDITFLQSEEGSGRGAALISAVACKMACMISQ',
                'cigar_line': '14MD453M',
                'id': 'ENSACAG00000011822',
                'perc_id': 86.0814,
                'perc_pos': 93.1478,
                'protein_id': 'ENSACAP00000011676',
                'species': 'anolis_carolinensis',
                'taxon_id': 28377},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.5536,
                'perc_pos': 95.0644,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'LIIDRTRVDL-----KVEQILSEFRLREEDLKKVMRRMQKEMDRGLKLDTHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWTVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIARLVLLKLVNENLLFNGEASEQLKTRGSFETRFISQIESDTGDRKQIYNILTSFGLLPSATDCDVVRMVCESVSTRAAQMCSAGLAGVINRMRDSRSEETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFLQSEEGSGRGAALISAVACKMACMIGQ',
                'cigar_line': '10M5D451M',
                'id': 'ENSPVIG00000018588',
                'perc_id': 88.5033,
                'perc_pos': 96.0954,
                'protein_id': 'ENSPVIP00000024706',
                'species': 'pogona_vitticeps',
                'taxon_id': 103695},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTR-SQA-------QTALT-----LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '7MD3M7D5M5D451M',
                'id': 'ENSG00000106633',
                'perc_id': 86.6953,
                'perc_pos': 93.7768,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--MNEAEALDDPDVEPGGSRKC-RRVAIEVEQILSEFRLQEQDLKKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEKQWNVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDVGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVNENLLFNGEATEKLKTRGSFETRFISQIESDPGDRKQIYNILTSFGLLPSVTDCDIVRMACESVSTRAAQMCSAGLAGVINRMRDSRCEDTLKITVGVDGSVYKLHPSFKDRFHAAVRQLTPDCDITFLQSEEGSGRGAALISAVACKMACMIGQ',
                'cigar_line': '2D20MD456M',
                'id': 'ENSPMRG00000017579',
                'perc_id': 84.8739,
                'perc_pos': 91.8067,
                'protein_id': 'ENSPMRP00000027247',
                'species': 'podarcis_muralis',
                'taxon_id': 64176},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '----------------MAMDVTR-SQA-----QTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '16D7MD3M5D456M',
                'id': 'ENSG00000106633',
                'perc_id': 87.5536,
                'perc_pos': 93.7768,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MWPAERKAPSDSPGLPGPDYVPRLMEAAPGXPARGC-YVDQILSEFRLREEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFVSQIESDSGDRKQIYNILTAFELLPSGTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMIGQ',
                'cigar_line': '36MD451M',
                'id': 'ENSDNVG00000016064',
                'perc_id': 83.7782,
                'perc_pos': 89.7331,
                'protein_id': 'ENSDNVP00000023105',
                'species': 'dromaius_novaehollandiae',
                'taxon_id': 8790},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-------------MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13D466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.1245,
                'perc_pos': 92.9185,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'QLDDRAGRTSVPA---------------LVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '13M15D451M',
                'id': 'ENSEGOG00005018034',
                'perc_id': 87.5,
                'perc_pos': 93.319,
                'protein_id': 'ENSEGOP00005022189',
                'species': 'erythrura_gouldiae',
                'taxon_id': 44316},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.5536,
                'perc_pos': 93.9914,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESGRRE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILTSFELLPSRTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSSHBG00005013652',
                'perc_id': 87.7419,
                'perc_pos': 94.1936,
                'protein_id': 'ENSSHBP00005015615',
                'species': 'strigops_habroptila',
                'taxon_id': 2489341},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 86.6953,
                'perc_pos': 93.3476,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRSRMESWRHE-KVEQILSEFRLKEEDLRKVMQRMQKEMDRGLKLATHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISGCISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHSCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLRLVDENLLFSGQSCEKLKTRGAFETRFVSQVESDSGDRKQIYNILTAFGLLPSGSDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHTTVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSCJPG00005011620',
                'perc_id': 86.8817,
                'perc_pos': 93.5484,
                'protein_id': 'ENSCJPP00005013827',
                'species': 'coturnix_japonica',
                'taxon_id': 93934},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.7682,
                'perc_pos': 94.206,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRSRMESSRQE-KVEQILSEFRLREEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFVSQIESDSGDRKQIYNILTAFELLPSGTDCDIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSABRG00000014872',
                'perc_id': 87.957,
                'perc_pos': 94.4086,
                'protein_id': 'ENSABRP00000017029',
                'species': 'anser_brachyrhynchus',
                'taxon_id': 132585},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLH-------------------------------PSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '417M31D49M',
                'id': 'ENSG00000106633',
                'perc_id': 87.3391,
                'perc_pos': 93.3476,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESSRKE-KVEQILSEFHLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPRWGSPDPNDISILSLHPQSLGPIGDPVFLLPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD482M',
                'id': 'ENSPMJG00000015571',
                'perc_id': 82.0564,
                'perc_pos': 87.7016,
                'protein_id': 'ENSPMJP00000020973',
                'species': 'parus_major',
                'taxon_id': 9157},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA-----QTALT---------LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '10M5D5M9D451M',
                'id': 'ENSG00000106633',
                'perc_id': 86.4807,
                'perc_pos': 94.4206,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'VLEDKGR---QQPHPSFCE-HFHLWFCIFQVQQILSEFRLQEQDLKKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWTVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGNEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVNENLLFNGEAPEKMKTRGSFETRFISQIESDSGDRKQIYNILTSFGLLPSATDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRDSRSEDILKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFLQSEEGSGRGAALISAVACKMACMMSQ',
                'cigar_line': '7M3D9MD460M',
                'id': 'ENSSMRG00000021806',
                'perc_id': 84.6639,
                'perc_pos': 92.437,
                'protein_id': 'ENSSMRP00000028361',
                'species': 'salvator_merianae',
                'taxon_id': 96440},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '------------MA--MDVTR-SQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '12D2M2D5MD459M',
                'id': 'ENSG00000106633',
                'perc_id': 85.4077,
                'perc_pos': 92.9185,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MFCIHSPETLIGMGSFHEAAKEMKR------SLQILSEFRLREEDLKKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWNVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELEEFLLEYDHVVDETSLNPGQQLYEKIIGGKYLGEIVRLVLLKLVNENLLFNGQATEKLKTRGVFETRFVSQIESDIGDRKQIYNLLTAFELLPSATDCDIVRMACESVSTRAAQMCSAGLAGVINRMRESRSEETLKITVGVDGSVYKLHPSFKDRFHATVRMLTPGCDIIFLQSEEGSGRGAALISAVACKMACMISQ',
                'cigar_line': '25M6D450M',
                'id': 'ENSSPUG00000018858',
                'perc_id': 83.7895,
                'perc_pos': 91.1579,
                'protein_id': 'ENSSPUP00000024619',
                'species': 'sphenodon_punctatus',
                'taxon_id': 8508},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-------------MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13D466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.1245,
                'perc_pos': 92.9185,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'QLDDRAGRTSVPA---------------LVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '13M15D451M',
                'id': 'ENSEGOG00005018025',
                'perc_id': 87.5,
                'perc_pos': 93.319,
                'protein_id': 'ENSEGOP00005022177',
                'species': 'erythrura_gouldiae',
                'taxon_id': 44316},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 34.5494,
                'perc_pos': 35.1931,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--------------------------------------------------------------------------------------------------------------------------LFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQL---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------',
                'cigar_line': '122D167M177D',
                'id': 'ENSMGAG00000017169',
                'perc_id': 96.4072,
                'perc_pos': 98.2036,
                'protein_id': 'ENSMGAP00000018534',
                'species': 'meleagris_gallopavo',
                'taxon_id': 9103},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 83.2618,
                'perc_pos': 92.7039,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'ILGSSCKLES------VEEILSEFQLREEDLKKVMRRMQKEMDRGLKLETHEKASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGDDEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLGKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVELLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMENVELVEGNEGRMCVNTEWGAFGESGELDEFLLEYDRVVDETSFNPGQQLFEKIIGGKYIGEIVRLVLLKLVNENLLFNGDASEKLKTRGSFESRFISQIESDAGDCKQIYNILTSFELLPSAMDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRDSRNEERLNITVGVDGSVYKHHPSFKKRFHASVRQLTPGCDITFLQSEEGSGRGAALISAVAYKMACMIAQ',
                'cigar_line': '10M6D450M',
                'id': 'ENSNSUG00000003385',
                'perc_id': 84.3478,
                'perc_pos': 93.913,
                'protein_id': 'ENSNSUP00000004266',
                'species': 'notechis_scutatus',
                'taxon_id': 8663},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.7682,
                'perc_pos': 93.9914,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESGRKE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFVSQIESDSGDRKQIYNILTAFELLPSGTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSCPGG00000001023',
                'perc_id': 87.957,
                'perc_pos': 94.1936,
                'protein_id': 'ENSCPGP00000001294',
                'species': 'calidris_pygmaea',
                'taxon_id': 425635},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA-------------QTALT-----LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '10M13D5M5D451M',
                'id': 'ENSG00000106633',
                'perc_id': 87.9828,
                'perc_pos': 93.7768,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MRKTRARKGNVGQLFHFSVPYPPATAD-AACSTQVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILRSLELLPSRWDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '27MD456M',
                'id': 'ENSMUNG00000007128',
                'perc_id': 84.8861,
                'perc_pos': 90.4762,
                'protein_id': 'ENSMUNP00000009052',
                'species': 'melopsittacus_undulatus',
                'taxon_id': 13146},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.5536,
                'perc_pos': 93.9914,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRSRMESWRQE-KVEQILSEFRLKEEDLRKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLRLVDENLLFSGQACEKLKTRGAFETRFVSQVESDSGDRKQIYNILTAFGLLPSGSDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSPSTG00000010632',
                'perc_id': 87.7419,
                'perc_pos': 94.1936,
                'protein_id': 'ENSPSTP00000015063',
                'species': 'pavo_cristatus',
                'taxon_id': 9049},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 86.9099,
                'perc_pos': 92.7039,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------VEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '16D450M',
                'id': 'ENSEGOG00005018121',
                'perc_id': 90,
                'perc_pos': 96,
                'protein_id': 'ENSEGOP00005022266',
                'species': 'erythrura_gouldiae',
                'taxon_id': 44316},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.5536,
                'perc_pos': 93.9914,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRSRMESWRQE-KVEQILSEFRLKEEDLRKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLRLVDENLLFSGQACEKLKTRGAFETRFVSQVESDSGDRKQIYNILTAFGLLPSGSDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSGALG00000031359',
                'perc_id': 87.7419,
                'perc_pos': 94.1936,
                'protein_id': 'ENSGALP00000053403',
                'species': 'gallus_gallus',
                'taxon_id': 9031},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 81.7597,
                'perc_pos': 88.6266,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '---------------------------------VMRRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVTTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGHQLYEKMIGGKYMGEIVRLVLLKLVNENLLFHGEASEKLKTRGSFETRFISQIESDADDWKQTYNILTSFELLPSLTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRGEERLKITVGIDGSVYKLHPSFKDQFHATVRQLAPGCDITFLQSEEGSGRGAALISAVACKMACLIGR',
                'cigar_line': '33D433M',
                'id': 'ENSCPBG00000001267',
                'perc_id': 87.9908,
                'perc_pos': 95.3811,
                'protein_id': 'ENSCPBP00000001641',
                'species': 'chrysemys_picta_bellii',
                'taxon_id': 8478},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.7682,
                'perc_pos': 93.9914,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESGRKE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFVSQIESDSGDRKQIYNILTAFELLPSGTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSCPUG00000011377',
                'perc_id': 87.957,
                'perc_pos': 94.1936,
                'protein_id': 'ENSCPUP00000016453',
                'species': 'calidris_pugnax',
                'taxon_id': 198806},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.3391,
                'perc_pos': 93.5622,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESSRKE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSGFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSMVIG00005010064',
                'perc_id': 87.5269,
                'perc_pos': 93.7634,
                'protein_id': 'ENSMVIP00005013923',
                'species': 'manacus_vitellinus',
                'taxon_id': 328815},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MDVTRS--QA-----------QTALT-----L-VEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEE-GQWSVKTKHQMYSIPEDAMTGTAE--MLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDK-GILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIV-GTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA------C-MLGQ---',
                'cigar_line': '2M2D6M2D2M11D5M5DMD5MD76MD24M2D41MD65MD234M6DMD4M3D',
                'id': 'ENSG00000106633',
                'perc_id': 27.2532,
                'perc_pos': 28.97,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPFC---CRLLPGAPHVPNPCFPAMT----PSLPP-QVDQILS-EFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGSRRRQ---------------ARLA---LFQLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKV------------------------------KG-------S-------------------------RG-GSR-------------------------------------------------------------------------------------------------------AAQ-----GTSP------------PAA------------------------------------------------------HP--------------------------AS---------------LSSPRP-R----ESF',
                'cigar_line': '4M3D19M4D5MD7MD78M15D4M3D44M30D2M7DM25D2MD3M103D3M5D4M12D3M54D2M26D2M15D6MDM4D3M',
                'id': 'ENSAOWG00000019308',
                'perc_id': 65.8031,
                'perc_pos': 69.9482,
                'protein_id': 'ENSAOWP00000028663',
                'species': 'apteryx_owenii',
                'taxon_id': 8824},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.3391,
                'perc_pos': 93.5622,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESSRKE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSFALG00000000058',
                'perc_id': 87.5269,
                'perc_pos': 93.7634,
                'protein_id': 'ENSFALP00000000065',
                'species': 'ficedula_albicollis',
                'taxon_id': 59894},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.3391,
                'perc_pos': 93.7768,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESGRKE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILTAFELLPSGTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSANIG00000007045',
                'perc_id': 87.5269,
                'perc_pos': 93.9785,
                'protein_id': 'ENSANIP00000010401',
                'species': 'accipiter_nisus',
                'taxon_id': 211598},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA---MDVTR-SQA--------------------------QTALT-------L----VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPST---------TDCDIVRRA-CES-VSTRAAHMCSAGLAGVINRMRESRSEDVM-------RITVGVDGSV-YKLH---PSF----KERFHASVR------------RLTPS----------------------------CEITFIE----SEE--------------------------GSG-------RGAALVSAVACKKACMLGQ',
                'cigar_line': '2M3D5MD3M26D5M7DM4D346M9D9MD3MD29M7D10MD4M3D3M4D9M12D5M28D7M4D3M26D3M7D19M',
                'id': 'ENSG00000106633',
                'perc_id': 74.0343,
                'perc_pos': 82.618,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MDSLLRENSRAMGYVISGWPCENRAGGRETWSFLKVLQLRHLASQIPGPCLTLCCVQVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSXPSTPLPHVPVPCPVLVLSLCGSPVSPHTLSVPVPGFAGTPGYL----SPEVLRKEAYGKPVDIWACGVILYILLVGYPPFWDEDQHKLYQQIKAGAYDFPSPEWDTVTPEAKNLINQMLTINPAKRITAHEALKHPWVCQRSTVASMMHRQETVECLKKFNARRKLKVRGLLGSCGLVGTARWVQDMRMGARWVQGIGTDAP-----',
                'cigar_line': '446M4D155M5D',
                'id': 'ENSZALG00000009426',
                'perc_id': 57.4043,
                'perc_pos': 64.0599,
                'protein_id': 'ENSZALP00000011109',
                'species': 'zonotrichia_albicollis',
                'taxon_id': 44394},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 29.3991,
                'perc_pos': 33.4764,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------YDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLRLVDENLLFSGQTCEKLKTRGAFETRFVSQVESDSGDRKQIYNILTAFGLLPSGSDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQS------------------------',
                'cigar_line': '273D169M24D',
                'id': 'ENSMGAG00000016756',
                'perc_id': 81.0651,
                'perc_pos': 92.3077,
                'protein_id': 'ENSMGAP00000018117',
                'species': 'meleagris_gallopavo',
                'taxon_id': 9103},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.7682,
                'perc_pos': 94.206,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRSRMESSRQE-KVEQILSEFRLREEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFVSQIESDSGDRKQIYNILTAFELLPSGTDCDIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD451M',
                'id': 'ENSACDG00005018454',
                'perc_id': 87.957,
                'perc_pos': 94.4086,
                'protein_id': 'ENSACDP00005025513',
                'species': 'anser_cygnoides',
                'taxon_id': 8845},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT-LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15MD451M',
                'id': 'ENSG00000106633',
                'perc_id': 84.5494,
                'perc_pos': 91.4163,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'YLDD-----------C-------EFRLQEEDLKKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEDGQWSVTTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGHQLYEKMIGGKYMGEIVRLVLLKLVNENLLFHGEASEKLKTRGSFETRFVSQIESDADDRKQTYNILTSFELLPSLTDCDIVRMACESVSTRAAQMCSAGLAGVINRMRESRGEERLKITVGIDGSVYKLHPSFKDQFHAIVRQLTPGCDITFLQSEEGSGRGAALISAVACKMACLIGR',
                'cigar_line': '4M11DM7D444M',
                'id': 'ENSCABG00000020100',
                'perc_id': 87.7506,
                'perc_pos': 94.8775,
                'protein_id': 'ENSCABP00000027383',
                'species': 'chelonoidis_abingdonii',
                'taxon_id': 106734},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 84.9785,
                'perc_pos': 92.2747,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------VEQILSEFRLQEEDLKKVMRRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVTTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGHQLYEKMIGGKYMGEIVRLVLLKLVNENLLFHGEASEKLKTRGNFETRFISQIESDADDWKQTYNILTSFELLPSLTDCDIVRMACESVSTRAAQMCSAGLAGVINRMRESRGEERLKITVGIDGSVYKLHPSFKDQFHATVKQLAPGCDITFLQSEEGSGRGAALISAVACKMACLIGR',
                'cigar_line': '16D450M',
                'id': 'ENSTMTG00000002903',
                'perc_id': 88,
                'perc_pos': 95.5556,
                'protein_id': 'ENSTMTP00000003963',
                'species': 'terrapene_carolina_triunguis',
                'taxon_id': 2587831},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 86.9099,
                'perc_pos': 93.3476,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESSRKE-KVDQILSEFRLKEEDLKKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTCGTFETRFVSQIESDSGDRKQIYNILTAFELLPSGTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKERFHATVRQLTPGCDITFLQSEEGSGRGAALISAVACKMACMMGP',
                'cigar_line': '14MD451M',
                'id': 'ENSNPEG00000010375',
                'perc_id': 87.0968,
                'perc_pos': 93.5484,
                'protein_id': 'ENSNPEP00000013902',
                'species': 'nothoprocta_perdicaria',
                'taxon_id': 30464},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '---------MAMDVTRSQA-QTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '9D10MD456M',
                'id': 'ENSG00000106633',
                'perc_id': 84.3348,
                'perc_pos': 90.3433,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MRPKCSKHSWLRGRGT---AGRKT--VEQILSEFRLKEEDLRKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDID-----------KASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLRLVDENLLFSGQACEKLKTRGAFETRFVSQVESDSGDGKQIYNILTAFGLLPSGSDCNIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '16M3D5M2D145M11D294M',
                'id': 'ENSCPIG00010012293',
                'perc_id': 85.4348,
                'perc_pos': 91.5217,
                'protein_id': 'ENSCPIP00010015433',
                'species': 'chrysolophus_pictus',
                'taxon_id': 9089},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.1245,
                'perc_pos': 93.133,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------VEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILTSFELLPSRTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '16D450M',
                'id': 'ENSACOG00000002559',
                'perc_id': 90.2222,
                'perc_pos': 96.4444,
                'protein_id': 'ENSACOP00000003650',
                'species': 'amazona_collaria',
                'taxon_id': 241587},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT--LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGEL--VRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15M2D287M2D164M',
                'id': 'ENSG00000106633',
                'perc_id': 59.2275,
                'perc_pos': 63.7339,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MK--PRRIEA-----LHLVEQILSEFRLQEEDLKTVMRRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVSTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVACPCHLSNLHPVLQKELPPGHCGGSCYPREWGAFGASGELDEFLLEYDRVVDETSLNPGQQLLCAALGGRAGGQAARMRLVLLKLVNENLLFRGEASEKLKTRGSFETRFVSQIE------------------------------------------------------------------------------------------------------------------------------',
                'cigar_line': '2M2D6M5D329M126D',
                'id': 'ENSPSIG00000007130',
                'perc_id': 81.8991,
                'perc_pos': 88.1306,
                'protein_id': 'ENSPSIP00000007857',
                'species': 'pelodiscus_sinensis',
                'taxon_id': 13735},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 86.4807,
                'perc_pos': 92.9185,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------VEQILSEFQLQDEDLKKVMRRMQKEMDRGLKLETHEEASVKMLPTYVCSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEERQWKVKTKHQTYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVNENLLFNGEASEKLKTRGSFETRFISQIESDPGDHKQIYNILTSFGLLPSVTDCDIVRMACESVSTRAAQMCSAGLAGVINRMRDSRSEETLKITVGVDGSVYKLHPSFKDRFHTTVRQLTPGCDITFLQSEEGSGRGAALISAVACKMACMIGQ',
                'cigar_line': '16D450M',
                'id': 'ENSVKKG00000015430',
                'perc_id': 89.5556,
                'perc_pos': 96.2222,
                'protein_id': 'ENSVKKP00000023254',
                'species': 'varanus_komodoensis',
                'taxon_id': 61221},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 81.5451,
                'perc_pos': 86.9099,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------VDQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFVSQIESDSGDRKQIYNILTAFELLPSGTDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDIXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                'cigar_line': '16D450M',
                'id': 'ENSSCUG00000014547',
                'perc_id': 84.4444,
                'perc_pos': 90,
                'protein_id': 'ENSSCUP00000019801',
                'species': 'struthio_camelus_australis',
                'taxon_id': 441894},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT---LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '15M3D451M',
                'id': 'ENSG00000106633',
                'perc_id': 85.1931,
                'perc_pos': 92.7039,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLESKQS--------GCFGVEQILSEFRLQEEDLKKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEDGQWSVTTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMENVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGHQLYEKMIGGKYMGEIVRLVLLKMVNENLLFHGEASEKLKTRGSFETRFISQIESDADDRKQTYNILTSFELLPSLTDCDIVRMACESVSTRAAHMCSAGLAGVINRMRESRGEERLKITVGIDGSVYKLHPSFKDQFHVIVRQLTPGCDITFLQSEEGSGRGAALISAVACKMACLIGR',
                'cigar_line': '7M8D454M',
                'id': 'ENSGAGG00000013623',
                'perc_id': 86.1171,
                'perc_pos': 93.7093,
                'protein_id': 'ENSGAGP00000018402',
                'species': 'gopherus_agassizii',
                'taxon_id': 38772},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-------------------------------------------------------------------------------------------------MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '97D466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.3391,
                'perc_pos': 93.5622,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLPLRLRAGTGAGTASLPEGTGTASPGPLGSSDEIRQRKWSIREGRSEGRGTEQRGARRTRSRPGQGTAPGPAPRWGHSGRGGHGSARSPPQPAPAPMLDHRARMESSRKE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '111MD451M',
                'id': 'ENSJHYG00000007973',
                'perc_id': 72.4199,
                'perc_pos': 77.5801,
                'protein_id': 'ENSJHYP00000010150',
                'species': 'junco_hyemalis',
                'taxon_id': 40217},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '---------------------------------------------------------------------MAMDVTRSQA--QTALT--------------------------------------------LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '69D10M2D5M44D451M',
                'id': 'ENSG00000106633',
                'perc_id': 87.1245,
                'perc_pos': 93.7768,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MARSTPCWEWLWDSSGWEVPGHCWNGDGFYTAIQTIQLVDRDGRSPVPTMAPRDTGADRGILQAAPEGALVPHDSAMDSLLSRRITEQQDKSFRGVHVKTGLGEGKLGYFLWFRPLASQIPGPWLTLCCVQVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '581M',
                'id': 'ENSSCAG00000015769',
                'perc_id': 69.8795,
                'perc_pos': 75.2151,
                'protein_id': 'ENSSCAP00000021931',
                'species': 'serinus_canaria',
                'taxon_id': 9135},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-----------------------------------------------------------------------------------------------------MAMDVTRSQA---QTALT-------LVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '101D10M3D5M7D451M',
                'id': 'ENSG00000106633',
                'perc_id': 87.7682,
                'perc_pos': 93.7768,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MGGASTVGVAPSFGRGLKCGRGLRCGAGPMGQPHPTEWAPYGAAPSVPRPSTHDPEASPSCGAGTALWGQRRGDILGGHAGWAPRGAPPGTVGPATAAFSPLSRSRGRLSPWDRWRAGGGDQDTEWLVEQILSEFRLKEEDLRKVMHRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLRLVDENLLFSGQACEKLKTRGAFETRFVSQVESDSGDRKQIYNILTAFGLLPSGPDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRESRSQETLKITVGVDGSVYKLHPSFKDRFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '577M',
                'id': 'ENSNMEG00000001829',
                'perc_id': 70.8839,
                'perc_pos': 75.7366,
                'protein_id': 'ENSNMEP00000001436',
                'species': 'numida_meleagris',
                'taxon_id': 8996},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 86.6953,
                'perc_pos': 92.9185,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESSRKE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVND---TMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSGFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD191M3D257M',
                'id': 'ENSLCOG00000004279',
                'perc_id': 87.4459,
                'perc_pos': 93.7229,
                'protein_id': 'ENSLCOP00000005771',
                'species': 'lepidothrix_coronata',
                'taxon_id': 321398},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '466M',
                'id': 'ENSG00000106633',
                'perc_id': 83.4764,
                'perc_pos': 93.133,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'ILGSSCKLES------VEEILSEFQLREEDLKKVMRRMQKEMDRGLKLETHEKASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGDDEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVELLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMENVELVEGNEGRMCVNTEWGAFGESGELDEFLLEYDRVVDETSFNPGQQLFEKIIGGKYIGEIVRLVLLKLVNENLLFNGDASEKLKTRGSFESRFISQIESDAGDCKQIYNILTSFELLPSAMDCDIVRMVCESVSTRAAQMCSAGLAGVINRMRDSRNEERLNITVGVDGSVYKHHPSFKKRFHASVRQLTPGCDISFLQSEEGSGRGAALISAVAYKMACMIGQ',
                'cigar_line': '10M6D450M',
                'id': 'ENSPTXG00000010531',
                'perc_id': 84.5652,
                'perc_pos': 94.3478,
                'protein_id': 'ENSPTXP00000015268',
                'species': 'pseudonaja_textilis',
                'taxon_id': 8673},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLH--------------------------------PSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '417M32D49M',
                'id': 'ENSG00000106633',
                'perc_id': 87.5536,
                'perc_pos': 93.5622,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDHRARMESSRKE-KVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPRWGSPGPDGVPVLSPYPPSPDPICDPLFPRLPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '14MD483M',
                'id': 'ENSLSDG00000008020',
                'perc_id': 82.0926,
                'perc_pos': 87.7264,
                'protein_id': 'ENSLSDP00000010987',
                'species': 'lonchura_striata_domestica',
                'taxon_id': 299123},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-------------MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '13D466M',
                'id': 'ENSG00000106633',
                'perc_id': 87.1245,
                'perc_pos': 92.9185,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'QLDDRAGRTSVPA---------------LVEQILSEFRLKEEDLKKVMYRMQKEMDRGLKLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWKVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHRCEVGMIVGTGCNACYMEEMHNVELVEGDEGRMCVNTEWGAFGASGELDEFLLEYDRVVDETSLNPGQQLYEKIIGGKYMGEIVRLVLLKLVDENLLFNGEASEKLKTRGTFETRFMSQIESDSDDRKQIYNILSAFELLPSRTDCEIVRRVCESVSTRAAQMCSAGLAGVINRMRESRSQDTLKITVGVDGSVYKLHPSFKDHFHATVRQLTPGCDITFIQSEEGSGRGAALISAVACKMACMMGQ',
                'cigar_line': '13M15D451M',
                'id': 'ENSEGOG00005018100',
                'perc_id': 87.5,
                'perc_pos': 93.319,
                'protein_id': 'ENSEGOP00005022251',
                'species': 'erythrura_gouldiae',
                'taxon_id': 44316},
     'taxonomy_level': 'Amniota',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTL----VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '16M4D450M',
                'id': 'ENSG00000106633',
                'perc_id': 77.4678,
                'perc_pos': 87.9828,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '------------MEKFEQNEVDQILSEFHLQEEDLHVLMCRMQAEMERGLHLETNEEASVKMLPTYVRSTPDGSEVGDFLALDLGGTNFRVMLVKVGEDLEGQWKVETKHKMYSIPEDAMTGTAEMLFDYIAECISDYLDQQNMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHHCEVGLIVGTGCNACYMEEMSNVELVEGEEGRMCVNTEWGAFGDTGELEDFRLEYDRVVDEASLNPGQQLYEKMIGGKYMGELVRLVLIKMVNENLIFGGESSEKLKTRGAFDTQFVSQIEADTSDFKQTLNILRTLGVQATIGDCHAVRLACESVSTRAAVMCSSGLAAILNRMHQSRRGELSRITVGVDGSVYKLHPSFKDKFHATVHKLTSGCEITFIQSEEGSGRGAALISAVAYKMAVLIGH',
                'cigar_line': '12D458M',
                'id': 'ENSXETG00000018141',
                'perc_id': 78.821,
                'perc_pos': 89.5197,
                'protein_id': 'ENSXETP00000050089',
                'species': 'xenopus_tropicalis',
                'taxon_id': 8364},
     'taxonomy_level': 'Tetrapoda',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVE---SDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '340M3D121MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 69.3133,
                'perc_pos': 77.2532,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '---------------------------------------------------------------------TEVGDFLALDLGGTNFRVMLVKVGEDEKGKWKVETKHQMYCIPGDTMTGTAEMLFDYIAQCISDFLDKHNMKEKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIRRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEIRNVDLVEGEEGRMCVNTEWGAFGDSGELEEFRLEYDRMVDEMSLNPGQQLFEKIISGKYMGELVRLVLLKLVNENLLFNGEASGILKTRGSFETRFISQIERTDSDSGDLKQTYNILTTLGLLPSKLDCEIVRLVSESVSTRAALVCAAGLAGVINRMRENRSQESLKITVGVDGSVYKLHPLFKHKFHAMVQELTPRCNITFIQSEEGSGRGAALVSAVARKMASMLCH-',
                'cigar_line': '69D400MD',
                'id': 'ENSLACG00000012891',
                'perc_id': 80.75,
                'perc_pos': 90,
                'protein_id': 'ENSLACP00000014643',
                'species': 'latimeria_chalumnae',
                'taxon_id': 7897},
     'taxonomy_level': 'Sarcopterygii',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 90.7725,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSYTGQMGKM--PCSLSSVLETALMVEQILSEFRLKKEQLKEVMKRMMREMDRGLRVETHQESSVKMLPTYVYSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERVWKVETKHQMYSIPEDAMTGTAEMLFDYIAECISDFLDRHHIKHRKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGANGELEEFRLEYDRVVDETSLNPGQQLYEKLISGKYMGELVRLVLLKLVNEELLFNGEASDLLKTRGSFETRYVSQIESDSGDRKQIYNILSTLGVLPSEMDCDIVRLACESVSTRAAHMCGAGLAAVINRMRERRSQEVLKITVGVDGSVYKLHPCFQDRFHKVVRELTPHSDITFIQSEEGSGRGAALISAVACKMAACILTQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSSSAG00000073606',
                'perc_id': 79.2887,
                'perc_pos': 88.4937,
                'protein_id': 'ENSSSAP00000098904',
                'species': 'salmo_salar',
                'taxon_id': 8030},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '10M5D5MDMD450M',
                'id': 'ENSG00000106633',
                'perc_id': 80.6867,
                'perc_pos': 90.3433,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-----MKL--DNKCTSLFQKILQVDQILSEFRLKKQELQEVMRRMQSEMERGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHQMYSIPEDAMTGTAEMLFDYIAECISDFLDKHNMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDTGELEDFRLEYDRVVDETSINPGQQLYEKIISGKYMGELVRLVLLKLVNENLLFGGEASDILKMRGSFETKLVSQIESDTGDRKQIYNILTTIGLMPTELECDIVRLACESVSTRAAHMCGAGLAGVINHMRERRKQEMLKITVGVDGSVYKLHPSFQHKFQKAVQDLTPHCDITFIQSEEGSGRGAALISAVACKMACMLNQ',
                'cigar_line': '5D3M2D463M',
                'id': 'ENSECRG00000000329',
                'perc_id': 80.6867,
                'perc_pos': 90.3433,
                'protein_id': 'ENSECRP00000000558',
                'species': 'erpetoichthys_calabaricus',
                'taxon_id': 27687},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 82.618,
                'perc_pos': 90.1288,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCPAAVRKQMMRM--PSAYQSVLEKFLVVDQILSEFLLTKEELKDVMRRMQREMDRGLRLETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIAECISDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMHTVELVEGDEGRMCVNTEWGAFGENGELEDFRLEYDRVVDESSLNPGHQLYEKLIGGKYMGELVRLVLMKLVNEGLLFNGEASDMLRTRGSFETRFVSQIESDTGDRKQIYNILSSLGVLPSELDCDIVHLACESVSTRAAHMCAAGLAGVINLMRERRYQDELKITVGVDGSVYKLHPRFKERFHKVVRELTPYCEISFIQSEEGSGRGAALISAVACKKAACLITP',
                'cigar_line': '14M2D464M',
                'id': 'ENSPNAG00000018873',
                'perc_id': 80.5439,
                'perc_pos': 87.8661,
                'protein_id': 'ENSPNAP00000013000',
                'species': 'pygocentrus_nattereri',
                'taxon_id': 42514},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '----------------------------------------------------------------------------------------------------MA--------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '100D2M8D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.0429,
                'perc_pos': 90.1288,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MKTLQNIAASLSFCYLGTLLVNLRLQPKRKKTGMRKPQGRDKTYHCSAAPHVTTAPRDLGRPSESASKTFGFEHKSAAYTHTHTRSGSFNSPSLLKTCTSNVCYSRCRNLLQEVKV--KNRSVWGASTGTKVDQILFEFRLNKEDLKEIMKRMQREMERGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDEASINPGQQLYEKLISGKYMGELVRLVMMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCENVSTRSAHMCAAGLAGVINLMRERRSEEAMKITVGIDGSVYKLHPCFRDRFHKVVRDLTPHSDITFIQSEEGSGRGAALISAVACKMATNLFAD',
                'cigar_line': '116M2D464M',
                'id': 'ENSPNYG00000007097',
                'perc_id': 64.3103,
                'perc_pos': 72.4138,
                'protein_id': 'ENSPNYP00000009382',
                'species': 'pundamilia_nyererei',
                'taxon_id': 303518},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.7597,
                'perc_pos': 90.5579,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCPASLRKQMLRM--PSAYQSVLEKVLMVDQILSEFLMTKEDLKEVMRRMQKEMNRGLRLETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIAECISDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMCTVELVEGDEGRMCVNTEWGAFGDCGELEDFRLEYDRVVDESSLNPGRQLYEKLIGGKYMGELVRLVLVKLVNEDLLFNGEASEMLKTKGSFETRFVSQIESDTGDRKQIYNILSSFGVLPSELDCDIVRLACESVSTRAANMCAAGLAGVIDLMRERRSQEELKITVGVDGSVYKLHPHFQERFHKAVWELTPKCEITFVQSEEGSGRGAALISAVACKMAACMISP',
                'cigar_line': '14M2D464M',
                'id': 'ENSAMXG00000034250',
                'perc_id': 79.7071,
                'perc_pos': 88.2845,
                'protein_id': 'ENSAMXP00000035498',
                'species': 'astyanax_mexicanus',
                'taxon_id': 7994},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA---MDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M3D459MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 78.7554,
                'perc_pos': 87.9828,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--SCEDT------SAIKE-VDQILSELNLEKADLEEVMRRLQREMERGLRLETHQEASVKMLPTYVRSSPEGSEVGDFLALDLGGTNFRVMLVKVGEDEETGWKLETKQQMYSIPEDAMTGTAEMLFDYIAERISDFLAKHQLKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYENRNCEVGMIVGTGCNACYMEEMNMVELVEGDEGRMCVNTEWGAFGDNGELEEFRLEYDRKADEMSLNPGQQLFEKIISGKYMGELVRLVLLKLVNEDLLFHGEASEQLRTKGSFETRFVSQIESDCGDRKQIYNVLTTLGLMPSELDCDIVRLVCERVSTRSAHMCAAGLAGIINRMRESRCQELLEITVGIDGSVYKLHPSFQEKFHAVVQELTPGCDITFIQSEEASGRGAALISAVASKMAAT----',
                'cigar_line': '2D5M6D5MD447M4D',
                'id': 'ENSPKIG00000019104',
                'perc_id': 80.3063,
                'perc_pos': 89.7155,
                'protein_id': 'ENSPKIP00000000446',
                'species': 'paramormyrops_kingsleyae',
                'taxon_id': 1676925},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 88.8412,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTSARRQ--GM--LSDFESVLERILMVEQILSEFLLSKEDLEEVMRRMRREMERGLRVETHNEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDTMTGTAEMLFDYIAGCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHSCEVGMIVGTGCNACYMEEMHKVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGHQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGEASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSTLGILPSELDCDVVRLVCESVSTRAAHMCGAGLAGVINLMRERRCQEQLKITVGVDGSVYKLHPHFKERFHKLVWEINPHCEITFIQSEEGSGRGAALISAVACKMATCMLTP',
                'cigar_line': '10M2D2M2D464M',
                'id': 'ENSSRHG00000005457',
                'perc_id': 79.6218,
                'perc_pos': 86.9748,
                'protein_id': 'ENSSRHP00000009584',
                'species': 'sinocyclocheilus_rhinocerous',
                'taxon_id': 307959},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L--VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDM2D445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.8283,
                'perc_pos': 89.0558,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTAARQQRLRM--PSSYKSMLETI-HMVDQILSEFQLSKEELKEVMRRMQREMNRGLRVETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVVVGEDEERGWKIETKHRMYSIPEDAMTGTAEMLFDYISECISDFLDKHNIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDIVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNVCYMEEMHSVELVEGEEGRMCVNTEWGAFGGNGELEDFRLEYDRVVDEASLNPGKQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASDMLKTRGSFETRFVSQIESDTGDRKQIYNILSSLGVLPSELDCDIVRLACESVSTRAAQICGAGLAGVINVMRERRCLDELKITVGVDGSVYKLHPWFKERFHKVVWDMTPNCDITFIQSEEGSGRGAALISAVASKMAACTIEP',
                'cigar_line': '14M2D11MD453M',
                'id': 'ENSIPUG00000004068',
                'perc_id': 77.8243,
                'perc_pos': 86.8201,
                'protein_id': 'ENSIPUP00000005853',
                'species': 'ictalurus_punctatus',
                'taxon_id': 7998},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPS-----FKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD403M5D42MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 89.485,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTLARTQ--RI--PSDFESVLERIIMVEQILSEFLLSKEDLEEVMRRMRREMERGLRVETHNEASIKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIAGCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHSCEVGMIVGTGCNACYMEEMRKVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGHQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGDASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSTLGILPSELDCDIVRLVCKSVSTRAAHMCGAGLAGVINLMRERRCQEQLKITVGVDGSVYKLHPQKQRWSFKERFHKLVWEMNPDCEITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '10M2D2M2D469M',
                'id': 'ENSCCRG00020019251',
                'perc_id': 78.5863,
                'perc_pos': 86.6944,
                'protein_id': 'ENSCCRP00020043636',
                'species': 'cyprinus_carpio_hebaored',
                'taxon_id': 7962},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA-------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M7D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 88.8412,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCISSLGINQNVTM--PCSYSSVVERIQMVEQILSEFRLSKEELKEVMKRMQREMDRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVIVGEDEERSWKVLTKNEMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGDEGRMCVNTEWGAFGENGELEEFRLEYDRVVDEMSINPGHQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEATELLKTRGSFETRFVSQVESDTGDRKQIYNILSTFGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINLMRERRSQEALKITVGVDGSVYKLHPCFRDRFHQIVWDLTPHCEITFIQSEEGSGRGAALISAVACKMAASMLPQ',
                'cigar_line': '15M2D464M',
                'id': 'ENSENLG00000019084',
                'perc_id': 79.1232,
                'perc_pos': 86.4301,
                'protein_id': 'ENSENLP00000044850',
                'species': 'echeneis_naucrates',
                'taxon_id': 173247},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTL-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '16MD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.6137,
                'perc_pos': 89.6996,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '---------------MQVDQILSEFRLNKEDLKEIMKRMRREMERGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDSIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDEASINPGQQLYEKLISGKYMGELVRLVMMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCSAGLAGVINLMRERRSEEAMKITVGIDGSVYKLHPCFRDRFHKVVRDLTPHSDITFIQSEEGSGRGAALISAVACKMATNLFAD',
                'cigar_line': '15D453M',
                'id': 'ENSNBRG00000020875',
                'perc_id': 81.8985,
                'perc_pos': 92.2737,
                'protein_id': 'ENSNBRP00000027357',
                'species': 'neolamprologus_brichardi',
                'taxon_id': 32507},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA----MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M4D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.6137,
                'perc_pos': 90.5579,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLCVRSVQMVKM--PCSYSPAVDKILMAKQILSEFRLKNEELKEVMKRMQREMDRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSWKVETKNQMYSIPEDAMTGTAQMLFDYIAECMSNFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEQGRMCVNTEWGAFGNNGELEEFRLEYDRVVDETSINPGQQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASELLKTGGSLETRYVSQMESDTGDRKQIYNVLSSLGVLPSELDCDIVRLVCESVSTRSAHMCAAGLAGVINLIRERRSEEALKITVGIDGSVYKLHPCFRDRFHKIVRDLTPHCEITFIQSEEGSGRGAALISAVACKMAASILTQ',
                'cigar_line': '12M2D464M',
                'id': 'ENSGACG00000004420',
                'perc_id': 77.9412,
                'perc_pos': 88.6555,
                'protein_id': 'ENSGACP00000005858',
                'species': 'gasterosteus_aculeatus',
                'taxon_id': 69293},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA------QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M6D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.9013,
                'perc_pos': 91.4163,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSHIDQMVKVK-VPCGYSPVVDKILMVEQILSEFRLKKEELKEVMKRMQREMDRGLSIETHEESSVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGIWKIETNNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDIEMDVVAMVNDTVATMISCYYEDRRCEVGIIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDETSINPGQQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASEQLKTRGSFETRYVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRAAHMCGAGLAGVINLMRERRSQEDLKITVGVDGSVYKLHPCFRDRFHKVVRDLTPRCEITFIQSEEGSGRGAALISAVACKMAACLLTQ',
                'cigar_line': '15MD465M',
                'id': 'ENSSFAG00005009175',
                'perc_id': 78.5417,
                'perc_pos': 88.75,
                'protein_id': 'ENSSFAP00005017657',
                'species': 'salarias_fasciatus',
                'taxon_id': 181472},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.5451,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSYMGQM-KM--SHGLSHVLETAIMVEQILSEFRLKKEQLKEVMKRMMSEMDRGLRVETHQEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHQMYSIPEDAMTGTAEMLFDYIAECISDFLNIQHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGANGELEEFRLEYDRVVDETSLNPGQQLYEKLISGKYMGELVRLVLVKLVNEELLFKGEASDLLKTRGAFETRYVSQIESDSGDRKQIYNILSTLGVLPSELDCDIVRLACESVSTRAAHMCGAGLAGVINRMRERRSQEALKITVGVDGSVYKLHPCFQHRFHNVVRELTPHCDITFIQSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '11MD2M2D464M',
                'id': 'ENSELUG00000003857',
                'perc_id': 79.6646,
                'perc_pos': 87.8407,
                'protein_id': 'ENSELUP00000002509',
                'species': 'esox_lucius',
                'taxon_id': 8010},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTSARRQ--RM--PSDFESVLERILMVDQILSEFLLSKEDLEEVMRRIRREMERGLRVETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIASCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRKVELVEGEEGKMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGRQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGEASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSSLGILPSELDCDIVRLVCESVSTRAAHMCGAGLAGVINLMRERRCQEQLKITVGVDGSVYKLHPHFKERFHKLVWEMTPHCEITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '10M2D2M2D464M',
                'id': 'ENSSGRG00000055500',
                'perc_id': 79.4118,
                'perc_pos': 88.0252,
                'protein_id': 'ENSSGRP00000112926',
                'species': 'sinocyclocheilus_grahami',
                'taxon_id': 75366},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-----------------------------------------------------------------------------MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '77D2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.8283,
                'perc_pos': 90.1288,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MWAFVYVCTSLARWGEVGKGRAIGFGVSSPLHLRIKAAEDCSVVLTLHSLCTHTLGGLTLTKLLKTHASEFFVKPVKMPCVSVQLDQMVKL--PSSYDSVVDKVIAVDQILSEFRLNKEDLKEIMKRMQREMERGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDEASINPGQQLYEKLISGKYMGELVRLVMMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCATGLAGVINLMRERRSEEAMKITVGIDGSVYKLHPCFRDRFHKVVRDLTPHSDITFIQSEEGSGRGAALISAVACKMATNLFAD',
                'cigar_line': '91M2D464M',
                'id': 'ENSACLG00000009790',
                'perc_id': 67.027,
                'perc_pos': 75.6757,
                'protein_id': 'ENSACLP00000014373',
                'species': 'astatotilapia_calliptera',
                'taxon_id': 8154},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-------------MA------------MDVTRSQA---------------------QTALT-----------L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '13D2M12D8M21D5M11DMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.2575,
                'perc_pos': 89.485,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'SSVWSSQISKVTSLPQQQEAACGLDWRRR--RQ--VWVFFYKNRRKQSFCCLSYRESGREKIMNETPFPLQSINVDQILSEFLLSKEDLEEVMRRIRREMERGLRVETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIASCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRKVELLEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGRQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGEASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSSLGILPSELDCDIVRLVCESVSTRAAHMCGAGLTGVINLMTERRCQEELKITVGVDGSVYKLHPHFKERFHKLVWEMTPHCEITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '29M2D2M2D490M',
                'id': 'ENSSRHG00000013620',
                'perc_id': 71.785,
                'perc_pos': 80.0384,
                'protein_id': 'ENSSRHP00000026048',
                'species': 'sinocyclocheilus_rhinocerous',
                'taxon_id': 307959},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '----MA------MDVTRSQA------QTALT-L---VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '4D2M6D8M6D5MDM3D445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 90.5579,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'AFQSLQTIKSTI----RL--ICNRLSPALNPFLPPQVEQILSEFRLKKEQLKEVMKRMMREMDRGLRVETHQESSVKMLPTYVYSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERVWKVETKHQMYSIPEDAMTGTAEMLFDYIAECISDFLDRHHIKHRKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGANGELEEFRLEYDRVVDETSLNPGQQLYEKLISGKYMGELVRLVLLKLVNEELLFNGEASDLLKTRGSFETRYVSQIESDSGDRKQIYNILSTLGVLPSEMDCDIVRLACESVSTRAAHMCGAGLAAVINRMRERRSQEVLKITVGVDGSVYKLHPCFQDRFHKVVRELTPHCDITFIQSEEGSGRGAALISAVACKMAACILTQ',
                'cigar_line': '12M4D2M2D467M',
                'id': 'ENSSTUG00000026872',
                'perc_id': 78.7942,
                'perc_pos': 87.7339,
                'protein_id': 'ENSSTUP00000064455',
                'species': 'salmo_trutta',
                'taxon_id': 8032},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.9013,
                'perc_pos': 90.3433,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLCVSSYMSQMGKM--PCSLSSVLETVLMVEQILSEFRLKKEQLKEVMKRMMREMDRGLRVETHQEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHQMYSIPEDAMTGTAEMLFDYIAECISDFLNRQHIKHKKLPLGFTFSFPVRHENIDKGILLNWTKGFKASGAEGNNVVELLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGANGELEEFRLEYDRVVDETSLNPGQQLYEKLISGKYMGELVRLVLLKLVNEELLFNGEASDLLKTRGSFETRYVSQIESDSGDRKQIYNILSTLGVLPSELDCDIVRLSCESVSTRAAHMCGAGLAGVINRMRERRSQAVLKITVGIDGSVYKLHPCFQDRFHKVVRELTPHCDITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '14M2D464M',
                'id': 'ENSHHUG00000005707',
                'perc_id': 78.8703,
                'perc_pos': 88.0753,
                'protein_id': 'ENSHHUP00000009513',
                'species': 'hucho_hucho',
                'taxon_id': 62062},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA-------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M7D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 90.1288,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSQLSNQKGKM--PCSYSSVVEKILMVEQILSEFRLNKEELKEVMKRMQREMDRGLHLDTHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVIVGENEERSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGEFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDETSVNPGQQLYEKVISGKYMGELVRLVLMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINLMRERRSEEALKITVGVDGSVYKLHPCFRDRFHKIVRDLTPHCEITFIQSEEGSGRGAALISAVACKMAASMLTQ',
                'cigar_line': '15M2D464M',
                'id': 'ENSSLDG00000003477',
                'perc_id': 79.1232,
                'perc_pos': 87.6827,
                'protein_id': 'ENSSLDP00000004420',
                'species': 'seriola_lalandi_dorsalis',
                'taxon_id': 1841481},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 78.97,
                'perc_pos': 89.2704,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVISHLDQMVKM--PSNYSSVLDRLLMVEQILSEFRLNKEDLKEIKNRMQCEMNRGLRVETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEDCTWKIETKNQMYSIPEDAMTGTAEMCGCTLSECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDESSINPGQQLYEKLISGKYMGELVRLVLIKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCETVSTRSAHVCGAGLAGVINLMQERRNQDCLKITVGVDGSVYKLHPFFRDRFHKMVRDLTPHCEITFLQSEEGSGRGAALISAVACKMAACIRTQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSATEG00000021372',
                'perc_id': 76.9874,
                'perc_pos': 87.0293,
                'protein_id': 'ENSATEP00000030973',
                'species': 'anabas_testudineus',
                'taxon_id': 64144},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEML-FDYI----SECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD107MD4M4D334MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.9013,
                'perc_pos': 90.1288,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCPASLRKQMLRM--PSAYQSVLEKVLMVDQILSEFLMTKEDLKEVMRRMQKEMNRGLRLETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMVTFIFILKISTNCISDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMCTVELVEGDEGRMCVNTEWGAFGDCGELEDFRLEYDRVVDESSLNPGRQLYEKLIGGKYMGELVRLVLVKLVNEDLLFNGEASEMLKTKGSFETRFVSQIESDTGDRKQIYNILSSFGVLPSELDCDIVRLACESVSTRAANMCAAGLAGVIDLMRERRSQEELKITVGVDGSVYKLHPHFQERFHKAVWELTPKCEITFVQSEEGSGRGAALISAVACKMAACMISP',
                'cigar_line': '14M2D469M',
                'id': 'ENSAMXG00005007433',
                'perc_id': 78.0538,
                'perc_pos': 86.9565,
                'protein_id': 'ENSAMXP00005014392',
                'species': 'astyanax_mexicanus_pachon',
                'taxon_id': 7994},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.6867,
                'perc_pos': 89.6996,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVTSHLGQMVKM--PCSYSSVVDNIFMVEQILSEFRLNKEDLKEVMKRMQREMDRGLRLETHEEASVKMLPTYVCSTPQGSEVGDFLALDLGGTNFRVMLVKVGADEERSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGNNGELEEFRLEYDRVVDETSINPGRQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASELLKTRGSFETRYVSQIESDAGDRKQIYNILFSLGVLPSDLDCDIVRLVCESVSTRSAHMCGAGLAGVLNLMRERRSQEALNITVGVDGSVYKLHPCFRERFHKIVRDLTPHCEITFIQSEEGSGRGAALISAVACKMAACMLTH',
                'cigar_line': '14M2D464M',
                'id': 'ENSLBEG00000023947',
                'perc_id': 78.6611,
                'perc_pos': 87.4477,
                'protein_id': 'ENSLBEP00000031751',
                'species': 'labrus_bergylta',
                'taxon_id': 56723},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--MA-----MDVTRSQA------------------------------------------------QTALT---------------------L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2D2M5D8M48D5M21DMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.9013,
                'perc_pos': 90.3433,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'GGGVCSLRTDQPVCVCVCVCVCVCVCVCVCVCVCVCFRFPMARWGEFGKGLLAFASGVVGPLHLSIKTAEVLIQCCSRFTDSPLTCSSLPSLQVEQILSEFRLKKEELKEVMKRMQREMDRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEMSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGNNGELEEFRLEYDRVVDETSINPGQQLYEKLISGKYMGELVRLVLIKLVNEDLLFNGEASELLKTRGSFETRYVSQMESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSSHMCGAGLAAVINRMRERRSQEALKITVGVDGSVYKMHPCFRDRFHQIVSDLTPHCDITFIQSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '544M',
                'id': 'ENSCGOG00000018589',
                'perc_id': 69.3015,
                'perc_pos': 77.3897,
                'protein_id': 'ENSCGOP00000041763',
                'species': 'cottoperca_gobio',
                'taxon_id': 56716},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '------------------------MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '24D2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLLTHIQTLANQRSSYNCLKRLAKMPCLSSARRQ--RT--PSDFESVLERILMVDQILSEFLLSKEDLEEVMRRIRREMERGLRVETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIASCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRKVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGHQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGDASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSSLGILPSELDCDIVRLVCESVSTRAAHMCGAGLAGVINLMRERRCQEELKITVGVDGSVYKLHPHFKERFHKLVWEMTPHCEITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '34M2D2M2D464M',
                'id': 'ENSCCRG00020043480',
                'perc_id': 75.6,
                'perc_pos': 83.8,
                'protein_id': 'ENSCCRP00020095444',
                'species': 'cyprinus_carpio_hebaored',
                'taxon_id': 7962},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.8283,
                'perc_pos': 89.2704,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCITSQLDQMMKL--PGSYSDVVEKICMVEQILSEFRLNKEELEEVMKRMQHEMNRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDSGELEEFRLEYDRVVDETSINPGHQLYEKIISGKYMGELARLVMMKLVNENLLFNGEASEQLKTRGGFETRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINQMQERRGQDTMKITVGVDGSVYKLHPYFRDRFHQVVRELTPHSEITFLQSEEGSGRGAALISAVACKMASWV---',
                'cigar_line': '14M2D461M3D',
                'id': 'ENSPFOG00000014781',
                'perc_id': 78.3158,
                'perc_pos': 87.5789,
                'protein_id': 'ENSPFOP00000014846',
                'species': 'poecilia_formosa',
                'taxon_id': 48698},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 90.7725,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSYTGQMGKM--PCSLSSVLETALMVEQILSEFRLKKEQLKEVMKRMMREMDRGLRVETHKESSVKMLPTYVYSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHQMYSIPEDAMTGTAEMLFDYIAECISDFLDRHHIKHRKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGANGELEEFRLEYDRVVDETSLNTGQQLYEKLISGKYMGELVRLVLLKLVNEELLFNGEASDLLKTRGSFETRYVSQIESDSGDRKQIYNILSTLGMLPSEMDCDIVRLACESVSTRSAHMCGAGLAAVINRMRERRSQEVLKITVGVDGSVYKLHPCFQDRFHKVVRELTPHCDITFIQSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSHHUG00000051102',
                'perc_id': 79.2887,
                'perc_pos': 88.4937,
                'protein_id': 'ENSHHUP00000088445',
                'species': 'hucho_hucho',
                'taxon_id': 62062},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.8283,
                'perc_pos': 88.8412,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVVSEFDQMVKM--PSDYGSVLDRVLMVEQILSEFQLNKEDLTEIMTRMQCEMGRGLRVETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEECTWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDLDMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDESSINPGHQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGDASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDMVRLVCETVSTRSAHLCGAGLAAIINLMRERRSQDALKITVGVDGSVYKLHPHFCDRFHKTVRDLTPRCNITFIRSEEGSGRGAALISAVACKMAAGMLTQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSBSLG00000001762',
                'perc_id': 77.8243,
                'perc_pos': 86.6109,
                'protein_id': 'ENSBSLP00000003209',
                'species': 'betta_splendens',
                'taxon_id': 158456},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.6867,
                'perc_pos': 89.0558,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSTHLDTMGKL--PSSFKAVVKEILMVEQILSEFRLNKEELKEVMKRMQREMDRGLRLESHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGKDEERGFKVETTNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDKGELEEFRLEYDRVVDEFSINPGQQLFEKLISGKYMGELVRLVLMKLVKENLLFNGEASEQLRTRGSFETRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAQMCGAGLAGVINRMRERRCEEELKITVGVDGSVYKLHPWFRDRFHKVVWDLSPHCEITFIQSEEGSGRGVALISAVACKMAACTTAP',
                'cigar_line': '14M2D464M',
                'id': 'ENSORLG00000002010',
                'perc_id': 78.6611,
                'perc_pos': 86.8201,
                'protein_id': 'ENSORLP00000002505',
                'species': 'oryzias_latipes',
                'taxon_id': 8090},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.4721,
                'perc_pos': 89.0558,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCASSPLDQKATM--PCSFSSVLDEILMVEQILSEFRLKKEELKEIMQRMQCEMDRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGADEERSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHMKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGGNGELEEFRLEYDRVVDETSINPGQQLYEKVISGKYMGELVRLVLMKLVNEDLLFDGEASELLKTRGSFEARYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLACVINIMRERRGQEALKITVGVDGSVYKLHPCFRDRFHKIVRDLTPHCDITFIQSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSSMAG00000007420',
                'perc_id': 78.4519,
                'perc_pos': 86.8201,
                'protein_id': 'ENSSMAP00000012090',
                'species': 'scophthalmus_maximus',
                'taxon_id': 52904},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M6D8M5D5MDMD450M',
                'id': 'ENSG00000106633',
                'perc_id': 50.6438,
                'perc_pos': 55.5794,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTSARRQ--RI--PSDFESVLEKILMVDQILSEFVLSKEELEEVMRRMRREMERGLRVETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIAGCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRKVELVEGEEGRMCVNTEWGAFGDHSELEDFRLEYDRVIDETSLNPGHQL---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------',
                'cigar_line': '10M2D2M2D286M177D',
                'id': 'ENSDARG00000068006',
                'perc_id': 79.1946,
                'perc_pos': 86.9128,
                'protein_id': 'ENSDARP00000079994',
                'species': 'danio_rerio',
                'taxon_id': 7955},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '461MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 76.3949,
                'perc_pos': 85.8369,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-------------------------------EEVMKRIQHEMNRGLRLETHQEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGEFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEKGRMCVNTEWGAFGDSGELEEFRLEYDRVVDETSINPGHQLYEKIISGKYMGELARLVMMKLVNENLLFNGEASEQLKIRGSFETRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINQMQEHRGQDTMKITVGVDGSVYKLHPYFRDRFHQVVRELTPHSEITFLQSEEGSGRGAALISAVACKMASWI---',
                'cigar_line': '31D433M3D',
                'id': 'ENSPREG00000010287',
                'perc_id': 82.2171,
                'perc_pos': 92.3788,
                'protein_id': 'ENSPREP00000015264',
                'species': 'poecilia_reticulata',
                'taxon_id': 8081},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '461MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 78.5408,
                'perc_pos': 85.4077,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '----------------------------------MKRMQHEMDRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSWKVETTNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDIEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDESSINPGQQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVHLVCESVSTRSAHMCGAGLAGVINRMRERRCEESLKITVGVDGSVYKLHPCFRDRFHKVVRDLTPHCDITFIQSEEGSGRGAALISAVACKMAAYMLTQ',
                'cigar_line': '34D433M',
                'id': 'ENSAOCG00000006915',
                'perc_id': 84.5266,
                'perc_pos': 91.9169,
                'protein_id': 'ENSAOCP00000021845',
                'species': 'amphiprion_ocellaris',
                'taxon_id': 80972},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTL-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '16MD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.8283,
                'perc_pos': 88.1974,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-----------MLDS-QVEQILSEFILNKEELKEVMKRMQREMDRGLRIETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGADEERSWKVETKTQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHMKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRKVELVEGEEGRMCVNTEWGAFGDSGELEDFRLEYDRVVDESSINPGQQLYEKLISGKYMGELVRLVMMKLVNEGLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSLMGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINQMRERRGQETLKITVGIDGSVYKLHPWFCDRFHKIVRDLTPHCEITFIQSEEGSGRGAALISAVAYKMAVCI---',
                'cigar_line': '11D4MD449M3D',
                'id': 'ENSMALG00000021430',
                'perc_id': 82.1192,
                'perc_pos': 90.7285,
                'protein_id': 'ENSMALP00000031020',
                'species': 'monopterus_albus',
                'taxon_id': 43700},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 75.9657,
                'perc_pos': 85.1931,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTFIRKQSMRT--SSSYKSMLEQALMVDQILSELLLTKEELKEVMGRMQQEMKKGLRVETHEGASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDGERGWKVETKHHMYSIPEDAITGTAEMLFDYIAECISDFLDKHGMKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIRRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIV----------EMCTVELVEGEEGRMCVNTEWGAFGGNGELEEFRLEYDRVVDELSLNPGQQLYEKMIGGKYMGELVRLVLMKLVNEGLLFNGNTSDMLKTRGSFETRFVSQIESDTGDRKQIYNILSSLSVLPSELDCDIVRLACESVSTRAAHLCGAGLSGILNLMRERRSQEEMKITVGVDG--MKWH--FKERFHKVVRELTPNCDITFIQSEEGSGRGAALISAVACKMAARLIAP',
                'cigar_line': '14M2D224M10D174M2D4M2D48M',
                'id': 'ENSEEEG00000023397',
                'perc_id': 76.2931,
                'perc_pos': 85.5603,
                'protein_id': 'ENSEEEP00000049794',
                'species': 'electrophorus_electricus',
                'taxon_id': 8005},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '--MA---MDVTRSQA---QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2D2M3D8M3D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 75.5365,
                'perc_pos': 83.691,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MRSLCSS-----L--PLV-----VLQVEQILSELRLSKEKLKEVMKRMQREMERGLCLETHQEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDK--------------------VGCVTYAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGALGDNGELEEFRLEYDRVVDETSINPGHQLYEKLISGKYMGELVRLVLVKLVNENLLFNGEASELLKTRGSFETRFVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVSLVCESISTRSAHMCGAGLAGVINLMRERRRQEALAITVGVDGSVYKLHPCFRDRFHKIVRDLTPHCEITFIQSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '7M5DM2D3M5D149M20D285M',
                'id': 'ENSMMOG00000011665',
                'perc_id': 79.1011,
                'perc_pos': 87.6404,
                'protein_id': 'ENSMMOP00000015293',
                'species': 'mola_mola',
                'taxon_id': 94237},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MDVTRSQAQTALTL-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M2D14MD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.6867,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--MMDKTSRM--------FMEQILSEFRLNKEELKEVMKRMQREMDRGLHLDTHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVIVGENEERSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGEFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDETSVNPGQQLYEKVISGKYMGELVRLVLMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINLMRERRSQEALKITVGVDGSVYKLHPCFRDRFHKIVRDLTPHCEITFIQSEEGSGRGAALISAVACKMAASMLTQ',
                'cigar_line': '2D8M8D452M',
                'id': 'ENSSDUG00000022756',
                'perc_id': 81.7391,
                'perc_pos': 91.087,
                'protein_id': 'ENSSDUP00000031666',
                'species': 'seriola_dumerili',
                'taxon_id': 41447},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '461MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 78.1116,
                'perc_pos': 85.1931,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-------------------------------KEVMKRMQREMDRGLRLESHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGKDEERGFKVETTNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDKGELEEFRLEYDRVVDEFSINPGQQLFEKLISGKYMGELVRLVLMKLVKENLLFNGEASEQLRTRGSFETRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAQMCGAGLAGVINRMRERRCEEELKITVGVDGSVYKLHPWFRDRFHKVVWDLSPHCEITFIQSEEGSGRGVALISAVACKMAACTTAP',
                'cigar_line': '31D436M',
                'id': 'ENSORLG00015016492',
                'perc_id': 83.4862,
                'perc_pos': 91.055,
                'protein_id': 'ENSORLP00015031953',
                'species': 'oryzias_latipes_hsok',
                'taxon_id': 8090},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.8283,
                'perc_pos': 90.1288,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSVQLDQMVKL--PSSYDSVVDKVIAVDQILSEFRLNKEDLKEIMKRMQREMERGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDEASINPGQQLYEKLISGKYMGELVRLVMMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCATGLAGVINLMRERRSEEAMKITVGIDGSVYKLHPCFRDRFHKVVRDLTPHSDITFIQSEEGSGRGAALISAVACKMATNLFAD',
                'cigar_line': '14M2D464M',
                'id': 'ENSMZEG00005010696',
                'perc_id': 77.8243,
                'perc_pos': 87.8661,
                'protein_id': 'ENSMZEP00005014233',
                'species': 'maylandia_zebra',
                'taxon_id': 106582},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPS-----FKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD403M5D42MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 89.485,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTLARTQ--RI--PSDFESVLERIIMVEQILSEFLLSKEDLEEVMRRMRREMERGLRVETHNEASIKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIAGCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHSCEVGMIVGTGCNACYMEEMRKVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGHQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGDASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSTLGILPSELDCDIVRLVCKSVSTRAAHMCGAGLAGVINLMRERRCQEQLKITVGVDGSVYKLHPQKQRWSFKERFHKLVWEMNPDCEITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '10M2D2M2D469M',
                'id': 'ENSCCRG00010002931',
                'perc_id': 78.5863,
                'perc_pos': 86.6944,
                'protein_id': 'ENSCCRP00010007118',
                'species': 'cyprinus_carpio_germanmirror',
                'taxon_id': 7962},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.4721,
                'perc_pos': 89.0558,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSTHLDTMGKL--PSSFKAVVKEILMVEQILSEFRLNKEELKEVMKRMQREMDRGLRLESHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGKDEERGFKVETTNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDKGELEEFRLEYDRVVDEFSINPGQQLFEKLISGKYMGELVRLVLMKLVKENLLFNGEASEQLRTRGSFETRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAQMCGAGLAGVINRMRERRCEEELKITVGVDGSVYKLHPWFRDRFHKVVWDLSPHCKITFIQSEEGSGRGVALISAVACKMAACTTAP',
                'cigar_line': '14M2D464M',
                'id': 'ENSORLG00020006865',
                'perc_id': 78.4519,
                'perc_pos': 86.8201,
                'protein_id': 'ENSORLP00020025100',
                'species': 'oryzias_latipes_hni',
                'taxon_id': 8090},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.6867,
                'perc_pos': 90.5579,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSHLNQMVKM--PCSYSSVVEKIFMVEQMLSEFRLNKEELKEVMKRMQREMERGLRIETHKEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKNQMYSIPEDAMTGTAEMLFDYIAECISDFLDRHQIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDETSINPGCQLYEKLISGKYMGELVRLVMMKLVNEDLLFNGEASDLLKTRGSFEARFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINLMRERRSQEALKITVGVDGSVYKLHPCFQDRFHKIVRELTPHCEITFIQSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSMMDG00005017499',
                'perc_id': 78.6611,
                'perc_pos': 88.2845,
                'protein_id': 'ENSMMDP00005037721',
                'species': 'myripristis_murdjan',
                'taxon_id': 586833},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA---MDVTRSQA-----QTALTL-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M3D8M5D6MD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 77.0386,
                'perc_pos': 88.412,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--VFD--------PRAADEASSE-RIEEILSKFRLNKEELEEVMNRMQLEMERGLRIETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGKDEDRSWKIETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLGKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGEFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDAASINPGQQLYEKLISGKYMGELVRLVLMKLVNENLLFNGEASEQLKTRGSFETRYVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCEVISTRSSHMCGAGLAAVINRMRERRCQDTLNITVGIDGSVYKLHPYFRDRFHKVVRELTPNCEISFLQSEEGSGRGAALISAVASKMAAAC---',
                'cigar_line': '2D3M8D10MD449M3D',
                'id': 'ENSPMGG00000013033',
                'perc_id': 77.7056,
                'perc_pos': 89.1775,
                'protein_id': 'ENSPMGP00000015897',
                'species': 'periophthalmus_magnuspinnatus',
                'taxon_id': 409849},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALT---L--VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '15M3DM2D445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 77.897,
                'perc_pos': 88.1974,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-----------MLNNRHTINNVDQILSELRLQKDELQEIMKRMRREMDRGLRLETHEVASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGADEERSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSNFLDQHNIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDIEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMSTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDETSINPGQQLFEKLISGKYMGELVRLVMMKLVNENLLFNGEASEMLKTRGSFETRHVSQVESDSGDRKHIYNILSSMGVLPSELDCDIVGLVCESVSTRSAHMCAAGLAGVINLMRERRGLEALNITVGVDGSVYKMHPCFRDRFHKIVRELTPHCEITFIQSEEGSGRGAALISAVACKMAASMLAR',
                'cigar_line': '11D461M',
                'id': 'ENSHCOG00000006726',
                'perc_id': 78.7419,
                'perc_pos': 89.154,
                'protein_id': 'ENSHCOP00000005117',
                'species': 'hippocampus_comes',
                'taxon_id': 109280},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA---------------------------------------------------MDVTRSQA---------QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEML-FDYI-SECISDFLDK--HQMKHKKLPLGFTFSFPVR-HEDIDK-GILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M51D8M9D5MDMD107MD4MD10M2D19MD6MD299MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 75.5365,
                'perc_pos': 84.5494,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MCGRFCLIGPAHFTRAYHIAGASRCSHISLTPHTHILSKLLRTHTHTHTHVCLDKPVKMPCISPMPCSYSPMIDKILTVEHILSEFRLNKEELKEIMERMQREMKRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSWKVETKNQMYSIPEDAMTGTAEMVM--HVR------FLGKTPHQAQEASSGLYLLFSCAARGHRQ---GGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDIEMDVVAMVNDTVATMISCYYEDRSCEVGIIVGTGCNACYMEEMRTVELVEGDEGRMCVNTEWGAFGGNGELEDFRLEYDRVVDEISINPGQQLYEKLISGKYMGELVRLVLVKLVNEDLLFNGEASEQLKTRGSFETRYVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHFCSAGLAGVINLMRERRSQEVLKITVGVDGSVYKLHPCFRDRFHKMVWELTPYCEITFIQSEEGSGRGAALISAVACKMAACLLAQ',
                'cigar_line': '186M2D3M6D29M3D306M',
                'id': 'ENSGWIG00000018708',
                'perc_id': 67.1756,
                'perc_pos': 75.1908,
                'protein_id': 'ENSGWIP00000036281',
                'species': 'gouania_willdenowi',
                'taxon_id': 441366},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 88.8412,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTSARRQ--GM--LSDFESVLERILMVEQILSEFLLSKEDLEEVMRRMRREMERGLRVETHNEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDTMTGTAEMLFDYIAGCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHSCEVGMIVGTGCNACYMEEMRKVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGHQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGEASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSTLGILPSELDCDIVRLVCESVSTRAAHMCGAGLAGVINLMRERRCQEQLKITVGVDGSVYKLHPHFKERFHKLVWEINPHCEITFIQSEEGSGRGAALISAVAYKMATCMLTP',
                'cigar_line': '10M2D2M2D464M',
                'id': 'ENSSANG00000033630',
                'perc_id': 79.6218,
                'perc_pos': 86.9748,
                'protein_id': 'ENSSANP00000067683',
                'species': 'sinocyclocheilus_anshuiensis',
                'taxon_id': 1608454},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 90.3433,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLCVSSFMGQMGKM--PCSLSSVLETVLMVEQILSEFRLKKEQLKEVMKRMMREMDRGLRVETHQEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHQMYSIPEDAMTGTAEMLFDYIAECISDFLNRQHIKHKKLPLGFTFSFPVRHENIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGANGELEEFRLEYDRVVDETSLNPGQQLYEKLISGKYMGELVRLVLLKLVNEELLFNGEASTLLKTRGSFETRYVSQIESESGDRKQIYNILSTLGVLPSELDCDIVRLACESVSTRAAHMCGAGLAGVINRMRERRSQAVLKITVGIDGSVYKLHPCFQDRFHKVVRELTPHCDITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '14M2D464M',
                'id': 'ENSSTUG00000028305',
                'perc_id': 79.0795,
                'perc_pos': 88.0753,
                'protein_id': 'ENSSTUP00000065430',
                'species': 'salmo_trutta',
                'taxon_id': 8032},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.2575,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSQLDQMVKM--PCSYSSVVDKIFAVRQILSEFRLNKEELKEVMKRMQREMERGLRVETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDDERSFKVETKNQMYSIPENAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDESSINPGHQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASEMLKTRGSFETRYVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVHLVCESVSTRSAHMCGAGLAGVINQMRERRSQEFLEITVGVDGSVYKLHPCFRDRFHKIVRDLTPHCEINFIQSEEGSGRGAALISAVACKMAACMLNQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSLCRG00005011103',
                'perc_id': 78.2427,
                'perc_pos': 87.6569,
                'protein_id': 'ENSLCRP00005028319',
                'species': 'larimichthys_crocea',
                'taxon_id': 215358},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '----MA---------------------------------------MDVTRSQA-----QTALT-----------------------------------------L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '4D2M39D8M5D5M41DMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 90.5579,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MSDFLPCDCELTPVFTRRLLHVVREETLGEELIVDIQILLCFVLLKNMVVC--GNFVAELGGELGGCLWSVESPLCFFPIVFCCQVVQENMFFVQPLTCLPLLLLQVEQILSEFRLNKEDLKEIMERMQHEMDRGLRIETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVIVGEDEERSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILINWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDETSINPGHQLYEKVISGKYMGELVRLVLMKLVNEDLLFNGEASEQLKTRGSFETRFVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINRMRERRCQEALKITVGVDGSVYKLHPCFRDKFHKIVRDLTPHCEITFIQSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '51M2D504M',
                'id': 'ENSLCAG00010001272',
                'perc_id': 68.1081,
                'perc_pos': 76.036,
                'protein_id': 'ENSLCAP00010002256',
                'species': 'lates_calcarifer',
                'taxon_id': 8187},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.8283,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSTHLDQMVKM--PSSYDSVVDKVIAVDQILSEFRLNKEDLKEIMKRMQCEMERGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDEASINPGHQLYEKLISGKYMGELVRLVMMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCAAGLAGVINLMRERRSEEAMKITVGIDGSVYKLHPCFRDRFHKVVRDLTPHSDITFIQSEEGSGRGAALISAVACKMATNLFAD',
                'cigar_line': '14M2D464M',
                'id': 'ENSONIG00000014301',
                'perc_id': 77.8243,
                'perc_pos': 87.6569,
                'protein_id': 'ENSONIP00000030038',
                'species': 'oreochromis_niloticus',
                'taxon_id': 8128},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ------------------------',
                'cigar_line': '2M6D8M4D5MDMD445MD5M24D',
                'id': 'ENSG00000106633',
                'perc_id': 80.0429,
                'perc_pos': 88.412,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSHSDQMVMM--PAYISEVDRILQVEQILSVFKLDKKDLSEVMKRMQHEMERGLHLDTHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSWKVLTKKQMYSIPEDAMTGTAEMLFDYIAECMSHFLDHYHMKHKKLPLGFTFSFPVRHEDIDKGILINWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNVCYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDETSINPGHQLYEKLISGKYMGELVRLVLMKLVNENLLFNGEPSEILKTRGSFDTRFVSQVESDTGDRKQIYNILTSLGVLPSELDCDIVHLVCESVSTRAAHMCGAGLAGVINRMRERRSQEALVITVGVDGSVYKLHPCFRDRFHKIVRDLTPRCEITFLQSEEGSGRGAALISAVACKMAACMLMQSRAEKLQGNQPEGSKTEADDSQQP',
                'cigar_line': '14M2D487M',
                'id': 'ENSTRUG00000016548',
                'perc_id': 74.4511,
                'perc_pos': 82.2355,
                'protein_id': 'ENSTRUP00000042306',
                'species': 'takifugu_rubripes',
                'taxon_id': 31033},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.6137,
                'perc_pos': 89.485,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCISSHFGQMVKM--PGSYDEVVEKIFMVEHILSEFRLNKEELKEVMRRMQHEMSRGLRLETHEEASIKMLPTFVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKHQMYSIPEDTMTGTAEMLFDYIAECMSDFLGKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGEFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNVCYMEEMKTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDEASINPGHQLYEKLISGKYMGELVRLVLMKLVNENLLFNGEASELLKTRGSFETRFVSQMESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSALMCGAGLAGVINQMRERRSQDVLKITVGVDGSVYKLHPYFRDRFHKTVRELTPHSEITFIQSEEGSGRGAALISAVACKMAACLLTP',
                'cigar_line': '14M2D464M',
                'id': 'ENSKMAG00000004940',
                'perc_id': 77.6151,
                'perc_pos': 87.2385,
                'protein_id': 'ENSKMAP00000006547',
                'species': 'kryptolebias_marmoratus',
                'taxon_id': 37003},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MDVTRSQA----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M2D8M4D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 89.6996,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--MSDQTLQG--FEEF-----LPLVEQILSEFRLNKEELKEVMERMQREMDRGLRIETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDRHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDETSINPGHQLYEKLISGKYMGELVRLVLVKLVNEDLLFNGEASEQLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINLMRERRSQEALAITVGVDGSVYKLHPCFRDRFHKIVRDLTPHCEIAFIQSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '2D8M2D4M5D454M',
                'id': 'ENSSAUG00010023799',
                'perc_id': 81.3305,
                'perc_pos': 89.6996,
                'protein_id': 'ENSSAUP00010058428',
                'species': 'sparus_aurata',
                'taxon_id': 8175},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-----------------------------------------------------------------------------------------------------MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '101D2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.0429,
                'perc_pos': 90.3433,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MKYILRNKVKPFYNFAQRLYLFVCMWAFVYVCTSLARWGEVGKGRAIGFGVSSPLHLRIKAAEDCSVVLTLHSLCTHTLGGLTLTKLLKTHASEFLVKPVKMPCVSVQLDQMVKL--PNSYDSVVDKVIAVDQILSEFRLNKEDLKEIMKRMQREMERGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDEASINPGQQLYEKLISGKYMGELVRLVMMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCAAGLAGVINLMRERRSEEAMKITVGIDGSVYKLHPCFRDRFHKVVRDLTPHSDITFIQSEEGSGRGAALISAVACKMATNLFAD',
                'cigar_line': '115M2D464M',
                'id': 'ENSHBUG00000012698',
                'perc_id': 64.4214,
                'perc_pos': 72.7116,
                'protein_id': 'ENSHBUP00000011080',
                'species': 'haplochromis_burtoni',
                'taxon_id': 8153},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M2D459MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 78.5408,
                'perc_pos': 88.412,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--DLDDI-----------VEHILSEFRLNKGELEEVMKRMQHEMNRGLRLETHETASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGTFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGEFEMDVVAMVNDTVATMVSCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDEASINPGHQLYEKVISGKYMGELVRLVLMKLINENLLFNGEASEQLMTRGSFETCFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINLMRERRGQDTLKITVGVDGSVYKLHPYFRDRFHQVVRELTPHSEITFLQSEEGSGRGAALISAVACKMASWI---',
                'cigar_line': '2D5M11D448M3D',
                'id': 'ENSCVAG00000019648',
                'perc_id': 80.7947,
                'perc_pos': 90.9492,
                'protein_id': 'ENSCVAP00000030822',
                'species': 'cyprinodon_variegatus',
                'taxon_id': 28743},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 78.7554,
                'perc_pos': 89.0558,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCISSQFDQMMKL--SGSYSDVVKKICMVEQILSEFRLNKEELEEVMKRMQHEMNRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFTASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMVSCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEQGRMCVNTEWGAFGDMGELEDFRLEYDRVVDETSINPGHQLYEKIISGKYMGELARLVMMKLVNENLLFNGEASEQLRTRGSFETRFVSQVESDSGDRKQIYNILSSLGVLPTELDCDIVRLVCESVSTRSAHMCGAGLAGVINQMQERRGQDTMKITVGVDGSVYKLHPYFRDRFHQVVRELTPHSEITFLQSEEGSGRGAALISAVACKMESWI---',
                'cigar_line': '14M2D461M3D',
                'id': 'ENSGAFG00000017334',
                'perc_id': 77.2632,
                'perc_pos': 87.3684,
                'protein_id': 'ENSGAFP00000025690',
                'species': 'gambusia_affinis',
                'taxon_id': 33528},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLH---------------------------------PS------F------KERFHASVR-----------------------RLTPS-CEITFIE---SEE--GSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '417M33D2M6DM6D9M23D5MD7M3D3M2D22M',
                'id': 'ENSG00000106633',
                'perc_id': 71.8884,
                'perc_pos': 79.1845,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--------------------------------EVMKRMMREMDRGLRVETHQEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHQMYSIPEDAMTGTAEMLFDYIAECISDFLNRQHIKHKKLPLGFTFSFPVRHENIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGANGELEEFRLEYDRVVDETSLNPGQQLYEKLISGKYMGELVRLVLLKLVNEELLFNGEASALLKTRGSFETRYVSQIESDSGDRKQIYNILSTLGVLPSELDCDIVRLACESVSTRAAHMCGAGLAGVINRMRERRSQAVLKITVGIDGSSFSIKVSLLLLKYDNWVLFPPLAILMGNMASSLPLLPYPTGSSLKPFCANPPPPLSFSLLVSHPITSPPPAPSPYLLFPPPVESWSLGPYR---VHIERERERERE---RERERV-------------',
                'cigar_line': '32D471M3D12M3D6M13D',
                'id': 'ENSSSAG00000069485',
                'perc_id': 68.5072,
                'perc_pos': 75.4601,
                'protein_id': 'ENSSSAP00000088636',
                'species': 'salmo_salar',
                'taxon_id': 8030},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '------------------------MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '24D2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLLTHIQTLANQRSSYNCLKRLAKMPCLSSARRQ--RT--PSDFESVLERILMVDQILSEFLLSKEDLEEVMRRIRREMERGLRVETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIASCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRKVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGHQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGDASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSSLGILPSELDCDIVRLVCESVSTRAAHMCGAGLAGVINLMRERRCQEELKITVGVDGSVYKLHPHFKERFHKLVWEMTPHCEITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '34M2D2M2D464M',
                'id': 'ENSCCRG00015014432',
                'perc_id': 75.6,
                'perc_pos': 83.8,
                'protein_id': 'ENSCCRP00015034664',
                'species': 'cyprinus_carpio_huanghe',
                'taxon_id': 7962},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '---------------------------------------------MA----MDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '45D2M4D459MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.1845,
                'perc_pos': 87.7682,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MIFVATSPPPSLEHKNSWASLCTSHTFKFVQINDHHTLVVKRLAKMPCLTS--------------VEQILSEFLLSKEDLEEVMRRMRREMERGLRVETHNEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDTMTGTAEMLFDYIAGCISDFLDKHNLKHKKLPLGFTFSFPEMHFNMD-GILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHSCEVGMIVGTGCNACYMEEMRKVELVEGEEGKMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGHQLYEKLIGGKYMGELVRLVLLKLVNENLLFNSEASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSSLGILPSELDCDVVRLVCESVSTRAAHMCGAGLAGVINLMRERRCQEQLKITVGVDGSVYKLHPHFKERFHKLVWEINPHCEITFIQSEEGSGRGAALISAVACKMATCILTP',
                'cigar_line': '51M14D145MD305M',
                'id': 'ENSSGRG00000021057',
                'perc_id': 73.6527,
                'perc_pos': 81.6367,
                'protein_id': 'ENSSGRP00000038751',
                'species': 'sinocyclocheilus_grahami',
                'taxon_id': 75366},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA----MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M4D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.2575,
                'perc_pos': 89.485,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSTIQILKM--PSSYNAEVDQSLMVEQILSEFRLNKEDLKEVMKRMQLEMDRGLRLETHKEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKNEMYSISEDAMTGTAEMLFDYIAECISDFLGKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDEFSLNPGQQLYEKLISGKYMGELVRLVLIKLVNQDLLFNGDASDLLKTRGGFETRYVSQVESDSGDRKQIYNILSTLGLLPSELDCDIVHLVCESVSTRSAHMCAAGLAAVINVMRERRSQEALKITVGVDGSVYKLHPCFQNRCHEVVRELTPHCDITFIESEEGSGRGAALISAVACKMAACMITQ',
                'cigar_line': '12M2D464M',
                'id': 'ENSGMOG00000007309',
                'perc_id': 78.5714,
                'perc_pos': 87.605,
                'protein_id': 'ENSGMOP00000007811',
                'species': 'gadus_morhua',
                'taxon_id': 8049},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.6137,
                'perc_pos': 88.6266,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSAHSDQMGMI--PAGFGSVVDRILQVEQILSEFKLNTEDLSQVMKRMQREMERGLRLDTHEEASVKMLPTYVCSTPKGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSWKVETQKQMYSIPEDAMTGTAQMLFDYIAECMSHFLDHHHMKHKKLPLGFTFSFPVRHEDIDKGILINWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNVCYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVADEASINPGHQLYEKLISGKYMGELVRLVLMKLVNENLLFNGEASELLKTRGSFDTRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVHLVCESVSTRAAHMCGAGLAGVINSMRVRRNQEALVITVGVDGSVYKLHPCFRDRFHKIVRDLTPRCEITFLQSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSTNIG00000015932',
                'perc_id': 77.6151,
                'perc_pos': 86.4017,
                'protein_id': 'ENSTNIP00000019018',
                'species': 'tetraodon_nigroviridis',
                'taxon_id': 99883},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '---MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '3D2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.8283,
                'perc_pos': 89.485,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MDKMPCITSQLDQMMKL--PGSYSDVVEKICMVEQILSEFRLNKEELEEVMKRMQHEMNRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDSGELEDFRLEYDRVVDETSINPGHQLYEKIISGKYMGELARLVMMKLVNENLLFNGEASEQLKTRGGFETRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINQMQERRGQDTMKITVGVDGSVYKLHPYFRDRFHQVVRELTPHSEITFLQSEEGSGRGAALISAVACKMASWI---',
                'cigar_line': '17M2D461M3D',
                'id': 'ENSPMEG00000003262',
                'perc_id': 77.8243,
                'perc_pos': 87.2385,
                'protein_id': 'ENSPMEP00000002213',
                'species': 'poecilia_mexicana',
                'taxon_id': 48701},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTSARRQ--RM--PSDFESVLERILMVDQILSEFLLSKEDLEEVMRRIRREMERGLRVETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDAMTGTAEMLFDYIASCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRKVELVEGEEGKMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGRQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGEASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSSLGILPSELDCDIVRLVCESVSTRAAHMCGAGLAGVINLMRERRCQEELKITVGVDGSVYKLHPHFKERFHKLVWEMTPHCEITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '10M2D2M2D464M',
                'id': 'ENSSANG00000030574',
                'perc_id': 79.4118,
                'perc_pos': 88.0252,
                'protein_id': 'ENSSANP00000061360',
                'species': 'sinocyclocheilus_anshuiensis',
                'taxon_id': 1608454},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.9013,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLCVSTYREQPLAM--PCTYKSVLEKVLMVDQILSEFLLKKEELREVMGRMQQEMERGLRLETHNEASIKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEKGWKVETKYYMYSIPEDAMTGTAEMLFDYIAECISDFLDKHQIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGANGELEEFRLEYDRVVDETSLYPGQQLYEKLISGKYMGELVRLVLLKLVNEDLLFNGEASDLLKTRGSFETRFVSQIESDLGDRKQIFNILSTLGVLPSELDCDIVRLACERVSTRAAHMCGAGLAGVINRMRERRSQEALKITVGVDGSVYKLHPRFQERFHKIVRELTPNCDITFIQSEEGSGRGAALISAVACKMAACILTH',
                'cigar_line': '14M2D464M',
                'id': 'ENSCHAG00000012544',
                'perc_id': 78.8703,
                'perc_pos': 87.6569,
                'protein_id': 'ENSCHAP00000025969',
                'species': 'clupea_harengus',
                'taxon_id': 7950},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPS-----FKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD403M5D42MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.9013,
                'perc_pos': 89.2704,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCLTLARTQ--RI--PSDFESVLERIIMVEQILSEFLLSKEDLEEVMRRMRREMERGLRVETHNEASIKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKHHMYSIPEDTMTGTAEMLFDYIAGCISDFLDKHNLKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHSCEVGMIVGTGCNACYMEEMRKVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVIDETSLNPGHQLYEKLIGGKYMGELVRLVLLKLVNENLLFNGDASDLLKTRGAFETRFVSQIESDTGDRKQIYNILSTLGILPSELDCDIVRLVCKSVSTRAAHMCGAGLAGVINLMRERRCQEQLKITVGVDGSVYKLHPQKQRWSFKERFHKLVWEMNPDCEITFIQSEEGSGRGAALISAVACKMAACMLTP',
                'cigar_line': '10M2D2M2D469M',
                'id': 'ENSCCRG00015023495',
                'perc_id': 78.3784,
                'perc_pos': 86.4865,
                'protein_id': 'ENSCCRP00015057470',
                'species': 'cyprinus_carpio_huanghe',
                'taxon_id': 7962},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '---MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '3D2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 78.7554,
                'perc_pos': 89.2704,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MDKMPCISSQLDQMMKL--SGSYSDVVEKICMVEQILSEFRLNKEELEEVTKRMQHEMNRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMVSCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDMGELEDFRLEYDRVVDETSINPGHQLYEKIISGKYMGELARLVMMKLVNENLLFNGKASEQLKTRGSFETRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINQMQERRGQDTLKITVGVDGSVYKLHPYFRDRFHQVVRELTPHSEITFLQSEEGSGRGAALISAVACKMASWI---',
                'cigar_line': '17M2D461M3D',
                'id': 'ENSXMAG00000010091',
                'perc_id': 76.7782,
                'perc_pos': 87.0293,
                'protein_id': 'ENSXMAP00000029354',
                'species': 'xiphophorus_maculatus',
                'taxon_id': 8083},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '461MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.3991,
                'perc_pos': 86.9099,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--------------------------NKEELKEVMKRMQHEMDRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSWKVETTNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDIEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDESSINPGQQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVHLVCESVSTRSAHMCGAGLAGVINRMRERRCEESLKITVGVDGSVYKLHPCFRDRFHKVVRDLTPHCDITFIQSEEGSGRGAALISAVACKMAAYMLTQ',
                'cigar_line': '26D441M',
                'id': 'ENSAPEG00000016306',
                'perc_id': 83.9002,
                'perc_pos': 91.8367,
                'protein_id': 'ENSAPEP00000022922',
                'species': 'amphiprion_percula',
                'taxon_id': 161767},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.1845,
                'perc_pos': 89.0558,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCISSHLDQLVKL--PASYSDVIEKICTVEHILSEFRLNKEELEEVMKRMQHEMNRGLRLESHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNIVGLLRDAIKRRGEFEMDVVAMVNDTVATMVSCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDRGELEEFRLEYDRVVDEASINPGHQLYEKVISGKYMGELVRLVLMKLVNENLLFNGEASEQLMTRGSFETCFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINLMRERRGQDTLKITVGVDGSVYKLHPYFRDRFHQVVRELTPHSEITFLQSEEGSGRGAALISAVACKMASCI---',
                'cigar_line': '14M2D461M3D',
                'id': 'ENSFHEG00000006791',
                'perc_id': 77.6842,
                'perc_pos': 87.3684,
                'protein_id': 'ENSFHEP00000005798',
                'species': 'fundulus_heteroclitus',
                'taxon_id': 8078},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MDVTRSQA--QTALTL-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M2D8M2D6MD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 89.2704,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--MMDKASRM--FK-----FDVEQILSEFRLNKEELKEVMKRMQREMDRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSWKVETTNQMYSIPEDAMTGTAQMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDESSINPGQQLYEKLISGKYMGELVRLVLMKLVNENLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVHLVCESVSTRSAQMCGAGLAGVINRMRERRCEECLKITVGVDGSVYKLHPCFRDKFHKVVWELTPHCEATFIMSEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '2D8M2D2M5D453M',
                'id': 'ENSSPAG00000008318',
                'perc_id': 81.6415,
                'perc_pos': 89.8488,
                'protein_id': 'ENSSPAP00000010945',
                'species': 'stegastes_partitus',
                'taxon_id': 144197},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.8283,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSAHLDQMVKM--PSSYDSVVDKVIAVDQILSEFRLNKEDLKEIMKRMQCEMERGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEDFRLEYDRVVDEASINPGHQLYEKLISGKYMGELVRLVMMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCAAGLAGVINLMRERRSEEAMKITVGIDGSVYKLHPCFRDRFHKVVRDLTPHSDITFIQSEEGSGRGAALISAVACKMATNLFTD',
                'cigar_line': '14M2D464M',
                'id': 'ENSOABG00000010617',
                'perc_id': 77.8243,
                'perc_pos': 87.6569,
                'protein_id': 'ENSOABP00000022176',
                'species': 'oreochromis_aureus',
                'taxon_id': 47969},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.2575,
                'perc_pos': 88.8412,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCPRSCHNQKMRL--TRRRGSLVEQVLMVDQILSEFRLEKTELEDVMWRLQREMDRGLRSETHKEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEETGWKLETKHQMYSIPEDAMTGTAEMLFDYIAECISDFLAKHQLKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYENRNCEVGMIVGTGCNACYMEEMSMVELVEGDEGRMCVNTEWGAFGDNGELEEYRLEYDRKVDETSLNPGRQLFEKIISGKYMGELVRLVLLKLVNEDLLFHGEASEKLRTRGSFETRFVSQIESDSGDRKQIYNVLTMLGLMPSELDCDIVRLACERVSTRSAHMCGAGLAGIINRMRERRCQEALEITVGVDGSVYKLHPSFQEKFHAVVRELTPGCDITFIHSEEGSGRGAALVSAVACKMAASR---',
                'cigar_line': '14M2D461M3D',
                'id': 'ENSSFOG00015012730',
                'perc_id': 78.7368,
                'perc_pos': 87.1579,
                'protein_id': 'ENSSFOP00015066748',
                'species': 'scleropages_formosus',
                'taxon_id': 113540},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTR------SQA---QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D5M6D3M3D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 78.97,
                'perc_pos': 89.2704,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'LPCPTQKLESWEKCLFVLFL--IGS-VLLRL-QVEQILSEFRLNKEELEEVTKRMQHEMNRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMVSCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDMGELEDFRLEYDRVVDETSINPGHQLYEKIISGKYMGELARLVMMKLVNENLLFNGEASEQLKTRGSFETRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINQMQERRGQDTLKITVGVDGSVYKLHPYFRDRFHQVVRELTPHSEITFLQSEEGSGRGAALISAVACKMASWI---',
                'cigar_line': '20M2D3MD5MD449M3D',
                'id': 'ENSXCOG00000009335',
                'perc_id': 77.1488,
                'perc_pos': 87.2117,
                'protein_id': 'ENSXCOP00000012352',
                'species': 'xiphophorus_couchianus',
                'taxon_id': 32473},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA---------MDVTRSQA----QTALT--L----VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M9D8M4D5M2DM4D445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MVLHIHLAHRIGSHCPLCSSPHN-----GLYFRLKVEEILSEFQLNKEELKEVMKRMQREMDRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGSWKIETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGEFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDESSINPGQQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASEKLKVRGSFETHYVSQVESDSGDRKQIYKILSFLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINLMRERRRQEALKITVGVDGSVYKLHPCFRDRFHKVVRELTPHCEITFIESEEGSGRGAALISAVACKMAACMLTQ',
                'cigar_line': '23M5D458M',
                'id': 'ENSSORG00005008477',
                'perc_id': 78.7942,
                'perc_pos': 87.1102,
                'protein_id': 'ENSSORP00005016766',
                'species': 'sphaeramia_orbicularis',
                'taxon_id': 375764},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.1159,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCISSHLDQMVKM--PNGYGPLADKILMVEQILSEFRRNKEELKEVMKRMQREMERGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSWKVETTNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDIEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDNGELEEFRLEYDRVVDESSINPGHQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASEQLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVHLVCESVSTRSAHMCGAGLAGVINWMRERRCEESLKITVGVDGSVYKLHPCFRDRFHKVVRDLTPHCDITFIQSEEGSGRGAALISAVACKMAAYMLTQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSAPOG00000006075',
                'perc_id': 79.0795,
                'perc_pos': 87.6569,
                'protein_id': 'ENSAPOP00000004456',
                'species': 'acanthochromis_polyacanthus',
                'taxon_id': 80966},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.3305,
                'perc_pos': 89.2704,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSTHLDTM-KL--PSSYKAVVKELLMVEQILSEFRLNKEELKEVMRRMQREMDRGLRLESHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGFKVETTNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDKGELEEFRLEYDRVVDEFSINPGQQLYEKLISGKYMGELVRLVLMKLVNENLLFNGEASEQLRMRGSFETRFVSQVESDTGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAQMCGAGLAGVINRMRERRCEEALKITVGVDGSVYKLHPWFRDRFHKVVWDLSPHCEITFLQSEEGSGRGAALISAVACKMAACTTAP',
                'cigar_line': '11MD2M2D464M',
                'id': 'ENSOMEG00000016412',
                'perc_id': 79.4549,
                'perc_pos': 87.2117,
                'protein_id': 'ENSOMEP00000014845',
                'species': 'oryzias_melastigma',
                'taxon_id': 30732},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA-------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M7D8M5D5MDMD450M',
                'id': 'ENSG00000106633',
                'perc_id': 82.618,
                'perc_pos': 90.9871,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'QPCRVQSRQTEKMRQ--FRRRSSIFEKILRVDQILSEFRLKKEELKEIMRRMQREMDRGLHLETHDEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDDDRGWKVETKYQMYSIPEDAMTGTAEMLFDYISECISDFLDKHNMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDTGELEEFRLEYDRVVDETSLNPGQQLYEKIISGKYMGELVRLVLLKLVNENLLFNGEASDILKTRGSFETRFVSQIESDTGDRKQIYNILTTLGVLPSELDCDIVRLACEGVSTRAAHMCGAGLAGVINRMRERRSADTLKITVGVDGSVYKLHPCFQEKFHKVVRELTPRCDITFIQSEEGSGRGAALISAVACKMACMLSQ',
                'cigar_line': '15M2D463M',
                'id': 'ENSLOCG00000015175',
                'perc_id': 80.5439,
                'perc_pos': 88.7029,
                'protein_id': 'ENSLOCP00000018674',
                'species': 'lepisosteus_oculatus',
                'taxon_id': 7918},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA-MDVTRSQA---QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2MD8M3D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 72.5322,
                'perc_pos': 82.4034,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPA--------YSNSIIETFLMIEEILSKFRLNKEELKGVMKRMERELDRGLRIETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGGDEERSWKIETNNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGEFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWG------HLVTTQCVY------------RSRYEKLISGKYMGELVRLVLMKLVNEDLLFNGEAPEQLKTRGSIETRHVSQIESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCECISTRSAHMCAAGLAAVINRMRERRCLDTLQITVGIDGSVYKLHPYFSDRFHKVVRELTPHCDICFLQSEEGSGRGAALISAVASKMADVC---',
                'cigar_line': '3M8D254M6D9M12D178M3D',
                'id': 'ENSNMLG00000003322',
                'perc_id': 76.1261,
                'perc_pos': 86.4865,
                'protein_id': 'ENSNMLP00000004521',
                'species': 'neogobius_melanostomus',
                'taxon_id': 47308},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA-MDVTRSQA-----QTALT-------L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEML------FDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2MD8M5D5M7DMD107M6D338MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.6867,
                'perc_pos': 89.485,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'TKC-----I--FDHFGRTRERHNTLSVRFQVDHILSEFRLDEDDLMEVMRRLQKEMERGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERGWKVETKNGMYSIPEDAMTGTAEMFLPTLLLFDHVAECISDFLGKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKVSGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRRCEVGMIVGTGCNVCYMEEMRTVELVEGEEGRMCVNTEWGAFGDHGELEEFRLEYDRVVDETSVNSGQQLYEKLISGKYMGELVRLVLLKLVSENLLFNGEASEQLRTKGSFDTRYVSQIESDSGDRKHIYNILTTLGLLPSERDCDIVRLACESVSTRAAHMCAAGLAGVINRMRERRSQEDLKITVGVDGSVYKLHPCFQDKFHRVVRDLTPHCDITFLQSEEGSGRGAALVSAVACKMATCMLTQ',
                'cigar_line': '3M5DM2D476M',
                'id': 'ENSSFOG00015019756',
                'perc_id': 78.3333,
                'perc_pos': 86.875,
                'protein_id': 'ENSSFOP00015053268',
                'species': 'scleropages_formosus',
                'taxon_id': 113540},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 81.5451,
                'perc_pos': 90.1288,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSDLDQMMKI--PCSYSSVVEKILMVEQILSEFRLNKEELKEIMKRMQREMDRGLCLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLAKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHSCEVGMIVGTGCNACYMEEMRTVELVEGDEGRMCVNTEWGAFGNHGELEDFRLEYDRVVDETSINPGYQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSTLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGMINLMRERRSQDFLKITVGVDGSVYKLHPCFRDRFHKIVRDLTPHCEITFIQSEEGSGRGAALISAVACKMAASMLPQ',
                'cigar_line': '14M2D464M',
                'id': 'ENSMAMG00000013140',
                'perc_id': 79.4979,
                'perc_pos': 87.8661,
                'protein_id': 'ENSMAMP00000019572',
                'species': 'mastacembelus_armatus',
                'taxon_id': 205130},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L--------------------------------VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDM32D445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.4721,
                'perc_pos': 89.6996,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCVSSHLDQAFLT--PCKYKTVLERILKVHLFSFSALETKSLNSKIPVPETSLYLRVPKVDQILSEFLLNKEELRDVMKRMQWEMDRGLRLETHDQASIKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEEGCWKVETKHHMYSIPEDAMTGTAEMLFDYIAECISDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGANGELEEFRLEYDRVVDETSLNPGEQLYEKLISGKYMGELVRLVLMKLVNEDLLFNGEASDQLKTRGSFETRFVSQIESDTGDRKQIYNILSTLGVLPSELDCDVVRLACESVSTRAAHMCGAGLAGVINRMRDHRRQEALKITVGIDGSVYKLHPRFQERFHKVVRELTPHCDITFIQSEEGSGRGAALISAVACKMAAVMYP-',
                'cigar_line': '14M2D494MD',
                'id': 'ENSDCDG00000028620',
                'perc_id': 73.8189,
                'perc_pos': 82.2835,
                'protein_id': 'ENSDCDP00000045856',
                'species': 'denticeps_clupeoides',
                'taxon_id': 299321},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 79.6137,
                'perc_pos': 89.485,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCISSQLDEMMKL--PGSYSDVVEKICMVEQILSEFRLNKEELEEVMKRMQHEMNRGLRLETHEEASVKMLPTYVCSTPEGSEVGDFLALDLGGTNFRVMLVKVGEDEERSFKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDLDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGEFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDSGELEEFRLEYDRVVDETSINPGHQLYEKIISGKYMGELARLVMMKLVNENLLFNGEASEQLKTRGGFETRFVSQVESDSGDRKQIYNILSSLGVLPSELDCDIVRLVCESVSTRSAHMCGAGLAGVINQMQERRGQDTMKITVGVDGSVYKLHPYFRDRFHQVVRELTPHSEITFLQSEEGSGRGAALISAVACKMASWV---',
                'cigar_line': '14M2D461M3D',
                'id': 'ENSPLAG00000012267',
                'perc_id': 78.1053,
                'perc_pos': 87.7895,
                'protein_id': 'ENSPLAP00000025315',
                'species': 'poecilia_latipinna',
                'taxon_id': 48699},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MDVTRSQA-----QTALT-L-VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '2M6D8M5D5MDMD445MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 80.6867,
                'perc_pos': 89.9142,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MPCASSRLSQMVRS--PYGYSYTADEIYRVKQILSEFRLTKEELKEVMKRMQQQMDRGLRLETHEEASVKMLPTYVCSTPEGSEVGNFLALDLGGTNFRVMLVIVGEDEERGWKVETKNQMYSIPEDAMTGTAEMLFDYIAECMSDFLDKHHIKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDRSCEVGMIVGTGCNACYMEEMRTVELVEGEEGRMCVNTEWGAFGDKGELEDFRLEYDRVVDETSINPGHQLYEKLISGKYMGELVRLVLIKLVNEELLFNGEASELLKTRGSFETRYVSQVESDTGDRKQIYNILSSLGVLPSELDCDVVRLVCESVSTRSAHMCSAGLAGVINRMRERRCQELLKITVGVDGSVYKLHPCFRDRFHKMVWDLTPHCEITFIQSEEGSGRGAALISAVACKMAS-----',
                'cigar_line': '14M2D459M5D',
                'id': 'ENSCSEG00000019959',
                'perc_id': 79.4926,
                'perc_pos': 88.5835,
                'protein_id': 'ENSCSEP00000031227',
                'species': 'cynoglossus_semilaevis',
                'taxon_id': 244447},
     'taxonomy_level': 'Euteleostomi',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MDVTRSQA---QTALT---L----VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M2D8M3D5M3DM4D450M',
                'id': 'ENSG00000106633',
                'perc_id': 61.588,
                'perc_pos': 78.5408,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--VI--DQR---PEG-----ITA-GCMQVEALLEGFALDRSVLEDVMLRLRREMEKGLHVHTNMEASVKMLPTYVRSTPDGSEVGDFLALDLGGTNIRVMVVKTGTDEVGTWKVETKVQVYSIPKDTMTGTAEMLFGFVAECIANFLEKHNMKERKLPLGFTFSFPVKHQDLDKGILMKWTKGFKASGAEGNDIVNLLREAIKKRRDIEMDIVAMVNDTVATMVSCYYEDHNCEIGLIVGTGCNTCYMEEMRNVEMVEGDEGRMCINTEWGAFGDTGELEDLWLEYDRRVDEMSLNPGKQKFEKSISGKYMGELVRLLMLKMVKQGLLFWGKASDALTTWEYFDTRHISLIESDGPELQQTSMVLKNMGMEPTEADCELTWRACNAVSTRASLLCAAGVAAVVTKIRENRGLECLSITVGVDGSLYKQLPHFKQRLRVAVSELAPECKVTFLQSEEGSGRGAALISAVACKMACRTTC',
                'cigar_line': '2D2M2D3M3D3M5D3MD454M',
                'id': 'ENSEBUG00000003343',
                'perc_id': 61.7204,
                'perc_pos': 78.7097,
                'protein_id': 'ENSEBUP00000004897',
                'species': 'eptatretus_burgeri',
                'taxon_id': 7764},
     'taxonomy_level': 'Vertebrata',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MDVTRSQAQTALT-L---VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSEVGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVES--DTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFKERFHASVRRLTPSCEITFIESEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M2D13MDM3D325M2D125M',
                'id': 'ENSG00000106633',
                'perc_id': 62.0172,
                'perc_pos': 76.6094,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--CV--SGR--------A-GQQVEQLLLEFVLDQQELEEVMHRMRREMERGLRLETHQEASVKMLPTYVRSTPDGSEVGDFLALDLGGTNFRVILVKVGQNEEGEWRVETKNELYCIPEDVMTGTAEMLFDYIAECIANYLDKLNMKHKKLPLGFTFSFPVKHVDLDKGILINWTKGFTATGAEGNNVVELLREAIKRRGDFDMDVVAMVNDTVATMISCYYEDHNTEIGMIVGTGCNTCYMEEMRNVDLVEGDEG-MCINMEWGAFGDSGELEDLRLEYDRKVDETSNNRGQQLFEKIISGKYMGELVRLLVMKLTNQGLLFGGKASEKLQTHFKFETKYVSQIESSDDGAEMKQTLNVLLGLGLQPTEAECRLVRRSCQAVSRRAASLCAAGMAAVVNKIRENRSLEQLEITVGVDGSVYKLHP------------------------------------------------',
                'cigar_line': '2D2M2D3M8DMD237MD169M48D',
                'id': 'ENSPMAG00000003141',
                'perc_id': 70.1456,
                'perc_pos': 86.6505,
                'protein_id': 'ENSPMAP00000003454',
                'species': 'petromyzon_marinus',
                'taxon_id': 7757},
     'taxonomy_level': 'Vertebrata',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTA---------LT-----------------L-VEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPS----------F-KERFHASVRRLTPSCEITFIE-SEEGSGRGAALVSAVACKKA----------C---MLGQ',
                'cigar_line': '13M9D2M17DMD5MD50MD348M10DMD21MD20M10DM3D4M',
                'id': 'ENSG00000106633',
                'perc_id': 49.5708,
                'perc_pos': 68.4549,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-------------ILCIASFRSF-SLPLSMQSAVHVTHCLPLQVEKYLE-PFQLSLEMLQEVSARLRKDLIRGLGKRSHHKAPVKMLPTFVRATPDGTEK-GDFLALDLGGTNFRVLHVRV-EEE-EQRVLKMNSQICAIPKEIMLGTGEQLFDHIAACLGEFLESQKLKGQTLPLGFTFSFPCEQLGIDKSILIRWTKGFNCSGVEGKDVVKLLKEAIHRRGDYDIGTVAMVNDTVGTMMSCGYRDQNCEIGMIVGTGTNACYMEEMKHVKRVEGEDGRMCINTEWGGFGDDGSLNDIVTEFDVEVDKTSINPGIHIFEKMISGMYLGEIVRLVLVKMTKDQLLFKGQMSEALRTPEQFETKLISEIED--GLD-NTKKILTTLGLDWEPVDACVVRLVCDTISSRSARLCAAALATLTNRIRTNRKLDHLKTTVGVDGTVYRKSLNTSLSRLPFSSFSI-ELQKAVCLLAPRCDITFL-VSEDGSGKGAAMVTAVCACFLIPAFILATFP-ISV----',
                'cigar_line': '13D10MD25MD50MD20MD3MD244M2D3MD85MD18MD31MD3M4D',
                'id': 'ENSACIG00000019359',
                'perc_id': 46.9512,
                'perc_pos': 64.8374,
                'protein_id': 'ENSACIP00000025420',
                'species': 'amphilophus_citrinellus',
                'taxon_id': 61819},
     'taxonomy_level': 'Vertebrata',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '----MA--MDVTRSQA------------QTA---------LT--L-VEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVES-DTGDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSF-KERFHASVRRLTPSCEITFIE-SEEGSGRGAALVSAVACKKA--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------C-----------------ML----------------------------------------------GQ-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------',
                'cigar_line': '4D2M2D8M12D3M9D2M2DMD5MD50MD270MD79MD21MD20M218DM17D2M46D2M175D',
                'id': 'ENSG00000106633',
                'perc_id': 52.7897,
                'perc_pos': 72.5322,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'YNASF-II---SF---FFLYLLYNSFID---TRCSVSICVR-LHLQVETYLE-PFRLSLDKLQEVSARLEKELIRGLGKHTHHRASVKMLPTFVRATPDGTEK-GDFLALDLGGTNFRVLHVRV-VEE-EQKMLKVDSEICAIPQEIMQGTGEQLFNHIATCLSEFLDSQNLKGQTLPLGFTFSFPCEQKEIDKSILIRWTKGFKCSGVEGKDVVKLLKEAIQRRGDYEIGSVAMVNDTVGTMMSCGYRDQSCEIGMIIGTGTNACYMEEMKNVKRVEGEDGQMCINTEWGGFGDDGSLKDILTGFDSVVDEKSINPGVHIFEKMISGMYLGEIVRLVLVRLTEDKLLFNGQTSEALLTQGKFETRFISEIEHQDSGLE-NTQRILTSLGLDWNEVDARVVLLVCDTISSRSARLCAAALATIANRIRVNRGLDHLKTTVGVDGTVYKKHPNFSE-ELQAAVRLLAPECDITFL-VSEDGSGKGAAMVTAVAQRLALQSRLHLQVDKCLEPFRLSRVKLQEVSARLENDLIRGLGTHTHHSAPVKMLPTFVRATPDGTDKGDFLAVDLGGTNLRVLHIRLDGSTQVQIMSQKESAVPEAIMEGTGEELFKFIADCLSDLNLKGRTLPLGFCFSFPCEQKGIDESILISWSKGFKCSGVVGEDVAELLRKAIKDREDYKIGFVAMANDTVGTMMSCGYTDPPCEIGMIIGTGTNACYMEEMKNVERVEGEDGRMCINTEWGGFGDDGSLKDILTGFDSVVDEKSINPGVHIFEKMISGMYLGEIVRLVLVRLTEDKLLFKGQTSEALLTQGKFETRFISEIEHQDSGLENARRILTSLGLDWNEVDARVVLLVCETISSRSACLCAAALATIANHIRVNRGLDHLKTTVGVDGAVYRMHPNFSKKLKDEVPHLAPKCDIKFMVSQDSSGVGAAMVARTGGAWNIILLINIILCTWLPL',
                'cigar_line': '5MD2M3D2M3D12M3D10MD10MD50MD20MD3MD250MD75MD18MD482M',
                'id': 'ENSPRNG00000017241',
                'perc_id': 26.1981,
                'perc_pos': 35.9957,
                'protein_id': 'ENSPRNP00000046755',
                'species': 'parambassis_ranga',
                'taxon_id': 210632},
     'taxonomy_level': 'Vertebrata',
     'type': 'ortholog_one2one'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_PARALOGUES',
     'source': {'align_seq': 'MA--MDVTR----S----QA----QTALT----------LVEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLG--GTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDK-HQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYY-EDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDT-GDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSF-KERFHASVRRLTPSCEITFIE-SEEGSGRGAALVSAVACKKA---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------C-----------------ML----------------------------------------------GQ---------------------------------------------------------------------------------------------------------------------------------------------------------------------',
                'cigar_line': '2M2D5M4DM4D2M4D5M10D6MD50MD10M2D56MD79MD127MD77MD21MD20M213DM17D2M46D2M165D',
                'id': 'ENSG00000106633',
                'perc_id': 41.6309,
                'perc_pos': 62.6609,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MDSI-----GSSGLRQGEETLSCSE--E-GLPGPSDSSELVQECLQ-QFKVTRAQLQQIQASLLGSMEQALRGQASPAPAVRMLPTYVGSTPHGTEQ-GDFVVLELGATGASLRVLWVTL-TGIEGH-RVEPRSQEFVIPQEVMLGAGQQLFDFAAHCLSEFLDAQ-PVNKQGLQLGFSFSFPCHQTGLDRSTLISWTKGFRCSGVEGQDVVQLLRDAIRRQGAYNIDVVAVVNDTVGTMMGCEPGVRP-CEVGLVVDTGTNACYMEEARHVAVLDEDRGRVCVSVEWGSFSDDGALGPVLTTFDHTLDHESLNPGAQRFEKMIGGLYLGELVRLVLAHLARCGVLFGGCTSPALLSQGSILLEHVAEMEDPSTGAA-RVHAILQDLGLSPGASDVELVQHVCAAVCTRAAQLCAAALAAVLSCLQHSREQQTLQVAVATGGRVCERHPRFCS-VLQGTVMLLAPECDVSLI-PSVDGGGRGVAMVTAVAARLAAHRRLLEETLAPFRLNHDQLAAVQAQMRKAMAKGLRGEASSLRMLPTFVRATPDGSERGDFLALDLGGTNFRVLLVRVTTGVQITSEIYSIPETVAQGSGQQLFDHIVDCIVDFQQKQGLSGQSLPLGFTFSFPCRQLGLDQGILLNWTKGFKASDCEGQDVVSLLREAITRRQAVELNVVAIVNDTVGTMMSCGYEDPRCEIGLIVGTGTNACYMEELRNVAGVPGDSGRMCINMEWGAFGDDGSLAMLSTRFDASVDQASINPGKQRFEKMISGMYLGEIVRHILLHLTSLGVLFRGQQIQRLQTRDIFKTKFLSEIESDSLALRQVRAILEDLGLPLTSDDALMVLEVCQAVSQRAAQLCGAGVAAVVEKIRENRGLEELAVSVGVDGTLYKLHPRFSSLVAATVRELAPRCVVTFLQSEDGSGKGAALVTAVACRLAQLTRV',
                'cigar_line': '4M5D16M2DMD17MD50MD22MD6MD38MD82MD127MD75MD18MD467M',
                'id': 'ENSG00000160883',
                'perc_id': 21.0184,
                'perc_pos': 31.636,
                'protein_id': 'ENSP00000292432',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'taxonomy_level': 'Vertebrata',
     'type': 'within_species_paralog'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_PARALOGUES',
     'source': {'align_seq': '----------MA--MDVTRS-QA---QTALTL--VEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDT-GDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSF-KERFHASVRRLTPSCEITFIE-SEEGSGRGAALVSAVACKKA----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------C-----------------ML----------------------------------------------GQ---------------------------------------------------------------------------------------------------------------------------------------------------------------------',
                'cigar_line': '10D2M2D6MD2M3D6M2D5MD50MD272MD77MD21MD20M220DM17D2M46D2M165D',
                'id': 'ENSG00000106633',
                'perc_id': 48.7124,
                'perc_pos': 70.6009,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MGQICQRESAT-AA---EKPK-LHLLA--E--SEIDKYLY-AMRLSDETLIDIMTRFRKEMKNGLSRDFNPTATVKMLPTFVRSIPDGSEK-GDFIALDLGGSSFRILRVQV-NHEKNQ-NVHMESEVYDTPENIVHGSGSQLFDHVAECLGDFMEKRKIKDKKLPVGFTFSFPCQQSKIDEAILITWTKRFKASGVEGADVVKLLNKAIKKRGDYDANIVAVVNDTVGTMMTCGYDDQHCEVGLIIGTGTNACYMEELRHIDLVEGDEGRMCINTEWGAFGDDGSLEDIRTEFDREIDRGSLNPGKQLFEKMVSGMYLGELVRLILVKMAKEGLLFEGRITPELLTRGKFNTSDVSAIEKNKEGLH-NAKEILTRLGVEPSDDDCVSVQHVCTIVSFRSANLVAATLGAILNRLRDNKGTPRLRTTVGVDGSLYKTHPQYSR-RFHKTLRRLVPDSDVRFL-LSESGSGKGAAMVTAVAYRLAEQHRQIEETLAHFHLTKDMLLEVKKRMRAEMELGLRKQTHNNAVVKMLPSFVRRTPDGTENGDFLALDLGGTNFRVLLVKIRSGKKRTVEMHNKIYAIPIEIMQGTGEELFDHIVSCISDFLDYMGIKGPRMPLGFTFSFPCQQTSLDAGILITWTKGFKATDCVGHDVVTLLRDAIKRREEFDLDVVAVVNDTVGTMMTCAYEEPTCEVGLIVGTGSNACYMEEMKNVEMVEGDQGQMCINMEWGAFGDNGCLDDIRTHYDRLVDEYSLNAGKQRYEKMISGMYLGEIVRNILIDFTKKGFLFRGQISETLKTRGIFETKFLSQIESDRLALLQVRAILQQLGLNSTCDDSILVKTVCGVVSRRAAQLCGAGMAAVVDKIRENRGLDRLNVTVGVDGTLYKLHPHFSRIMHQTVKELSPKCNVSFLLSEDGSGKGAALITAVGVRLRTEASS',
                'cigar_line': '11MD2M3D4MD5M2DM2D8MD50MD20MD6MD247MD75MD18MD474M',
                'id': 'ENSG00000156515',
                'perc_id': 24.6471,
                'perc_pos': 35.722,
                'protein_id': 'ENSP00000494664',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'taxonomy_level': 'Vertebrata',
     'type': 'within_species_paralog'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_PARALOGUES',
     'source': {'align_seq': 'MA--MDVTRS-QA---QTALT-----L--VEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDT-GDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSF-KERFHASVRRLTPSCEITFIE-SEEGSGRGAALVSAVACKKA----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------C-----------------ML----------------------------------------------GQ---------------------------------------------------------------------------------------------------------------------------------------------------------------------',
                'cigar_line': '2M2D6MD2M3D5M5DM2D5MD50MD272MD77MD21MD20M220DM17D2M46D2M165D',
                'id': 'ENSG00000106633',
                'perc_id': 53.4335,
                'perc_pos': 74.2489,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'M-IA---SHLL-AYFFT--E-LNHDQVQKVDQYLY-HMRLSDETLLEISKRFRKEMEKGLGATTHPTAAVKMLPTFVRSTPDGTEH-GEFLALDLGGTNFRVLWVKV-TDNGLQ-KVEMENQIYAIPEDIMRGSGTQLFDHIAECLANFMDKLQIKDKKLPLGFTFSFPCHQTKLDESFLVSWTKGFKSSGVEGRDVVALIRKAIQRRGDFDIDIVAVVNDTVGTMMTCGYDDHNCEIGLIVGTGSNACYMEEMRHIDMVEGDEGRMCINMEWGAFGDDGSLNDIRTEFDQEIDMGSLNPGKQLFEKMISGMYMGELVRLILVKMAKEELLFGGKLSPELLNTGRFETKDISDIEGEKDGIR-KAREVLMRLGLDPTQEDCVATHRICQIVSTRSASLCAATLAAVLQRIKENKGEERLRSTIGVDGSVYKKHPHFAK-RLHKTVRRLVPGCDVRFL-RSEDGSGKGAAMVTAVAYRLADQHRARQKTLEHLQLSHDQLLEVKRRMKVEMERGLSKETHASAPVKMLPTYVCATPDGTEKGDFLALDLGGTNFRVLLVRVRNGKWGGVEMHNKIYAIPQEVMHGTGDELFDHIVQCIADFLEYMGMKGVSLPLGFTFSFPCQQNSLDESILLKWTKGFKASGCEGEDVVTLLKEAIHRREEFDLDVVAVVNDTVGTMMTCGFEDPHCEVGLIVGTGSNACYMEEMRNVELVEGEEGRMCVNMEWGAFGDNGCLDDFRTEFDVAVDELSLNPGKQRFEKMISGMYLGEIVRNILIDFTKRGLLFRGRISERLKTRGIFETKFLSQIESDCLALLQVRAILQHLGLESTCDDSIIVKEVCTVVARRAAQLCGAGMAAVVDRIRENRGLDALKVTVGVDGTLYKLHPHFAKVMHETVKDLAPKCDVSFLQSEDGSGKGAALITAVACRIREAGQR',
                'cigar_line': 'MD2M3D4MD5M2DMD14MD50MD20MD6MD247MD75MD18MD474M',
                'id': 'ENSG00000159399',
                'perc_id': 27.1538,
                'perc_pos': 37.7317,
                'protein_id': 'ENSP00000290573',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'taxonomy_level': 'Vertebrata',
     'type': 'within_species_paralog'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_PARALOGUES',
     'source': {'align_seq': 'MA--MDVTRS-QA---QTALT-----L--VEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDT-GDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSF-KERFHASVRRLTPSCEITFIE-SEEGSGRGAALVSAVACKKA---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------C-----------------ML----------------------------------------------GQ----------------------------------------------------------------------------------------------------------------------------------------------------------------------',
                'cigar_line': '2M2D6MD2M3D5M5DM2D5MD50MD272MD77MD21MD20M219DM17D2M46D2M166D',
                'id': 'ENSG00000106633',
                'perc_id': 48.4979,
                'perc_pos': 69.0987,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'M-FA---VHLM-AFYFS--K-LKEDQIKKVDRFLY-HMRLSDDTLLDIMRRFRAEMEKGLAKDTNPTAAVKMLPTFVRAIPDGSEN-GEFLSLDLGGSKFRVLKVQV-AEEGKR-HVQMESQFYPTPNEIIRGNGTELFEYVADCLADFMKTKDLKHKKLPLGLTFSFPCRQTKLEEGVLLSWTKKFKARGVQDTDVVSRLTKAMRRHKDMDVDILALVNDTVGTMMTCAYDDPYCEVGVIIGTGTNACYMEDMSNIDLVEGDEGRMCINTEWGAFGDDGALEDIRTEFDRELDLGSLNPGKQLFEKMISGLYLGELVRLILLKMAKAGLLFGGEKSSALHTKGKIETRHVAAMEKYKEGLA-NTREILVDLGLEPSEADCIAVQHVCTIVSFRSANLCAAALAAILTRLRENKKVERLRTTVGMDGTLYKIHPQYPK-RLHKVVRKLVPSCDVRFL-LSESGSTKGAAMVTAVASRVQAQRKQIDRVLALFQLTREQLVDVQAKMRAELEYGLKKKSHGLATVRMLPTYVCGLPDGTEKGKFLALDLGGTNFRVLLVKIRSGRRSVRMYNKIFAIPLEIMQGTGEELFDHIVQCIADFLDYMGLKGASLPLGFTFSFPCRQMSIDKGTLIGWTKGFKATDCEGEDVVDMLREAIKRRNEFDLDIVAVVNDTVGTMMTCGYEDPNCEIGLIAGTGSNMCYMEDMRNIEMVEGGEGKMCINTEWGGFGDNGCIDDIWTRYDTEVDEGSLNPGKQRYEKMTSGMYLGEIVRQILIDLTKQGLLFRGQISERLRTRGIFETKFLSQIESDRLALLQVRRILQQLGLDSTCEDSIVVKEVCGAVSRRAAQLCGAGLAAIVEKRREDQGLEHLRITVGVDGTLYKLHPHFSRILQETVKELAPRCDVTFMLSEDGSGKGAALITAVAKRLQQAQKEN',
                'cigar_line': 'MD2M3D4MD5M2DMD14MD50MD20MD6MD247MD75MD18MD474M',
                'id': 'ENSG00000156510',
                'perc_id': 24.6456,
                'perc_pos': 35.1145,
                'protein_id': 'ENSP00000346643',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'taxonomy_level': 'Vertebrata',
     'type': 'within_species_paralog'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTA-LT---L-VEQIL-AEFQLQEE--DLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYS-IPEDAMTGTAEMLFDYISECISDFLDK-HQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFE--MDVVAMVNDTVATMISCYY-EDHQCEVGMIVGTGCNACYMEEMQNV-ELV-EGDEGR----MCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQV--ESDT-GDRKQIYNILSTLGLR-PSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVM-RITVGVDGSVYKLHPS-F-KERFHASVRRLTPS-CEITFIE-SEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': '13MD2M3DMD5MD8M2D42MD39MD27MD60M2D19MD26MD3MD6M4D88M2D4MD16MD44MD16MDMD14MD7MD20MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 30.6867,
                'perc_pos': 53.8627,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-------------MKVLPP-EVEEILA-KFRLN--REQLQEISEKVEQQMKMGLAK--TQGSSIAMLPSYVPALPDGTET-GKYVAIDLSGKNLRIMLLTM-NGAG---TTPTHETVNYIVANHVMKGTGDQLFTFIVNCLQRFLQEF-GLVDANLPIGFVFSYPCELLSIRSARLLWWTKGFDIKDCLQRDIVALLEEALEM--NMSTKVSIKAVMNDTVGQLAAAAHKYGPECTIGVVIGYGCNSSYLEKTSRITKFDAKA-RGYDHDNMIVVTEWEEFGKHGELDDILTQFDREVDAASVHKGKQLIDKLCGALYIGEVVRRVLSQLVLDRVLFEGQSCEKLDEDESFPTKYISEILGEE--EGVFKACRRICEELEVEMHGTGDYIIIREVCDVISRRGASIVAAAISALLRHLE-------LSSVKIGVGGALIQFHP-TYHQ-MLKEKLEELTPITMKFELV-PADEGSCQGAALIAAVAERLKL-----',
                'cigar_line': '13D6MD7MD5M2D21M2D22MD20MD4M3D39MD54M2D58MD99M2D54M7D17MD4MD19MD22M5D',
                'id': 'WBGene00022306',
                'perc_id': 31.7073,
                'perc_pos': 55.6541,
                'protein_id': 'Y77E11A.1a.2',
                'species': 'caenorhabditis_elegans',
                'taxon_id': 6239},
     'taxonomy_level': 'Bilateria',
     'type': 'ortholog_one2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA-QTALT---------L---VEQIL-AEFQLQEEDLK-KVMRRMQKEMDRGLRL-ET-HE---EASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTG---TAEMLFDYISECISDFLDK-H--QMK-----HKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRG---DFEMDVVAMVNDTVATMISCYY------EDHQCEVGM-IV----GTGCNACYMEEMQNV-----ELV---EGDEGR--MCVNTEWGAFGDSGELDE-FLLEYDRLVDES-SANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEA----SE-QLRTRGAFETRFVSQVE-SDT-GDRKQIYNILSTLGLR-PST-TDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVM------RITVGVDGSVYKLHPS-FKERFHASVR---RLTPSCEITFIESEEGS-G-RGAALVSAVACKKACMLGQ---------------',
                'cigar_line': '10MD5M9DM3D5MD11MD16MD2MD2M3D19MD47M3D19MDM2D3M5D53M3D22M6D9MD2M4D15M5D3M3D6M2D18MD12MD40M4D2MD17MD3MD16MD3MD41M6D16MD10M3D17MDMD19M15D',
                'id': 'ENSG00000106633',
                'perc_id': 31.1159,
                'perc_pos': 51.073,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'M--------SF---E-NLHKVNAEALEDAVVEICS-SLQVDAAKL-DELTAYFIECMEKGLNNTSVGEEKTVDKGLPMIPTYVTSLPNGTER-GVLLAADLGGTHFRVCSVTL-NGDG---TFDMQQLKSKIPEEYLNDKDVTSEELFSYLGRRTRAFVRKHHPELLKSTGENIKPLKMGFTFSYPVDQTSLSSGTLIRWTKSFKIEDTVGKDVVRLYQEQLDIQGLSM---INVVALTNDTVGTFLSHCYTSGSRPS-SAGEISEPVIGCIFGTGTNGCYMEDIENIKKLPDEL-RTRLLHEGKTQMCINIEWGSFDNE--LKHLSATKYDIDIDQKFSPNPGYHLFEKRISGMYLGELLRNILVDLHARGLILGQYRNYDQLPHRLKTPFQLCSEVLSRIEIDDSTNLRETELSFLQS--LRLPTTFEERKAIQNLVRSITRRSAYLAAVPIAAIL--IKTNA----LNKRYHGEVEIGFDGYVIEYYP-GF----RSMLRHALALSPI----------GTEGERKIHL------RLA-----KDGSGVGAALCALVA',
                'cigar_line': 'M8D2M3DMD19MD9MD46MD20MD4M3D108M3D26MD36MD24M2D98M2D36M2D5M4D22MD2M4D13M10D10M6D3M5D15M',
                'id': 'YDR516C',
                'perc_id': 29,
                'perc_pos': 47.6,
                'protein_id': 'YDR516C',
                'species': 'saccharomyces_cerevisiae',
                'taxon_id': 4932},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA-QTALT---------L---VEQIL-AEFQLQEEDLK-KVMRRMQKEMDRGLRL-ET-HE---EASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTG---TAEMLFDYISECISDFLDK-H--QMK-----HKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRG---DFEMDVVAMVNDTVATMISCYY------EDHQCEVGM-IV----GTGCNACYMEEMQNV-----ELV---EGDEGR--MCVNTEWGAFGDSGELDE-FLLEYDRLVDES-SANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEA----SE-QLRTRGAFETRFVSQVE-SDT-GDRKQIYNILSTLGLR-PST-TDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVM------RITVGVDGSVYKLHPS-FKERFHASVR---RLTPSCEITFIESEEGS-G-RGAALVSAVACKKACMLGQ---------------',
                'cigar_line': '10MD5M9DM3D5MD11MD16MD2MD2M3D19MD47M3D19MDM2D3M5D53M3D22M6D9MD2M4D15M5D3M3D6M2D18MD12MD40M4D2MD17MD3MD16MD3MD41M6D16MD10M3D17MDMD19M15D',
                'id': 'ENSG00000106633',
                'perc_id': 30.4721,
                'perc_pos': 53.0043,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'M--------SF---D-DLHKATERAVIQAVDQICD-DFEVTPEKL-DELTAYFIEQMEKGLAPPKEGHTLASDKGLPMIPAFVTGSPNGTER-GVLLAADLGGTNFRICSVNL-HGDH---TFSMEQMKSKIPDDLLDDENVTSDDLFGFLARRTLAFMKKYHPDEL-AKGKDAKPMKLGFTFSYPVDQTSLNSGTLIRWTKGFRIADTVGKDVVQLYQEQLSAQGMPM---IKVVALTNDTVGTYLSHCYTSDNTDSMTSGEISEPVIGCIFGTGTNGCYMEEINKITKLPQEL-RDKLIKEGKTHMIINVEWGSFDNE--LKHLPTTKYDVVIDQKLSTNPGFHLFEKRVSGMFLGEVLRNILVDLHSQGLLLQQYRSKEQLPRHLTTPFQLSSEVLSHIEIDDSTGLRETELSLLQS--LRLPTTPTERVQIQKLVRAISRRSAYLAAVPLAAIL--IKTNA----LNKRYHGEVEIGCDGSVVEYYP-GF----RSMLRHALALSPL----------GAEGERKVHL------KIA-----KDGSGVGAALCALVA',
                'cigar_line': 'M8D2M3DMD19MD9MD46MD20MD4M3D46MD61M3D63MD24M2D98M2D36M2D5M4D22MD2M4D13M10D10M6D3M5D15M',
                'id': 'YCL040W',
                'perc_id': 28.4,
                'perc_pos': 49.4,
                'protein_id': 'YCL040W',
                'species': 'saccharomyces_cerevisiae',
                'taxon_id': 4932},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-------MA------------MDVTR-SQAQTALT----------------LVEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGR----MCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDT-GDRKQIYNILSTLGLR-PSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFK-ERFHASVR-RLTPSCEITFIE-SEEGSGRGAALVSAVACKKA-CMLGQ---',
                'cigar_line': '7D2M12D5MD8M16D6MD50MD180M4D92MD16MD62MD8MD12MD20MD5M3D',
                'id': 'ENSG00000106633',
                'perc_id': 40.5579,
                'perc_pos': 62.4464,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MRKSTRLLTHSLFGPVFKILF----HN------KTVCGGCNRKMPSLVNTE-IEAAVK-GFLIDQEKMTEVVERMTKEIKMGLAKDTHARAVIKCFVSHVQDLPTGKER-GKYLALDLGGSNFRVLLVNL-ISNS---DVETMSKGYNFPQTLMSGSGKALFDFLAECLSEFCHSHGLENESLALGFTFSFPLQQQGLSKGILVAWTKGFSCEGVVGKNVVSLLQEAIDRRGDLKINTVAILNDTVGTLMSCAFYHPNCRIGLIVGTGSNACYVEKTVNAECFEGYQTSPKPSMIINCEWGAFGDNGVLEFVRTSYDKAVDKVTPNPGKQTFEKCISGMYMGELVRLVITDMIAKGFMFHGIISEKIQERWSFKTAYISDVESDAPGEYRNCNKVLSELGILGCQEPDKEALRYICEAVSSRSAKLCACGLVTIINKMNINE------VAIGIDGSVYRFHPKY-HDMLQYHMKKLLKPGVKFELV-VSEDGSGRGAALVAATAVQA-K-----SKL',
                'cigar_line': '21M4D2M6D18MD6MD50MD20MD4M3D304M6D16MD21MD20MDM5D3M',
                'id': 'FBgn0042710',
                'perc_id': 38.8889,
                'perc_pos': 59.8765,
                'protein_id': 'FBpp0084383',
                'species': 'drosophila_melanogaster',
                'taxon_id': 7227},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': '-MA--MDVTRSQAQTALTLVEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGR----MCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEA------SEQLRTRGAFETRFVSQVESDT-GDRKQIYNILSTL-GLR-PSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFK-ERFHASVR-RLTPSCEITFIE-SEEGSGRGAALVSAVACKKA-CMLGQ',
                'cigar_line': 'D2M2D19MD50MD180M4D70M6D22MD13MD3MD62MD8MD12MD20MD5M',
                'id': 'ENSG00000106633',
                'perc_id': 42.7039,
                'perc_pos': 61.588,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MLDAE--------------VRELMQ-PFVLSDYQVQEVYSRFCLEVARGLKRSTHPQANVKCFPTYVQDLPTGDEM-GKYLALDLGGTNFRVLLVSL-KGHH---DATVDSQIYAVPKDLMVGPGVDLFDHIAGCLAKFVEKHDMKTAYLPLGFTFSFPCVQLGLKEGILVRWTKGFDCAGVEGEDVGRMLHEAIQRRGDADIAVVAILNDTTGTLMSCAHRNADCRVGVIVGTGCNACYVEDVENVDLLRADFKKTKRSVIVNAEWGAFGEGGQLDFVRTEYDREVDEKSLNRSEQLFEKMTAGMYLGNLVRLVLLRALERKLIFKQSSRRPEFASVLQRNEEVFETRYISEIEDDSFPEFASTRKIVKNLFGLEKASVEDCQTLRYICECVAKRAATLVAIGVSGLVNRTSNRR------VIVGMDGSVYRYHPKF-DAYMRQTLQKLVKADKEWDIM-LSEDGSGRGAALVAAVASKT-K-----',
                'cigar_line': '5M14D6MD50MD20MD4M3D311M6D16MD21MD20MDM5D',
                'id': 'FBgn0001187',
                'perc_id': 43.8326,
                'perc_pos': 63.2159,
                'protein_id': 'FBpp0086530',
                'species': 'drosophila_melanogaster',
                'taxon_id': 7227},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA----------------MD-VTR-----S------------QA---------QTA---LT--------------------------L---------VEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGR---MCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDT-GDRKQIYNILSTLGLR-PSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVMRITVGVDGSVYKLHPSFK-ERFHASVR-RLTPSCEITFIE-SEEGSGRGAALVSAVACKKA---CMLGQ----',
                'cigar_line': '2M16D2MD3M5DM12D2M9D3M3D2M26DM9D5MD50MD180M3D92MD16MD62MD8MD12MD20M3D5M4D',
                'id': 'ENSG00000106633',
                'perc_id': 45.4936,
                'perc_pos': 65.6652,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'MDRELNGAMKSVSINSAQ--LNGHNNGGGLDETDRVGVAQGA-ALSATEKITTTTAAATKSATATTNATTATATTTNLTTHSPQQIALLSAAEKSKMVHELCQ-QLLLTDEQVQELCYRILHELRRGLAKDTHPKANVKCFVTYVQDLPNGNER-GKFLALDLGGTNFRVLLIHL-QENN---DFQMESRIYAIPQHIMIGSGTQLFDHIAECLSNFMAEHNVYKERLPLGFTFSFPLRQLGLTKGLLETWTKGFNCAGVVNEDVVQLLKDAIARRGDVQIDVCAILNDTTGTLMSCAWKNHNCKIGLIVGTGANACYMERVEEAELFAAEDPRKKHVLINTEWGAFGDNGALDFVRTEFDRDIDVHSINPGKQTFEKMISGMYMGELVRLVLVKMTQAGILFNGQDSEVLNTRGLFFTKYVSEIEADEPGNFTNCRLVLEELGLTNATDGDCANVRYICECVSKRAAHLVSAGIATLINKMDEPT------VTVGVDGSVYRFHPKF-HNLMVEKISQLIKPGITFDLM-LSEDGSGRGAALVAAVACRE-DIL-----NGKK',
                'cigar_line': '18M2D22MD60MD50MD20MD4M3D303M6D16MD21MD20MD3M5D4M',
                'id': 'FBgn0001186',
                'perc_id': 39.1867,
                'perc_pos': 56.5619,
                'protein_id': 'FBpp0071296',
                'species': 'drosophila_melanogaster',
                'taxon_id': 7227},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA----QTA-LT-----L--VEQILAEFQLQEEDLKKVMRRMQKEMDRGLRLET-HEEASVKMLP---TYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKR-RGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGR--MCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVESDT-GDRKQIYNILSTL----GLRPST-TDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDVM-RITVGVDGSVYKLHPS-F-KERFHASVR--RLTPSCEITFIE-SEEGSGRGAALVSAVAC---KKA---CMLGQ------',
                'cigar_line': '10M4D3MD2M5DM2D34MD10M3D11MD121MD59M2D92MD13M4D6MD41MD16MDMD9M2D12MD17M3D3M3D5M6D',
                'id': 'ENSG00000106633',
                'perc_id': 29.8283,
                'perc_pos': 52.7897,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-------M-ANTFN---PE-EDFPEVYKVCK---LFNPSIDDLEKIKNAMDREITMGLSR--D--HHDRSTVPCHLSYVQDLPTGRER-GQFLALEMMPTNCRIMLVKF-SSER---DIYTSSKCVIMPHTVAAGRGTEVFTFLATSIANFVKEKKVDKDNLPLGIAFAFTLKKLALDVGILVSWTKEFGAQGAIGKDVVQLLRDALAKFP-EISVDVMGIINVGAGSLLALCWAQPDTRIGLIMGSIANSCYVERVERCETYEGDEYRKLMIINSDWAHFGDTGQLDFIRNEYDRQLDTESINPGTRIYEKFSGALCMGELVRIIVLRLMKSGAIFAEDRRDYIGIQWKLDMVSLIEIVSDPPGVYTKAQEVMDKFRIRH-CK---ERDLAALKYICDTVTNRAAMLVASGVSCLIDRMR-------LPQISIAVDGGIYRLHP-TFST-VLNKYTRLL-ADPNYNFEFV-ITQDSCGVGAAIMAGMAHANKYKTDAK-----LFTMDY',
                'cigar_line': '7DMD5M3D2MD11M3D26M2DM2D23MD20MD4M3D94MD169MD2M3D34M7D17MD4MD9MD10MD27M5D6M',
                'id': 'FBgn0042711',
                'perc_id': 29.8925,
                'perc_pos': 52.9032,
                'protein_id': 'FBpp0084382',
                'species': 'drosophila_melanogaster',
                'taxon_id': 7227},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQAQTALTLVE-Q-IL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEE--GQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDK-HQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRG--------------------DFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVG-----------TGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVES--DTGDRKQIYNILSTL--G-LRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESR-SEDVMRITVGVDGSVYKLHPSF-KERFHASVRRLTPS--CEITFIE-SEEGSGRGAALVSAVACKKA----CMLGQ-',
                'cigar_line': '18MDMD2MD50MD26M2D40MD57M20D34M11D113M2D15M2DMD41MD22MD14M2D7MD20M4D5MD',
                'id': 'ENSG00000106633',
                'perc_id': 48.927,
                'perc_pos': 68.8841,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '------------------IKLTLD-DLHLSNEQLTKIMKKMIKEMHKGLGKDTHDDATVKMIPSYVKSLPDGTER-GSFLALDLGGTNFRVLLVKIKEGDKLDGKPKIEMDSQIYRMPEDVIVGEGEKLFDHIAMCMADFLKRL-DLLDQRLPVGFTFSFPCQQDGLDQATLITWTKGFSAPGVVGKNIVKMLKDAIDRRGVSLELTSCLTIYGQTFKMMHDMDVDIIAVVNDTVGTMTSCAFDDQECMVGLIVGNNLVYLTTFLCTGSNACYMEKMSNIERVDSDKGEMCVNMEWGAFGDDGALSEYRNEYDAHVDENSLNCGKQLYEKMISGMYMGEIVRLVLVKLTDDGLLFGGKGSDALRTRGSFQTSYVSQIESAIPSGMT-AVQNILATLDIGAMR---HDCEIVIQVCRAVSRRAAHLCAAGQWSVVVSI-ALHPEQEVLRMTCGVDGTVYKKHPTFSD-IMSEKVNELCAGADVAVNFA-LSYDGSGKGAALITAVAQRA-INAE-----Q',
                'cigar_line': '18D6MD50MD68MD241MD15M3D32MD28MD20MD20MD4M5DM',
                'id': 'ENSCSAVG00000000629',
                'perc_id': 47.0103,
                'perc_pos': 66.1856,
                'protein_id': 'ENSCSAVP00000001127',
                'species': 'ciona_savignyi',
                'taxon_id': 51511},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA------MD-VTRSQA-QTALT---L--VEQIL--AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGE---EGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGR--MCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQV-ESDT----GDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDV-MRITVGVDGSVYKLHPSF-KERFHASVRRLTPS--CEITFIE-SEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M6D2MD6MD5M3DM2D5M2D50MD25M3D155M2D88MD4M4D59MD18MD14M2D7MD25M',
                'id': 'ENSG00000106633',
                'perc_id': 39.6996,
                'perc_pos': 60.9442,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'VVVIGICS--IFIKMGSY---Q-PYL-QSLKELLHV-----TDAQLTTVSDRMLQDMTYGLQLSRKSKTQMEMLPSFVDSLPDGSER-GAFIGLDLGGTNLRVLLLTL-SDPVDNGSKPVADIKSESFKVTKDLLEGTSAQLFDFIAEKMASFAHKNGLVGKKLPVGFTFSFPFDQDRINHAILKAWTKAYHIKDGVGDDVVQMLHDAIARQGDLNCEVVAVCNDTVGTLVSGVAEDQNCQIGLIVGTGTNAAYLEKVSNIESVESQGADRWMCVDMEWEYFADTGCLDQFLTEFDKQVDASSPMPGQFIFEKMISGMYMGEIVRSILCKLAKVDNLFAGNISETLATTDAFLSRYVSDITE-EAIAEHGKTEVVTKILSSVGVTPSSEDVVIVQLVCEFVSTRAAHLCAAGVSAIARKIKANHPDENDLVITAGVDGSVYAGHPTFDT-MLEDKTAQLCSAHGVKVQFI-HAKDGSGKGAALIAA-----------',
                'cigar_line': '8M2D8M3DMD3MD9M5D46MD20MD253MD86MD20MD15M11D',
                'id': 'ENSCSAVG00000004672',
                'perc_id': 39.4456,
                'perc_pos': 60.5544,
                'protein_id': 'ENSCSAVP00000007813',
                'species': 'ciona_savignyi',
                'taxon_id': 51511},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA-QTALT---L--VEQIL--AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGE---EGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGR--MCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQV-ESDT----GDRKQIYNILSTLGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDV-MRITVGVDGSVYKLHPSF-KERFHASVRRLTPS--CEITFIE-SEEGSGRGAALVSAVACKKA----CMLGQ----',
                'cigar_line': '10MD5M3DM2D5M2D50MD25M3D155M2D88MD4M4D59MD18MD14M2D7MD20M4D5M4D',
                'id': 'ENSG00000106633',
                'perc_id': 37.5536,
                'perc_pos': 60.0858,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '------KMGSF---Q-PHL-EKLKKLMHI-----NDVQLALISDRMLQDMSIGLQKSTKSNVRMEMLPSYVDSLPDGSER-GAYIGLDLGGTNLRVLLLTL-TDSIDGGAKFDATIKSESYKVPNEKLEGTSAELFDFIAANMVDFAIKNGLEEKMLPVGFTFSFPFDQDRIDHAILKQWTKAYNIKDGVGEDVVQMLRDAIARQGSLKFEVVAVCNDTVGTLVSGVSEDQNCQIGLIVGTGTNAAYLEKVSNIESVNGYKDDRFMCVDMEWEYFADTGALNHFVTEFDKQVDATSPMPGEFIFEKMISGMYLGEIVRLILCQLASVGNIFNEKCLGDLGTTGGFDSRYVSDITE-EAIAGHGETNVVKSILASVGVKASQGDVHTVQLVCEFVSIRAAHLCAAGISAVARKIKANHPEKNDLVVTAGVDGSVYAGHPTFDT-LLEDKTDELCRNHGVKVQFI-RAKDGSGKGAALIAAVLTKV-STLV-----LTTL',
                'cigar_line': '6D5M3DMD3MD9M5D46MD20MD253MD86MD20MD20MD4M5D4M',
                'id': 'ENSCING00000009548',
                'perc_id': 37.155,
                'perc_pos': 59.448,
                'protein_id': 'ENSCINP00000030113',
                'species': 'ciona_intestinalis',
                'taxon_id': 7719},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA--QTALT-L-VEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRR-GDFEMDVVA-MVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELV---EGDEGRMCVNTEWGAFGDS-GELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQV-E-S-DTGDRKQIYNILST-LGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDV--MRITVGVDGSVYKLHPSF-KERFHASVRRLTPSCEITFIE-SEEGSGRGAALVSAVACKKA----CMLGQ--',
                'cigar_line': '10M2D5MDMD5MD50MD122MD9MD43M3D19MD75MDMDMD14MD47M2D18MD21MD20M4D5M2D',
                'id': 'ENSG00000106633',
                'perc_id': 41.8455,
                'perc_pos': 61.1588,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '-------M--LN-----V-KVDHVIE-SLSLSDDHLMRLSSKMSQELVRGLHQSTNDEAEIKMLPSFVTSTPDGSEN-GEFLALDLGGTNFRIILVKI-QSG-DSPKIQMDNQVYAISNELMTGTGTQLFDHMVNCLWDFLVERDMMCQLLPIGFTFSFPTKNLGIKQTILVNWSKGFTATGVVGEDIGQLLNDAINRKFKNFELKIMATVVNDTVGTLVSCAFDHHDTCMGLIVGTGTNMCYMEAQSNIELLNNHKTLEGEMCINTEWGAFGDNSGALDEIKTSYDIDIDRNSPNVGQHIFEKMISGMYMGELARLIIVDLSNKGHLFQSIDSNSLFYKSGFSTAFVSQILHMNDNCSQALGTTDIFKNKYGVTCSDEDMTKLRKICESLSIRAASLCAIGVIAVARKIIEHR----GQRHLVVGVDGSVYRKHPTFKS-LLINTTHRLAPELNIDFQ-LSTDGSGRGAALVAAVESRI-QHIV-----TQ',
                'cigar_line': '7DM2D2M5DMD7MD50MD20MD3MD311M4D22MD18MD20MD4M5D2M',
                'id': 'ENSCING00000018731',
                'perc_id': 42.2994,
                'perc_pos': 61.8221,
                'protein_id': 'ENSCINP00000033264',
                'species': 'ciona_intestinalis',
                'taxon_id': 7719},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MAMDVTRSQA---QTALT---L-------VE-Q-IL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEE--GQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDK-HQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRRGDFEMDVVAMVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELVEGDEGRMCVNTEWGAFGDSGELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQVES--DTGDRKQIYNILSTL--G-LRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESR-SEDVMRITVGVDGSVYKLHPSF-KERFHASVRRLTPS--CEITFIE-SEEGSGRGAALVSAVACKKA----CMLGQ-',
                'cigar_line': '10M3D5M3DM7D2MDMD2MD50MD26M2D40MD204M2D15M2DMD41MD22MD14M2D7MD20M4D5MD',
                'id': 'ENSG00000106633',
                'perc_id': 47.6395,
                'perc_pos': 70.1717,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': 'LP---CH-SSFTVTVCRSLCNISKGLGEFLEVKLTLD-ELNLSNQQLTKIMEKMIKEMVKGLGKDTNEDATVKMIPSYVKSLPDGTER-GQFLALDLGGTNFRVLLVKIKEADEINGQPKIEMDSQIYRMPENVITGKGDELFDHIALCMADFLKKL-DLLDHKLPVGFTFSFPCKQDGLDHATLITWTKGFSASNVVGKDIVKMLKTAIDKRGDLDVDIIAVVNDTVGTMTSCAFDDQECMIGLIVGTGSNACYMEKMSNIERLDSNKGGMCINMEWGAFGDDGALSDYRNEYDVHVDENSLNSGKQLYEKMISGMYMGEIVRLVLVKLTEDGLLFGGETSEALKTPGTFQTSYVSQIESAIPSGMT-AVQNILANLGIGAMR---ADCEVVIQVCKAVSRRAAHLCAAGIAAVARKIKANHPDRETLRMTVGVDGTVYKKHPTFSQ-MMSEKVDELCAGAGVDVHFA-LSYDGSGKGAALITAVAQRK-IGSD-----E',
                'cigar_line': '2M3D2MD29MD50MD68MD210MD15M3D61MD20MD20MD4M5DM',
                'id': 'ENSCING00000006724',
                'perc_id': 46.0581,
                'perc_pos': 67.8423,
                'protein_id': 'ENSCINP00000013803',
                'species': 'ciona_intestinalis',
                'taxon_id': 7719},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}
    {'dn_ds': None,
     'method_link_type': 'ENSEMBL_ORTHOLOGUES',
     'source': {'align_seq': 'MA--MDVTRSQA--QTALT-L-VEQIL-AEFQLQEEDLKKVMRRMQKEMDRGLRLETHEEASVKMLPTYVRSTPEGSE-VGDFLSLDLGGTNFRVMLVKVGEGEEGQWSVKTKHQMYSIPEDAMTGTAEMLFDYISECISDFLDKHQMKHKKLPLGFTFSFPVRHEDIDKGILLNWTKGFKASGAEGNNVVGLLRDAIKRR-GDFEMDVVA-MVNDTVATMISCYYEDHQCEVGMIVGTGCNACYMEEMQNVELV----EGDEGRMCVNTEWGAFGDS-GELDEFLLEYDRLVDESSANPGQQLYEKLIGGKYMGELVRLVLLRLVDENLLFHGEASEQLRTRGAFETRFVSQV-E-S-DTGDRKQIYNILST-LGLRPSTTDCDIVRRACESVSTRAAHMCSAGLAGVINRMRESRSEDV--MRITVGVDGSVYKLHPSF-KERFHASVRRLTPSCEITFIE-SEEGSGRGAALVSAVACKKACMLGQ',
                'cigar_line': '2M2D8M2D5MDMD5MD50MD122MD9MD43M4D19MD75MDMDMD14MD47M2D18MD21MD25M',
                'id': 'ENSG00000106633',
                'perc_id': 42.9185,
                'perc_pos': 61.1588,
                'protein_id': 'ENSP00000223366',
                'species': 'homo_sapiens',
                'taxon_id': 9606},
     'target': {'align_seq': '--IY-----I--FV-----L-QVDKVIE-AFTLSDEKLMHLSTKLFEQLFKGLGQATNEEAELKMLPSYVTSTPDGTEH-GDFLALDLGGTNFRIILVKI-TPN-PNSNIQMDNQVYSISHKLMTGTGTKLFDHLVNCLWDFLVERDMMCQLLPIGFTFSFPTRHLGIKKTILVNWSKGFTASGVVGEDIGQLLNDAINRKFKNFELKIMSTVVNDTVGTMVSCAYDHHETCMGLIVGTGTNMCYMESQSNTEMLGDNFRSLEGEMCINTEWGAFGDNSGSLDEVKTSYDIAIDHNSPNQGEHIYEKMISGMYMGELVRRIIVDLSAKGELFQKVDEHSILYDGGFSTAFVSQILQPNIDATMTME----YLRSFGVTANIDDVAKVKKICEAVSVRAAALCAVGVVAVARKIEKNR----GHVRMVVGVDGSVYRKHPTFKN-VLIDTTRRLAPELNIGFE-VSTDGSGRGAALVAAV----------',
                'cigar_line': '2D2M5DM2D2M5DMD7MD50MD20MD3MD261M4D47M4D22MD18MD16M10D',
                'id': 'ENSCSAVG00000011413',
                'perc_id': 44.4444,
                'perc_pos': 63.3333,
                'protein_id': 'ENSCSAVP00000019470',
                'species': 'ciona_savignyi',
                'taxon_id': 51511},
     'taxonomy_level': 'Opisthokonta',
     'type': 'ortholog_many2many'}


Accessing kinetic information from SABIO-RK
-------------------------------------------

SABIO-RK is a curated database that contains information about
biochemical reactions, their kinetic rate equations with parameters and
experimental conditions.

http://sabiork.h-its.org/layouts/content/docuRESTfulWeb/manual.gsp

.. code:: ipython3

    # http://sabiork.h-its.org/sabioRestWebServices/searchKineticLaws/entryIDs?q=uniProtKB_AC:P35557
    r = requests.get('http://sabiork.h-its.org/sabioRestWebServices/searchKineticLaws/entryIDs?q=uniProtKB_AC:P35557')
    print(r.url)
    print(r.text)


.. parsed-literal::

    http://sabiork.h-its.org/sabioRestWebServices/searchKineticLaws/entryIDs?q=uniProtKB_AC:P35557
    <SabioEntryIDs>
      <SabioEntryID>1569</SabioEntryID>
      <SabioEntryID>1570</SabioEntryID>
      <SabioEntryID>1571</SabioEntryID>
      <SabioEntryID>1572</SabioEntryID>
      <SabioEntryID>1573</SabioEntryID>
      <SabioEntryID>1574</SabioEntryID>
      <SabioEntryID>1575</SabioEntryID>
      <SabioEntryID>1576</SabioEntryID>
      <SabioEntryID>1577</SabioEntryID>
      <SabioEntryID>22015</SabioEntryID>
      <SabioEntryID>22016</SabioEntryID>
      <SabioEntryID>22017</SabioEntryID>
      <SabioEntryID>22018</SabioEntryID>
      <SabioEntryID>22019</SabioEntryID>
      <SabioEntryID>22020</SabioEntryID>
      <SabioEntryID>2580</SabioEntryID>
      <SabioEntryID>2581</SabioEntryID>
      <SabioEntryID>2582</SabioEntryID>
      <SabioEntryID>2583</SabioEntryID>
      <SabioEntryID>2584</SabioEntryID>
      <SabioEntryID>2585</SabioEntryID>
      <SabioEntryID>2586</SabioEntryID>
      <SabioEntryID>2587</SabioEntryID>
      <SabioEntryID>2588</SabioEntryID>
      <SabioEntryID>2589</SabioEntryID>
      <SabioEntryID>2590</SabioEntryID>
      <SabioEntryID>2591</SabioEntryID>
      <SabioEntryID>2916</SabioEntryID>
      <SabioEntryID>2917</SabioEntryID>
      <SabioEntryID>2918</SabioEntryID>
      <SabioEntryID>2919</SabioEntryID>
      <SabioEntryID>2920</SabioEntryID>
      <SabioEntryID>2921</SabioEntryID>
      <SabioEntryID>2922</SabioEntryID>
      <SabioEntryID>2923</SabioEntryID>
      <SabioEntryID>2924</SabioEntryID>
      <SabioEntryID>2925</SabioEntryID>
      <SabioEntryID>2926</SabioEntryID>
      <SabioEntryID>2927</SabioEntryID>
      <SabioEntryID>2928</SabioEntryID>
      <SabioEntryID>2929</SabioEntryID>
      <SabioEntryID>2930</SabioEntryID>
      <SabioEntryID>2931</SabioEntryID>
      <SabioEntryID>2932</SabioEntryID>
      <SabioEntryID>2933</SabioEntryID>
      <SabioEntryID>2934</SabioEntryID>
      <SabioEntryID>2935</SabioEntryID>
      <SabioEntryID>2936</SabioEntryID>
      <SabioEntryID>2937</SabioEntryID>
      <SabioEntryID>2938</SabioEntryID>
      <SabioEntryID>2939</SabioEntryID>
      <SabioEntryID>2940</SabioEntryID>
      <SabioEntryID>2941</SabioEntryID>
      <SabioEntryID>2942</SabioEntryID>
      <SabioEntryID>2943</SabioEntryID>
      <SabioEntryID>2944</SabioEntryID>
      <SabioEntryID>2945</SabioEntryID>
      <SabioEntryID>2946</SabioEntryID>
      <SabioEntryID>2947</SabioEntryID>
      <SabioEntryID>2948</SabioEntryID>
      <SabioEntryID>2949</SabioEntryID>
      <SabioEntryID>2950</SabioEntryID>
      <SabioEntryID>2951</SabioEntryID>
      <SabioEntryID>2952</SabioEntryID>
      <SabioEntryID>2953</SabioEntryID>
      <SabioEntryID>2954</SabioEntryID>
      <SabioEntryID>2955</SabioEntryID>
      <SabioEntryID>2956</SabioEntryID>
      <SabioEntryID>2957</SabioEntryID>
      <SabioEntryID>2958</SabioEntryID>
      <SabioEntryID>2959</SabioEntryID>
      <SabioEntryID>2960</SabioEntryID>
      <SabioEntryID>2961</SabioEntryID>
      <SabioEntryID>2962</SabioEntryID>
      <SabioEntryID>37745</SabioEntryID>
      <SabioEntryID>37746</SabioEntryID>
      <SabioEntryID>37747</SabioEntryID>
      <SabioEntryID>37748</SabioEntryID>
      <SabioEntryID>37749</SabioEntryID>
      <SabioEntryID>37750</SabioEntryID>
      <SabioEntryID>37751</SabioEntryID>
      <SabioEntryID>37752</SabioEntryID>
      <SabioEntryID>37753</SabioEntryID>
      <SabioEntryID>37754</SabioEntryID>
      <SabioEntryID>37755</SabioEntryID>
      <SabioEntryID>37756</SabioEntryID>
      <SabioEntryID>4963</SabioEntryID>
      <SabioEntryID>4964</SabioEntryID>
      <SabioEntryID>4965</SabioEntryID>
      <SabioEntryID>4966</SabioEntryID>
      <SabioEntryID>4967</SabioEntryID>
      <SabioEntryID>4968</SabioEntryID>
      <SabioEntryID>4969</SabioEntryID>
      <SabioEntryID>4970</SabioEntryID>
      <SabioEntryID>4971</SabioEntryID>
      <SabioEntryID>4972</SabioEntryID>
      <SabioEntryID>4973</SabioEntryID>
      <SabioEntryID>4974</SabioEntryID>
      <SabioEntryID>4975</SabioEntryID>
      <SabioEntryID>4976</SabioEntryID>
      <SabioEntryID>4977</SabioEntryID>
      <SabioEntryID>4978</SabioEntryID>
      <SabioEntryID>4979</SabioEntryID>
      <SabioEntryID>4980</SabioEntryID>
      <SabioEntryID>4981</SabioEntryID>
      <SabioEntryID>4982</SabioEntryID>
      <SabioEntryID>4983</SabioEntryID>
      <SabioEntryID>4984</SabioEntryID>
      <SabioEntryID>4985</SabioEntryID>
      <SabioEntryID>4986</SabioEntryID>
      <SabioEntryID>4987</SabioEntryID>
      <SabioEntryID>4988</SabioEntryID>
      <SabioEntryID>4989</SabioEntryID>
      <SabioEntryID>4990</SabioEntryID>
      <SabioEntryID>4991</SabioEntryID>
      <SabioEntryID>4992</SabioEntryID>
      <SabioEntryID>4993</SabioEntryID>
      <SabioEntryID>4994</SabioEntryID>
      <SabioEntryID>8766</SabioEntryID>
      <SabioEntryID>8767</SabioEntryID>
      <SabioEntryID>8768</SabioEntryID>
      <SabioEntryID>8769</SabioEntryID>
      <SabioEntryID>8770</SabioEntryID>
      <SabioEntryID>8771</SabioEntryID>
      <SabioEntryID>8772</SabioEntryID>
      <SabioEntryID>8773</SabioEntryID>
      <SabioEntryID>8774</SabioEntryID>
      <SabioEntryID>8775</SabioEntryID>
      <SabioEntryID>8776</SabioEntryID>
      <SabioEntryID>8777</SabioEntryID>
      <SabioEntryID>8778</SabioEntryID>
      <SabioEntryID>8779</SabioEntryID>
      <SabioEntryID>8780</SabioEntryID>
      <SabioEntryID>8781</SabioEntryID>
      <SabioEntryID>8782</SabioEntryID>
      <SabioEntryID>8783</SabioEntryID>
      <SabioEntryID>8784</SabioEntryID>
      <SabioEntryID>8785</SabioEntryID>
      <SabioEntryID>8786</SabioEntryID>
      <SabioEntryID>8787</SabioEntryID>
      <SabioEntryID>8788</SabioEntryID>
      <SabioEntryID>8789</SabioEntryID>
      <SabioEntryID>8790</SabioEntryID>
      <SabioEntryID>8791</SabioEntryID>
      <SabioEntryID>8792</SabioEntryID>
      <SabioEntryID>8793</SabioEntryID>
      <SabioEntryID>8794</SabioEntryID>
      <SabioEntryID>8795</SabioEntryID>
      <SabioEntryID>8796</SabioEntryID>
      <SabioEntryID>8797</SabioEntryID>
      <SabioEntryID>8798</SabioEntryID>
      <SabioEntryID>8799</SabioEntryID>
      <SabioEntryID>8800</SabioEntryID>
      <SabioEntryID>8801</SabioEntryID>
      <SabioEntryID>8802</SabioEntryID>
      <SabioEntryID>8803</SabioEntryID>
      <SabioEntryID>8804</SabioEntryID>
      <SabioEntryID>8805</SabioEntryID>
      <SabioEntryID>8806</SabioEntryID>
      <SabioEntryID>8807</SabioEntryID>
      <SabioEntryID>8808</SabioEntryID>
      <SabioEntryID>8809</SabioEntryID>
      <SabioEntryID>8810</SabioEntryID>
      <SabioEntryID>8811</SabioEntryID>
      <SabioEntryID>8812</SabioEntryID>
      <SabioEntryID>8813</SabioEntryID>
      <SabioEntryID>8814</SabioEntryID>
      <SabioEntryID>8815</SabioEntryID>
      <SabioEntryID>8816</SabioEntryID>
      <SabioEntryID>8817</SabioEntryID>
    </SabioEntryIDs>


Online search http://sabiork.h-its.org/newSearch/index

.. code:: ipython3

    r = requests.get("http://sabiork.h-its.org/sabioRestWebServices/kineticLaws/8817")
    print(r.text)


.. parsed-literal::

    <?xml version='1.0' encoding='UTF-8' standalone='no'?>
    <sbml xmlns="http://www.sbml.org/sbml/level3/version1/core" level="3" version="1">
      <model name="SABIOmdl07Feb2020003">
    <notes><body xmlns="http://www.w3.org/1999/xhtml">
    <p>
    This model has been created with the help of the SABIO-RK Database
    (http://sabio.h-its.org/) 
     (c) 2005-2020 HITS gGmbH http://www.h-its.org
    
    </p><br/>
    To cite SABIO-RK Database, please use
    "http://www.ncbi.nlm.nih.gov/pubmed/22102587"
    <br/>
    SABIO-RK - database for biochemical reaction kinetics. Wittig U, Kania R, Golebiewski M, Rey M, Shi L, Jong L, Algaa E, Weidemann A, Sauer-Danzwith H, Mir S, Krebs O, Bittkowski M, Wetsch E, Rojas I, Mueller W. Nucleic Acids Res. 2012;40(Database issue)790-6
    </body></notes>
          <listOfFunctionDefinitions>
          <functionDefinition id="KL_8817" sboTerm="SBO:0000192">
            <math xmlns="http://www.w3.org/1998/Math/MathML">        
              <lambda>
                <bvar>
                  <ci> h </ci>
                </bvar>
                <bvar>
                  <ci> kcat </ci>
                </bvar>
                <bvar>
                  <ci> B </ci>
                </bvar>
                <bvar>
                  <ci> K </ci>
                </bvar>
                <bvar>
                  <ci> S </ci>
                </bvar>
                <bvar>
                  <ci> E </ci>
                </bvar>
                <apply>
                  <divide/>
                  <apply>
                    <times/>
                    <apply>
                      <times/>
                      <ci> E </ci>
                      <ci> kcat </ci>
                    </apply>
                    <apply>
                      <power/>
                      <ci> S </ci>
                      <ci> h </ci>
                    </apply>
                  </apply>
                  <apply>
                    <plus/>
                    <ci> K </ci>
                    <apply>
                      <power/>
                      <ci> S </ci>
                      <ci> h </ci>
                    </apply>
                  </apply>
                </apply>
              </lambda>
            </math>
          </functionDefinition>
        </listOfFunctionDefinitions>
        <listOfUnitDefinitions>
          <unitDefinition id="swedgeone" name="s^(-1)">
            <listOfUnits>
              <unit scale="0" exponent="-1" multiplier="1" kind="second"/>
            </listOfUnits>
          </unitDefinition>
          <unitDefinition id="M" name="M">
            <listOfUnits>
              <unit scale="0" exponent="-1" multiplier="1" kind="litre"/>
              <unit scale="0" exponent="1" multiplier="1" kind="mole"/>
            </listOfUnits>
          </unitDefinition>
        </listOfUnitDefinitions>
        <listOfCompartments>
          <compartment id="compart_Cell" constant="true" name="Cell"/>
        </listOfCompartments>
        <listOfSpecies>
          <species id="SPC_34_Cell" initialConcentration="1" constant="false" hasOnlySubstanceUnits="false" name="ATP" metaid="META_SPC_34_Cell" boundaryCondition="false" compartment="compart_Cell">
            <annotation>
              <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">
                <rdf:Description rdf:about="#META_SPC_34_Cell">
                  <bqbiol:is>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15422"/>
                      <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:30616"/>
                      <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00002"/>
                    </rdf:Bag>
                  </bqbiol:is>
                </rdf:Description>
              </rdf:RDF>
            </annotation>
    </species>
          <species id="SPC_1464_Cell" initialConcentration="1" constant="false" hasOnlySubstanceUnits="false" name="D-Fructose" metaid="META_SPC_1464_Cell" boundaryCondition="false" compartment="compart_Cell">
            <annotation>
              <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">
                <rdf:Description rdf:about="#META_SPC_1464_Cell">
                  <bqbiol:is>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15824"/>
                      <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:37721"/>
                      <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:48095"/>
                      <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00095"/>
                      <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C10906"/>
                    </rdf:Bag>
                  </bqbiol:is>
                </rdf:Description>
              </rdf:RDF>
            </annotation>
    </species>
          <species id="SPC_1374_Cell" initialConcentration="1" constant="false" hasOnlySubstanceUnits="false" name="D-Fructose 6-phosphate" metaid="META_SPC_1374_Cell" boundaryCondition="false" compartment="compart_Cell">
            <annotation>
              <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">
                <rdf:Description rdf:about="#META_SPC_1374_Cell">
                  <bqbiol:is>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15946"/>
                      <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00085"/>
                    </rdf:Bag>
                  </bqbiol:is>
                </rdf:Description>
              </rdf:RDF>
            </annotation>
    </species>
          <species id="SPC_35_Cell" initialConcentration="1" constant="false" hasOnlySubstanceUnits="false" name="ADP" metaid="META_SPC_35_Cell" boundaryCondition="false" compartment="compart_Cell">
            <annotation>
              <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">
                <rdf:Description rdf:about="#META_SPC_35_Cell">
                  <bqbiol:is>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16761"/>
                      <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00008"/>
                    </rdf:Bag>
                  </bqbiol:is>
                </rdf:Description>
              </rdf:RDF>
            </annotation>
    </species>
          <species id="ENZ_46027_Cell" initialConcentration="1" constant="false" hasOnlySubstanceUnits="false" name="glucokinase(Enzyme) mutant Glu290Ala" metaid="META_ENZ_46027_Cell" boundaryCondition="false" compartment="compart_Cell">
            <annotation>
    <sbrk:sabiork xmlns:sbrk="http://sabiork.h-its.org">
    <sbrk:modifierType>Modifier-Catalyst</sbrk:modifierType>
    </sbrk:sabiork>                  <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">
                <rdf:Description rdf:about="#META_ENZ_46027_Cell">
                  <bqbiol:is>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/uniprot/P35557"/>
                    </rdf:Bag>
                  </bqbiol:is>
                </rdf:Description>
              </rdf:RDF>
            </annotation>
    </species>
        </listOfSpecies>
        <listOfReactions>
          <reaction id="REAC_0" metaid="META_REAC_0" reversible="true" fast="false">
            <annotation>
              <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">
                <rdf:Description rdf:about="#META_REAC_0">
                  <bqbiol:isVersionOf>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.1.2"/>
                    </rdf:Bag>
                  </bqbiol:isVersionOf>
                  <bqbiol:is>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00760"/>
                    </rdf:Bag>
                  </bqbiol:is>
                  <bqbiol:hasTaxon>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
                    </rdf:Bag>
                  </bqbiol:hasTaxon>
                  <bqbiol:is>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/sabiork.reaction/1116"/>
                    </rdf:Bag>
                  </bqbiol:is>
                  <bqbiol:occursIn>
                    <rdf:Bag>
                      <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000783"/>
                    </rdf:Bag>
                  </bqbiol:occursIn>
                </rdf:Description>
              </rdf:RDF>
            </annotation>
            <listOfReactants>
              <speciesReference constant="true" species="SPC_34_Cell" sboTerm="SBO:0000015" stoichiometry="1"/>
              <speciesReference constant="true" species="SPC_1464_Cell" sboTerm="SBO:0000015" stoichiometry="1"/>
            </listOfReactants>
            <listOfProducts>
              <speciesReference constant="true" species="SPC_1374_Cell" sboTerm="SBO:0000011" stoichiometry="1"/>
              <speciesReference constant="true" species="SPC_35_Cell" sboTerm="SBO:0000011" stoichiometry="1"/>
            </listOfProducts>
            <listOfModifiers>
              <modifierSpeciesReference species="ENZ_46027_Cell" sboTerm="SBO:0000460"/>
            </listOfModifiers>
            <kineticLaw metaid="META_KL_8817" sboTerm="SBO:0000192">
              <annotation>
    <sbrk:sabiork xmlns:sbrk="http://sabiork.h-its.org">
    <sbrk:kineticLawID>8817</sbrk:kineticLawID>
    <sbrk:experimentalConditions>
    <sbrk:pH>
    <sbrk:startValuepH>7.5</sbrk:startValuepH>
    </sbrk:pH>
    <sbrk:temperature>
    <sbrk:startValueTemperature>30.0</sbrk:startValueTemperature>
    <sbrk:temperatureUnit>°C</sbrk:temperatureUnit>
    </sbrk:temperature>
    <sbrk:buffer> 100 mM Tris HCl, 100 mM KCl, 20 mM MgCl2, 0.6 mM phosphoenolpyruvate, 0.6 mM NADH, 1.76 units/ml lactate dehydrogenase, 1.4 units/ml pyruvate kinase</sbrk:buffer>
    </sbrk:experimentalConditions>
    </sbrk:sabiork>
                          <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">
                  <rdf:Description rdf:about="#META_KL_8817">
                    <bqbiol:isDescribedBy>
                      <rdf:Bag>
                        <rdf:li rdf:resource="http://identifiers.org/pubmed/7961659"/>
                      </rdf:Bag>
                    </bqbiol:isDescribedBy>
                    <bqbiol:isDescribedBy>
                      <rdf:Bag>
                        <rdf:li rdf:resource="http://identifiers.org/sabiork.kineticrecord/8817"/>
                      </rdf:Bag>
                    </bqbiol:isDescribedBy>
                  </rdf:Description>
                </rdf:RDF>
              </annotation>
              <math xmlns="http://www.w3.org/1998/Math/MathML">          
                <apply>
                  <ci> KL_8817 </ci>
                  <ci> h_SPC_1464_Cell </ci>
                  <ci> kcat </ci>
                  <ci> SPC_34_Cell </ci>
                  <ci> K_SPC_1464_Cell </ci>
                  <ci> SPC_1464_Cell </ci>
                  <ci> ENZ_46027_Cell </ci>
                </apply>
              </math>
                      <listOfLocalParameters>
                <localParameter id="h_SPC_1464_Cell" name="h_DFructose" sboTerm="SBO:0000190"/>
                <localParameter id="kcat" name="kcat" value="2.4" sboTerm="SBO:0000025" units="swedgeone"/>
                <localParameter id="K_SPC_1464_Cell" name="K_DFructose" value="2.9" sboTerm="SBO:0000191" units="M"/>
              </listOfLocalParameters>
            </kineticLaw>
          </reaction>
        </listOfReactions>
      </model>
    </sbml>


