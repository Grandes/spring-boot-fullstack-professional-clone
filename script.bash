


# network db 생성
docker network create db

# network db 삭제
docker network rm db

# kwon-yongho directory > db-data 에서
docker run --name db -p 5432:5432 --network=db -v "$PWD:/var/lib/postgresql/data" -e POSTGRES_PASSWORD=password -d postgres:alpine

# docker db 끄기
docker rm -f db

# docker db 들어가기
docker run -it --rm --network=db postgres:alpine psql -h db -U postgres