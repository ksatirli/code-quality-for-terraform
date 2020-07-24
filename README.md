# Code Quality for Terraform

> This repository contains low-quality Terraform code that uses the [Google Provider](https://www.terraform.io/docs/providers/google/index.html) to showcase a handful of ways of improving code hygiene and quality.

## Table of Contents

- [Code Quality for Terraform](#code-quality-for-terraform)
  - [Table of Contents](#table-of-contents)
  - [Important Links](#important-links)
  - [Usage](#usage)
  - [Code Quality](#code-quality)
    - [Using built-in tooling](#using-built-in-tooling)
    - [Using pre-commit locally](#using-pre-commit-locally)
    - [Using pre-commit via GitHub Actions](#using-pre-commit-via-github-actions)
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

Then, initialize the Terraform directory (`.terraform/`) by running `terraform init`:

![CLI command: terraform init](images/terraform-init.gif)

This downloads the Google Provider for Terraform (as specified in [terraform.tf](https://github.com/ksatirli/code-quality-for-terraform/blob/main/terraform.tf)) and ensures you are running the correct Terraform version.

## Code Quality

Terraform projects rarely exist in isolation. That is: a repository containing Terraform files (`.tf`), will often contain related files in one or more of the following formats:

* Shell scripts (`.sh` and `.bash`)
* HCL (`.hcl`)
* JSON (`.json)
* YAML (`.yaml` and `.yml`)
* Markdown (`.md` and `.mdx`)

Ensuring proper code quality for _all_ files is important, as an uncaught error in a Shell-script may result in a Terraform Resources not being created, correctly.

While it is outside the scope of this repository to advise you on linting rules for all the above files, you are encouraged to check out [@operatehappy/dotfiles-org](https://github.com/operatehappy/dotfiles-org) for a collection of code quality configurations that work _well_ with Terraform-adjacent code.

### Using built-in tooling

Terraform includes two very useful utilities to improve the quality of your code, without the need for external applications.

To format your code, using the canonical rules, use `terraform fmt`. Then, validate your code using `terraform validate`:

![CLI command: terraform fmt and terraform validate](images/terraform-fmt-and-validate-good.gif)

### Using `pre-commit` locally

To use `pre-commit` locally, follow the installation instructions on [pre-commit.com](https://pre-commit.com/#install) and then initialize your repository:

![CLI command: pre-commit install](images/pre-commit-install.gif)

This will configure `.git/hooks/pre-commit` to reflect your local `pre-commit` installation.

On every commit, `git` (including GUI clients) will now run all checks listed in [.pre-commit-config.yaml](https://github.com/ksatirli/code-quality-for-terraform/blob/main/.pre-commit-config.yaml).

Next to automated runs, it is possible to invoke these checks manually. For this, you can use `pre-commit run --all-files`:

![CLI command: pre-commit run -all-files](images/pre-commit-run-bad.gif)

### Using `pre-commit` via GitHub Actions

It is possible to run `pre-commit` as part of [GitHub Actions](https://github.com/features/actions). This process is involved and requires the following:

* access to `pre-commit` inside of GitHub Actions
* a check-out of the code you want to run `pre-commit` against

Depending on the `pre-commit` handlers you want to run, you will need to install various applications that are then used as part of `pre-commit`.

A sample implementation of this process, including checking out an organization-wide `pre-commit` configuration can be found in [@operatehappy/terraform-aws-route53-workmail-records](https://github.com/operatehappy/terraform-aws-route53-workmail-records/blob/master/.github/workflows/code-quality.yml).

## Author Information

This repository is maintained by [Kerim Satirli](https://github.com/ksatirli).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
