# Code Quality for Terraform

> This repository contains low-quality Terraform code that uses the [Google Provider](https://www.terraform.io/docs/providers/google/index.html) to showcase a handful of ways of improving code hygiene and quality.

## Table of Contents

- [Code Quality for Terraform](#code-quality-for-terraform)
  - [Table of Contents](#table-of-contents)
  - [Important Links](#important-links)
  - [Author Information](#author-information)
  - [License](#license)

## Important Links

* Slides: [speakerdeck.com/ksatirli/code-quality-for-terraform](https://speakerdeck.com/ksatirli/code-quality-for-terraform)
* Code: [github.com/ksatirli/code-quality-for-terraform](https://github.com/ksatirli/code-quality-for-terraform)

## Usage

Start by copying [terraform.tfvars.sample](https://github.com/ksatirli/code-quality-for-terraform/blob/main/terraform.tfvars.sample) to `terraform.tfvars` and fill in your GCP-specific information:

```hcl
project_id     = "my-project-identifier" # replace with your GCP Project Identifier
project_domain = "my-domain.com"         # replace with your GCP Project Domain
```

Then, initialize the Terraform directory (`.terraform/`) by running `terraform init`.

This downloads the Google Provider for Terraform (as specified in [terraform.tf](https://github.com/ksatirli/code-quality-for-terraform/blob/main/terraform.tf)) and ensures you are running the correct Terraform version.

## Author Information

This repository is maintained by [Kerim Satirli](https://github.com/ksatirli).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
