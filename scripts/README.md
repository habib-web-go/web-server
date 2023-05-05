# Scripts

- [Certificate Generator](#ssl-certificate-generator)

## SSL Certificate Generator

This script generates a self-signed SSL certificate using OpenSSL.

### Usage

    ./generate_ssl.sh [-o|--out <output_path>] [-k|--keyout <private_key_output_path>]

<div style="text-align:justify">
By default, the script will output the certificate to `../ssl/bundle.crt` and the private key to `../ssl/private.key`. You can specify a different location for each file by using the `-o` or `--out` flag, followed by the desired output path for the certificate file, and the `-k` or `--keyout` flag, followed by the desired output path for the private key file.
</div>  

If any other argument is passed to the script, it will return an error message.

### Example Usage

To generate an SSL certificate and key using the default output paths:

    ./generate_ssl.sh

To generate an SSL certificate and key with custom output paths:

    ./generate_ssl.sh -o /path/to/certificate.crt -k /path/to/private_key.key`
