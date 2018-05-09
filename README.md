# About 
Docker for Tex Live (based on phusion/baseimage). Currently Tex Live 2018. This Dockerfile download and install the latest Tex Live archive available

# Warning
This is not a full texlive distribution. This is based on "scheme-medium" profile with the following collections added: 
* collection-binextra 
* collection-fontsextra
* collection-fontsrecommended 
* collection-langfrench 
* collection-langspanish 
* collection-langgerman 
* collection-latexextra 
* collection-mathscience 
* collection-plaingeneric 
* collection-publishers  
* collection-xetex

To get the docker : docker pull briffou/texlive

# Usage 
## Outside the container
```
docker run --rm -v $(pwd):/data briffou/texlive pdflatex file.tex
docker run --rm -v $(pwd):/data briffou/texlive latexmk file.tex
```

## Inside 
```
docker run --rm -it -v $(pwd):/data briffou/texlive
```
then 
```
pdflatex file.tex
```

