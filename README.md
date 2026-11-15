# actions-runner

Runner image for self-hosted GitHub Actions runners on Actions Runner Controller (ARC): `ghcr.io/actions/actions-runner` plus `gh` and `python3-venv`, which GitHub-hosted runners include.

```
ghcr.io/robotjoosen/actions-runner:<runner version>
```

Every push to `main` builds and pushes the image, tagged with the runner version in the `Dockerfile` and `latest`. Dependabot bumps the runner version; merge its PR to publish the new image, then update the tag where scale sets use it.
