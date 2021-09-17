# porter-update-action

This Github action triggers a job run for a job that has been deployed on Porter.

## Usage

```yaml
steps:
  - name: Checkout code
    uses: actions/checkout@v2.3.4
  - name: Run Porter job
    uses: porter-dev/porter-update-action@v0.1.0
    with:
      job: job-name
      cluster: 1234
      project: 4321
      token: ${{ secrets.PORTER_TOKEN }}
```

## Configuration Options

The possible inputs are:

- `job`: (string, required): Name of job.
- `cluster`: (number, required): Cluster ID of Porter cluster.
- `host`: (string, optional): Host URL of Porter instance. Set this if you use a self-hosted Porter instance.
- `namespace`: (string, optional): Namespace of the application (default "default")
- `project`: (number, required): Project ID of Porter project.
- `token`: (string, required): Token for Porter authentication.
