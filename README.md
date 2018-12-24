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
ls result/attention/
00000  00001  00002  00003  00004  00005  00006  00007  00008  00009  00010  00011  00012  00013  00014  00015  00016  00017  00018  00019
```

