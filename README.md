# actions-runner

Runner image for self-hosted GitHub Actions runners on Actions Runner Controller (ARC): `ghcr.io/actions/actions-runner` plus tools GitHub-hosted runners include that the stock image lacks: `gh`, `python3-venv`, `envsubst` (gettext-base), `zip`, `xz`, `file`, `rsync` and `build-essential`.

```
ghcr.io/robotjoosen/actions-runner:<runner version>-<commit>
```

Every push to `main` builds and pushes the image, tagged `<runner version>-<commit>`, `<runner version>` and `latest`. Pin the `-<commit>` tag: nodes cache images by tag and do not pull a rebuilt `<runner version>` again. Dependabot bumps the runner version; merge its PR to publish the new image, then update the tag where scale sets use it.
