# README for bert attention visualizer

## clone official bert repository
```
git clone https://github.com/google-research/bert.git somewhere/bert/
```

## copy script files in this repository 
```
cp -r bin/ modeling_attention.py run_attention.py somewhere/bert/
```

## run script
```
cd somewhere/bert/
sh bin/run_attention.sh
```

## check result (as created 20 directories)
```
$ ls result/attention/
00000  00001  00002  00003  00004  00005  00006  00007  00008  00009  00010  00011  00012  00013  00014  00015  00016  00017  00018  00019

$ ls result/attention/00000/
dependency.tsv        probabilities-01.tsv  probabilities-04.tsv  probabilities-07.tsv  probabilities-10.tsv
heatmap.png           probabilities-02.tsv  probabilities-05.tsv  probabilities-08.tsv  probabilities-11.tsv
probabilities-00.tsv  probabilities-03.tsv  probabilities-06.tsv  probabilities-09.tsv  sequence.txt
```

