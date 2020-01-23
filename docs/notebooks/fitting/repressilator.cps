<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-02-06 00:25:30 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for degradation of LacI transcripts" type="UserDefined" reversible="false">
      <Expression>
        kd_mRNA*(X*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_261" name="X" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_265" name="kd_mRNA" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for degradation of TetR transcripts" type="UserDefined" reversible="false">
      <Expression>
        kd_mRNA*(Y*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="Y" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_270" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_271" name="kd_mRNA" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for degradation of CI transcripts" type="UserDefined" reversible="false">
      <Expression>
        kd_mRNA*(Z*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="Z" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_276" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_277" name="kd_mRNA" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for translation of LacI" type="UserDefined" reversible="false">
      <Expression>
        k_tl*(X*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="X" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_283" name="k_tl" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for translation of TetR" type="UserDefined" reversible="false">
      <Expression>
        k_tl*(Y*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="Y" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_289" name="k_tl" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for translation of CI" type="UserDefined" reversible="false">
      <Expression>
        k_tl*(Z*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="Z" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_294" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_295" name="k_tl" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for degradation of LacI" type="UserDefined" reversible="false">
      <Expression>
        kd_prot*(PX*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="PX" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_301" name="kd_prot" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for degradation of TetR" type="UserDefined" reversible="false">
      <Expression>
        kd_prot*(PY*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="PY" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_307" name="kd_prot" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for degradation of CI" type="UserDefined" reversible="false">
      <Expression>
        kd_prot*(PZ*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="PZ" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_312" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_313" name="kd_prot" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for transcription of LacI" type="UserDefined" reversible="false">
      <Expression>
        (a0_tr+a_tr*KM^n/(KM^n+(PZ*cell)^n))/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="KM" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="PZ" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_322" name="a0_tr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="a_tr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="cell" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_325" name="n" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for transcription of TetR" type="UserDefined" reversible="false">
      <Expression>
        (a0_tr+a_tr*KM^n/(KM^n+(PX*cell)^n))/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="KM" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="PX" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_334" name="a0_tr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="a_tr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="cell" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_337" name="n" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for transcription of CI" type="UserDefined" reversible="false">
      <Expression>
        (a0_tr+a_tr*KM^n/(KM^n+(PY*cell)^n))/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="KM" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="PY" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_346" name="a0_tr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="a_tr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="cell" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_349" name="n" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Elowitz2000 - Repressilator" simulationType="time" timeUnit="min" volumeUnit="fl" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/562"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/10659856"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2009-01-20T14:03:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lukas@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Endler</vCard:Family>
                <vCard:Given>Lukas</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>juty@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Juty</vCard:Family>
                <vCard:Given>Nick</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>bshapiro@caltech.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Shapiro</vCard:Family>
                <vCard:Given>Bruce</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Jet Propulsion Laboratory</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lenov@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Le Novère</vCard:Family>
                <vCard:Given>Nicolas</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>viji@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Chelliah</vCard:Family>
                <vCard:Given>Vijayalakshmi</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2013-07-10T10:59:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL6615351360"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000012"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0040029"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Elowitz2000 - Repressilator</div>
    <div class="dc:description">
      <p>This model describes the deterministic version of the repressilator system.</p>
      <p>The authors of this model (see reference) use three transcriptional repressor systems that are not part of any natural biological clock to build an oscillating network that they called the repressilator. The model system was induced in Escherichia coli.</p>
      <p>In this system, LacI (variable X is the mRNA, variable PX is the protein) inhibits the tetracycline-resistance transposon tetR (Y, PY describe mRNA and protein). Protein tetR inhibits the gene Cl from phage Lambda (Z, PZ: mRNA, protein),and protein Cl inhibits lacI expression. With the appropriate parameter values this system oscillates.</p>
    </div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/10659856" title="Access to this publication">A synthetic oscillatory network of transcriptional regulators.</a>
      </div>
      <div class="bibo:authorList">Elowitz MB, Leibler S.</div>
      <div class="bibo:Journal">Nature. 2000 Jan; 403(6767):335-338</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>Networks of interacting biomolecules carry out many essential functions in living cells, but the &apos;design principles&apos; underlying the functioning of such intracellular networks remain poorly understood, despite intensive efforts including quantitative analysis of relatively simple systems. Here we present a complementary approach to this problem: the design and construction of a synthetic network to implement a particular function. We used three transcriptional repressor systems that are not part of any natural biological clock to build an oscillating network, termed the repressilator, in Escherichia coli. The network periodically induces the synthesis of green fluorescent protein as a readout of its state in individual cells. The resulting oscillations, with typical periods of hours, are slower than the cell-division cycle, so the state of the oscillator has to be transmitted from generation to generation. This artificial clock displays noisy behaviour, possibly because of stochastic fluctuations of its components. Such &apos;rational network design may lead both to the engineering of new cellular behaviours and to an improved understanding of naturally occurring networks.</p>
      </div>
    </div>
    <div class="bm:curation">
      <p>The model is based upon the equations in Box 1 of the paper; however, these equations as printed are dimensionless, and the correct dimensions have been returned to the equations, and the parameters set to reproduce Figure 1C (left).</p>
    </div>
    <div class="bm:modification">
      <p>The original model was generated by B.E. Shapiro using Cellerator version 1.0 update 2.1127 using Mathematica 4.2 for Mac OS X (June 4, 2002), November 27, 2002 12:15:32, using (PowerMac,PowerPC, Mac OS X,MacOSX,Darwin).</p>
      <p>Nicolas Le Novere provided a corrected version generated by SBMLeditor on Sun Aug 20 00:44:05 BST 2006. This removed the EmptySet species. Ran fine on COPASI 4.0 build 18.</p>
      <p>Bruce Shapiro revised the model with SBMLeditor on 23 October 2006 20:39 PST. This defines default units and correct reactions. The original Cellerator reactions while being mathematically correct did not accurately reflect the intent of the authors. The original notes were mostly removed because they were mostly incorrect in the revised version. Tested with MathSBML 2.6.0.</p>
      <p>Nicolas Le Novere changed the volume to 1 cubic micrometre, to allow for stochastic simulation.</p>
      <p>Changed by Lukas Endler to use the average livetime of mRNA instead of its halflife and a corrected value of alpha and alpha0.</p>
      <p>Moreover, the equations used in this model were clarified, cf. below.</p>
      <p>The equations given in        <b>box 1</b>
            of the original publication are rescaled in three respects (lowercase letters denote the rescaled, uppercase letters the unscaled number of molecules per cell):        </p>
      <ul>
        <li>the time is rescaled to the average mRNA lifetime,          <em>t_ave: τ = t/t_ave</em></li>
        <li>the mRNA concentration is rescaled to the translation efficiency          <em>eff: m = M/eff</em></li>
        <li>the protein concentration is rescaled to          <em>Km: p = P/Km</em></li>
      </ul>
      <p>
        <em>α</em>
            in the equations should be in units of rescaled proteins per promotor and cell, and        <em>β</em>
            is the ratio of the protein to the mRNA decay rates or the ratio of the mRNA to the protein halflife.        </p>
        <p>In this version of the model        <em>α</em>
            and        <em>β</em>
            are calculated correspondingly to the article, while        <em>p</em>
            and        <em>m</em>
            where just replaced by        <em>P/Km</em>
            resp.        <em>M/eff</em>
            and all equations multiplied by        <em>1/t_ave</em>
            . Also, to make the equations easier to read, commonly used variables derived from the parameters given in the article by simple rules were introduced.        </p>
        <p>The parameters given in the article were:</p>
        <table>
          <tr>
            <td>promotor strength (repressed) (            <em>tps_repr</em>
                ):            </td>
            <td>5*10            <sup>-4</sup></td>
            <td>transcripts/(promotor*s)</td>
          </tr>
          <tr>
            <td>promotor strength (full) (            <em>tps_active</em>
                ):            </td>
            <td>0.5</td>
            <td>transcripts/(promotor*s)</td>
          </tr>
          <tr>
            <td>mRNA half life, τ            <sub>1/2,mRNA</sub>
                :            </td>
            <td>2</td>
            <td>min</td>
          </tr>
          <tr>
            <td>protein half life, τ            <sub>1/2,prot</sub>
                :            </td>
            <td>10</td>
            <td>min</td>
          </tr>
          <tr>
            <td>K            <sub>M</sub>
                :            </td>
            <td>40</td>
            <td>monomers/cell</td>
          </tr>
          <tr>
            <td>Hill coefficient n:</td>
            <td>2</td>
            <td/>
          </tr>
        </table>
        <p>From these the following constants can be derived:</p>
        <table>
          <tr>
            <td>average mRNA lifetime (            <em>t_ave</em>
                ):            </td>
            <td>
              <em>τ              <sub>1/2,mRNA</sub>
                  /ln(2)              </em>
            </td>
            <td>= 2.89 min</td>
          </tr>
          <tr>
            <td>mRNA decay rate (            <em>kd_mRNA</em>
                ):            </td>
            <td>
              <em>ln(2)/ τ              <sub>1/2,mRNA</sub></em>
            </td>
            <td>= 0.347 min            <sup>-1</sup></td>
          </tr>
          <tr>
            <td>protein decay rate (            <em>kd_prot</em>
                ):            </td>
            <td>
              <em>ln(2)/ τ              <sub>1/2,prot</sub></em>
            </td>
          </tr>
          <tr>
            <td>transcription rate (            <em>a_tr</em>
                ):            </td>
            <td>
              <em>tps_active*60</em>
            </td>
            <td>= 29.97 transcripts/min</td>
          </tr>
          <tr>
            <td>transcription rate (repressed) (            <em>a0_tr</em>
                ):            </td>
            <td>
              <em>tps_repr*60</em>
            </td>
            <td>= 0.03 transcripts/min</td>
          </tr>
          <tr>
            <td>translation rate (            <em>k_tl</em>
                ):            </td>
            <td>
              <em>eff*kd_mRNA</em>
            </td>
            <td>= 6.93 proteins/(mRNA*min)</td>
          </tr>
          <tr>
            <td>α :</td>
            <td>
              <em>a_tr*eff*τ              <sub>1/2,prot</sub>
                  /(ln(2)*K              <sub>M</sub>
                  )              </em>
            </td>
            <td>= 216.4 proteins/(promotor*cell*Km)</td>
          </tr>
          <tr>
            <td>α            <sub>0</sub>
                :            </td>
            <td>
              <em>a0_tr*eff*τ              <sub>1/2,prot</sub>
                  /(ln(2)*K              <sub>M</sub>
                  )              </em>
            </td>
            <td>= 0.2164 proteins/(promotor*cell*Km)</td>
          </tr>
          <tr>
            <td>β :</td>
            <td>
              <em>k_dp/k_dm</em>
            </td>
            <td>= 0.2</td>
          </tr>
        </table>
        <br/>
        <p>Annotation by the Kinetic Simulation Algorithm Ontology (KiSAO):</p>
        <p>To reproduce the simulations run published by the authors, the model has to be simulated with any of two different approaches. First, one could use a deterministic method (        <a href="http://identifiers.org/biomodels.kisao/KISAO_0000035" title="Access to: KISAO_0000035">KISAO_0000035</a>
            ) with continuous variables (        <a href="http://identifiers.org/biomodels.kisao/KISAO_0000018" title="Access to: KISAO_0000018">KISAO_0000018</a>
            ). One sample algorithm to use is the CVODE solver (        <a href="http://identifiers.org/biomodels.kisao/KISAO_0000019" title="Access to: KISAO_0000019">KISAO_0000019</a>
            ). Second, one could simulate the system using Gillespie&apos;s direct method (        <a href="http://identifiers.org/biomodels.kisao/KISAO_0000029" title="Access to: KISAO_0000029">KISAO_0000029</a>
            ), which is a stochastic method (        <a href="http://identifiers.org/biomodels.kisao/KISAO_0000036" title="Access to: KISAO_0000036">KISAO_0000036</a>
            ) supporting adaptive timesteps (        <a href="http://identifiers.org/biomodels.kisao/KISAO_0000041" title="Access to: KISAO_0000041">KISAO_0000041</a>
            ) and using discrete variables (        <a href="http://identifiers.org/biomodels.kisao/KISAO_0000016" title="Access to: KISAO_0000016">KISAO_0000016</a>
            ).        </p>
      </div>
      <div class="dc:publisher">
        <p>This model is hosted on        <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
            and identified by:        <a href="http://identifiers.org/biomodels.db/BIOMD0000000012">BIOMD0000000012</a>
            .        </p>
        <p>To cite BioModels Database, please use:        <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models</a>
            .        </p>
      </div>
      <div class="dc:license">
        <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to        <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0 Public Domain Dedication</a>
            for more information.        </p>
      </div>
    </body>
  
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000290"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0005623"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="LacI protein" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P03023"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        lacI inhibitor</p>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="TetR protein" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04483"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Tet repressor protein</p>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="cI protein" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000252"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P03034"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        lambda repressor</p>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="LacI mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:encodes>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P03023"/>
      </rdf:Bag>
    </CopasiMT:encodes>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000250"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33699"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00046"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="TetR mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:encodes>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04483"/>
      </rdf:Bag>
    </CopasiMT:encodes>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000250"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33699"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00046"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="cI mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:encodes>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P03034"/>
      </rdf:Bag>
    </CopasiMT:encodes>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000250"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33699"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00046"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="beta" simulationType="assignment" addNoise="false">
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        ratio of protein to mRNA decay rates</p>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[mRNA half life],Reference=Value>/&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[protein half life],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="alpha0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_1'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000485' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Leakiness in protein copies per promoter and cell</p>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a0_tr],Reference=Value>*&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[translation efficiency],Reference=Value>*&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[protein half life],Reference=Value>/(log(2)*&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[KM],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="alpha" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_2'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000186' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Protein copies per promoter and cell</p>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a_tr],Reference=Value>*&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[translation efficiency],Reference=Value>*&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[protein half life],Reference=Value>/(log(2)*&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[KM],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="translation efficiency" simulationType="fixed" addNoise="false">
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Average number of proteins per transcript</p>

        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_4'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000190' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Hill coefficient</p>

        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="KM" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_5'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000288' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Number of repressor molecules per cell giving half maximal repression, in monomers per cell</p>

        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="mRNA half life" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_6'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000332' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="protein half life" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_7'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000332' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="average mRNA life time" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_8'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000348' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[mRNA half life],Reference=Value>/log(2)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kd_mRNA" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_9'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000356' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        mRNA decay rate constant</p>

        </Comment>
        <Expression>
          log(2)/&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[mRNA half life],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kd_prot" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_10'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000356' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Protein decay rate costant</p>

        </Comment>
        <Expression>
          log(2)/&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[protein half life],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="k_tl" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_11'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000016' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Translation rate constant</p>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[translation efficiency],Reference=Value>/&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[average mRNA life time],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="a_tr" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_12'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000186' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Transcription rate from free promotor minus a0_tr</p>

        </Comment>
        <Expression>
          (&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[tps_active],Reference=Value>-&lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[tps_repr],Reference=Value>)*60
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="tps_active" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_13'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000186' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Transcrition from free promotor in transcripts per second and promotor</p>

        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="tps_repr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_14'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000485' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Transcrition from fully repressed promotor in transcripts per second and promotor</p>

        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="a0_tr" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:dc='http://purl.org/dc/elements/1.1/' xmlns:dcterms='http://purl.org/dc/terms/' xmlns:vCard='http://www.w3.org/2001/vcard-rdf/3.0#' xmlns:bqbiol='http://biomodels.net/biology-qualifiers/' xmlns:bqmodel='http://biomodels.net/model-qualifiers/'>  <rdf:Description rdf:about='#ModelValue_15'>
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource='http://identifiers.org/biomodels.sbo/SBO:0000485' />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <p xmlns="http://www.w3.org/1999/xhtml">
        Transcription rate from fully repressed promotor</p>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[tps_repr],Reference=Value>*60
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="degradation of LacI transcripts" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006402"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5045" name="kd_mRNA" value="0.346574"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="degradation of TetR transcripts" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006402"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5047" name="kd_mRNA" value="0.346574"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="degradation of CI transcripts" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006402"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5048" name="kd_mRNA" value="0.346574"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="translation of LacI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000184"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006412"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5042" name="k_tl" value="6.93147"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="translation of TetR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000184"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006412"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5044" name="k_tl" value="6.93147"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="translation of CI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000184"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006412"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5043" name="k_tl" value="6.93147"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="degradation of LacI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5046" name="kd_prot" value="0.0693147"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="degradation of TetR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5049" name="kd_prot" value="0.0693147"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="degradation of CI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5040" name="kd_prot" value="0.0693147"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="transcription of LacI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000183"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006351"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5038" name="KM" value="40"/>
          <Constant key="Parameter_5037" name="a0_tr" value="0.03"/>
          <Constant key="Parameter_5041" name="a_tr" value="29.97"/>
          <Constant key="Parameter_5039" name="n" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="transcription of TetR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000183"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006351"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5014" name="KM" value="40"/>
          <Constant key="Parameter_5012" name="a0_tr" value="0.03"/>
          <Constant key="Parameter_5011" name="a_tr" value="29.97"/>
          <Constant key="Parameter_5015" name="n" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="transcription of CI" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000183"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006351"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="KM" value="40"/>
          <Constant key="Parameter_5017" name="a0_tr" value="0.03"/>
          <Constant key="Parameter_5032" name="a_tr" value="29.97"/>
          <Constant key="Parameter_5020" name="n" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell],Vector=Metabolites[LacI protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell],Vector=Metabolites[TetR protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell],Vector=Metabolites[cI protein]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell],Vector=Metabolites[LacI mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell],Vector=Metabolites[TetR mRNA]" value="20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell],Vector=Metabolites[cI mRNA]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[beta]" value="0.20000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[alpha0]" value="0.21640425613334452" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[alpha]" value="216.18785187721116" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[translation efficiency]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[n]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[KM]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[mRNA half life]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[protein half life]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[average mRNA life time]" value="2.8853900817779268" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[kd_mRNA]" value="0.34657359027997264" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[kd_prot]" value="0.069314718055994526" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[k_tl]" value="6.9314718055994531" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a_tr]" value="29.969999999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[tps_active]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[tps_repr]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a0_tr]" value="0.029999999999999999" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of LacI transcripts]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of LacI transcripts],ParameterGroup=Parameters,Parameter=kd_mRNA" value="0.34657359027997264" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[kd_mRNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of TetR transcripts]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of TetR transcripts],ParameterGroup=Parameters,Parameter=kd_mRNA" value="0.34657359027997264" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[kd_mRNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of CI transcripts]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of CI transcripts],ParameterGroup=Parameters,Parameter=kd_mRNA" value="0.34657359027997264" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[kd_mRNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[translation of LacI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[translation of LacI],ParameterGroup=Parameters,Parameter=k_tl" value="6.9314718055994531" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[k_tl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[translation of TetR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[translation of TetR],ParameterGroup=Parameters,Parameter=k_tl" value="6.9314718055994531" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[k_tl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[translation of CI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[translation of CI],ParameterGroup=Parameters,Parameter=k_tl" value="6.9314718055994531" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[k_tl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of LacI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of LacI],ParameterGroup=Parameters,Parameter=kd_prot" value="0.069314718055994526" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[kd_prot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of TetR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of TetR],ParameterGroup=Parameters,Parameter=kd_prot" value="0.069314718055994526" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[kd_prot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of CI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[degradation of CI],ParameterGroup=Parameters,Parameter=kd_prot" value="0.069314718055994526" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[kd_prot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of LacI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of LacI],ParameterGroup=Parameters,Parameter=KM" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[KM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of LacI],ParameterGroup=Parameters,Parameter=a0_tr" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a0_tr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of LacI],ParameterGroup=Parameters,Parameter=a_tr" value="29.969999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a_tr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of LacI],ParameterGroup=Parameters,Parameter=n" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of TetR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of TetR],ParameterGroup=Parameters,Parameter=KM" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[KM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of TetR],ParameterGroup=Parameters,Parameter=a0_tr" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a0_tr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of TetR],ParameterGroup=Parameters,Parameter=a_tr" value="29.969999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a_tr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of TetR],ParameterGroup=Parameters,Parameter=n" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of CI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of CI],ParameterGroup=Parameters,Parameter=KM" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[KM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of CI],ParameterGroup=Parameters,Parameter=a0_tr" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a0_tr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of CI],ParameterGroup=Parameters,Parameter=a_tr" value="29.969999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[a_tr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Reactions[transcription of CI],ParameterGroup=Parameters,Parameter=n" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 20 0 0.20000000000000001 0.21640425613334452 216.18785187721116 2.8853900817779268 0.34657359027997264 0.069314718055994526 6.9314718055994531 29.969999999999999 0.029999999999999999 1 20 2 40 2 10 0.5 0.00050000000000000001 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[protein half life],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-6"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
            <Parameter name="StartValue" type="float" value="5"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Values[mRNA half life],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="10"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Key" type="key" value="Experiment_1"/>
            <Parameter name="File Name" type="file" value="repressilator_fit_data.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="22"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="4"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell],Vector=Metabolites[LacI protein],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell],Vector=Metabolites[TetR protein],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Elowitz2000 - Repressilator,Vector=Compartments[cell],Vector=Metabolites[cI protein],Reference=Concentration"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Levenberg - Marquardt" type="LevenbergMarquardt">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="2000"/>
        <Parameter name="Tolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Modulation" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Stop after # Stalled Iterations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Parameter Estimation Result" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Experiment,[LacI protein](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[LacI protein](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[LacI protein](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[TetR protein](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[TetR protein](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[TetR protein](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[cI protein](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[cI protein](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[cI protein](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="repressilator.xml">
    <SBMLMap SBMLid="KM" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="PX" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="PY" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="PZ" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Reaction1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Reaction10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Reaction11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="Reaction12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Reaction2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Reaction3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Reaction4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Reaction5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Reaction6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Reaction7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Reaction8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Reaction9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="X" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Y" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Z" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="a0_tr" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="a_tr" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="alpha0" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="eff" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k_tl" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="kd_mRNA" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kd_prot" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="ps_0" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="ps_a" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="t_ave" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="tau_mRNA" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="tau_prot" COPASIkey="ModelValue_7"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="liter" symbol="l">
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_32" name="minute" symbol="min">
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
