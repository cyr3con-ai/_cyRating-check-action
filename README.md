# cyRating check GitHub Action

This action returns cyRating value for a given CVE number.

## Inputs

### `access-token`

**Required** access token to authenticate usage.

### `secret-token`

**Required** secret token to authenticate usage.

### `cve`

**Required** CVE number for which cyRating have to be checked.

## Outputs

### `cy-rating`

The cyRating value for a given CVE number.

## Example usage

```yaml
...
uses: cyr3con-ai/cyRating-check-action@v2
with:
  access-token: ${{ secrets.CY_RATING_CHECK_ACTION_ACCESS_TOKEN }}
  secret-token: ${{ secrets.CY_RATING_CHECK_ACTION_SECRET_TOKEN }}
  cve: CVE-2019-17549
...
```

Sample workflows using this action can be found in a [dedicated repository](https://github.com/cyr3con-ai/cyRating-check-action-examples/actions).