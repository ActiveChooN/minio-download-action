# Minio download GitHub action

Runs minio client (`mc cp` command) to download files from remote bucket

# Usage

Add this action to your `workflow.md`

```yaml
- name: 'Minio download'
  uses: 'ActiveChooN/minio-download-action@v1'
  with:
    endpoint: ${{ secrets.ENDPOINT }}
    access_key: ${{ secrets.ACCESS_KEY }}
    secret_key: ${{ secrets.SECRET_KEY }}
    remote_path: 'path/on/remote/bucket'
    local_path: 'path/on/local/runner'
    # Optional params:
    api_version: 'S3v4'
    bucket: 'bucket_name'
    args: '--recurcive'
```

# License

Licensed under the MIT license. See [LICENSE](LICENSE).