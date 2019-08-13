# Kubrenetes gcr.io images Sync

## Usage

```yaml
name: k8s image sync
on:
  schedules:
  - cron: 0 */6 * * *
jobs:
  k8s-image-sync:
    name: k8s image sync
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: docker login
      uses: actions/docker/login@master
      env:
        DOCKER_PASSWORD: ${{ secrets.DOCKER_PASSWORD }}
        DOCKER_USERNAME: ${{ secrets.DOCKER_USERNAME }}
    - name: sync
      uses: maguowei/actions/k8s-image-sync@master
      env:
        REGISTRY: gotok8s
```
