# Documentation
Install pandoc via 
```
sudo apt-get install pandoc
```

To create the documentation use
```
(mcp) pip install -r requirements-docs.txt
(mcp) cd docs
(mcp) ./make_docs.sh
```

The documentation is build using `sphinx` with the 
[sphinx-rtd-theme](https://sphinx-rtd-theme.readthedocs.io/en/latest/configuring.html) 
