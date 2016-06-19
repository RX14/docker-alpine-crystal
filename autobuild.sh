versions=("0.18.2" "0.18.0" "0.17.4" "0.17.3" "0.17.0" "0.16.0" "0.15.0" "0.14.2" "0.14.1" "0.13.0")

for version in "${versions[@]}"; do
    echo
    echo "building crystal ${version}"
    echo
    docker build --no-cache -t rx14/alpine-crystal:${version} --build-arg crystal_version=${version}-r1 .
    docker push rx14/alpine-crystal:${version} &
done
