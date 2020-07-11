# plantuml-docker

PlantUML の Docker コンテナ実行環境

# build and test

```
docker build -t plantuml:0.1 .
docker run -v --rm plantuml:0.1 -testdot
```

# run sample

```
docker run -v ${PWD}:/work -w /work --rm plantuml:0.1 sample_plantuml/*.puml -o ../images
```
