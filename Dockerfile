FROM openjdk:8

# フォント追加
RUN apt-get update && apt-get install -y --no-install-recommends fonts-ipafont && fc-cache

# graphvizをinstall
RUN apt-get -y install build-essential \
                       graphviz

# userを作成
RUN groupadd -r app \
  && useradd --no-log-init -m -g app app
USER app

# plant umlを取得
RUN curl --create-dirs -o /home/app/.plantuml/bin/plantuml -L "http://sourceforge.net/projects/plantuml/files/plantuml.jar/download"

ENTRYPOINT ["java", "-jar", "/home/app/.plantuml/bin/plantuml"]
