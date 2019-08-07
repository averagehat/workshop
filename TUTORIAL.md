## Tutorial

Step 1: 
-------

```bash
git clone https://github.com/vdbwrair/vartable
cd vartable
bash install.sh $PWD/miniconda
# add PATH export command as explained 
```

We'll do everything form the vartable directory
```bash
```
![img](https://i.stack.imgur.com/EmgN3.gif)


Miniconda
----------
Check your python:
```bash
/vartable$ which python
/home/mpanceria/vartable/miniconda/bin/python
```
```bash
python --version

Python 3.7.3
```




Vim
----

__Navigation__

Your fingers help tell you the direction your heading;

__j__ is down  
__k__ is up  
__l__ is right   
__h__ is left  

**gg** is top  
**G**  is bottom  

**PgUp/PgDn** work as normal  


IPython
----
Related to jupyter  
Provides:  
 * tab-based autocompletion
 * docs via `?` i.e.
 * bash commands via `!`


` conda install ipython`  
` $ ipython `
```bash
ipython-

TMUX
----


Appendix
=========

SSL Errors
----------
git:
```bash
git config --global http.sslVerify "false" 
```
pip:  
```bash
mkdir -p ~/.config/pip/
cp pip.conf ~/.config/pip/pip.conf
```
conda:
```bash
conda config --set ssl_verify false 
```


Proxy
-----
```bash
$ export https_proxy=http://127.0.0.1:3128
$ export http_proxy=http://127.0.0.1:3128
```
