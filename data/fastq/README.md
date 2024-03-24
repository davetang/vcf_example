## README

See [ffs](https://github.com/davetang/research_parasite#ffs).

```console
# manually open the shell scripts and delete the other downloads
# since we only want the FASTQs
ffq ERR031940 | ~/github/research_parasite/script/ffs aspera - > download.sh
ffq SRR622461 | ~/github/research_parasite/script/ffs aspera - > SRR622461.sh

docker run --rm -it -u parasite -v $(pwd):$(pwd) -w $(pwd) davetang/aspera_connect:4.2.5.306 /bin/bash
bash download.sh
bash SRR622461.sh
```
