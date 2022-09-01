# wovenlog-v2

# Backendの環境構築
## Memo

https://www.notion.so/Docker-f565b21fcdad41878633b97172757c1f

### 実行方法
```
cd wovenlog_v2_backend

docker-compose up

docker ps

docker exec -it wovenlog_v2_backend-app-1 bash

sh gradlew build

java -jar build/libs/api-0.0.1-SNAPSHOT.jar
```

- 自動でBuildする場合は、Docker Imageを自分で作って、その中にコマンドを書く
```
app:
  image: [自作したDocker image]
```

## Reference
- https://ienokado-blog.com/2021/05/14/docker-spring-install/
- https://www.bold.ne.jp/engineer-club/java-main
- https://qiita.com/A-Kira/items/beaf79a0d39d9839e61e

