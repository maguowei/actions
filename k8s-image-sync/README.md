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
    - name: sync
      uses: maguowei/actions/k8s-image-sync@master
      with:
        username: ${{ secrets.DOCKER_USERNAME }}
        password: ${{ secrets.DOCKER_PASSWORD }}
        repository: gotok8s
```
