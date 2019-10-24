
[![Documentation Status](https://readthedocs.org/projects/mcp/badge/?version=latest)](https://mcp.readthedocs.io/en/latest/)

<h1>Models of Cellular Processes</h1>
<b><a href="https://orcid.org/0000-0003-1725-179X" title="https://orcid.org/0000-0003-1725-179X"><img src="./docs/static/images/orcid.png" height="15"/></a> Matthias König</b>

Lecture notes and information for the course **Models of cellular processes** - **Modelle zellulärer Prozesse**
at the Humboldt-University Berlin, WS2019/20, Institute for Biologie, Institute for Theoretical Biology.

The lecture notes and examples are available from
https://mcp.readthedocs.io

### License
* Source Code: [LGPLv3](http://opensource.org/licenses/LGPL-3.0)

### Funding
Matthias König is supported by the Federal Ministry of Education and Research (BMBF, Germany)
within the research network Systems Medicine of the Liver (**LiSyM**, grant number 031L0054).


## Installation
For running the examples a virtual environment should be created

```bash
# checkout code
git clone https://github.com/matthiaskoenig/modelcellprocesses.git

# virtualenv
cd modelcellprocesses
mkvirtualenv mcp --python=python3.6
(mcp) pip install -r requirements.txt
```
Notebook kernel is installed via 
```bash
(mcp) python -m ipykernel install --user --name modelingcellprocesses
```
and jupyter lab is started via
``` 
(mcp) jupyter lab
```

Notebooks are available in
- `docs/notebooks`

&copy; 2019 Matthias König
