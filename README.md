# Augmented RCBD Analysis in R

## Overview
This R script performs **Augmented Randomized Complete Block Design (RCBD)** analysis for unbalanced experimental data. It is designed for plant breeders who want to evaluate large diversity panels where test genotypes are unreplicated, using checks as references to estimate errors.

The script allows users to:

- Analyze **augmented RCBD trials** with incomplete blocks.
- Compute **ANOVA** for all traits.
- Estimate **variance components**.
- Calculate **broad-sense heritability (H²)**.
- Generate **adjusted means** for all genotypes.
- Use **checks as references** to correct for block effects, allowing robust evaluation of unreplicated genotypes.

This workflow enables breeders to efficiently test **large sets of genotypes** without requiring full replication, saving space and resources while obtaining reliable statistical estimates.

---

## Features

- Supports **multiple traits** in one dataset.
- Generates **ANOVA tables** and summaries.
- Provides **Genotypic Variance Analysis (GVA)** and variance components.
- Calculates **broad-sense heritability** per trait.
- Produces **adjusted means** of genotypes for comparison.
- Can output results to **Word documents** (`.docx`) for easy reporting.
- Handles **augmented, unbalanced designs** using `augmentedRCBD` package.

---

## Input Requirements

- An Excel file with columns for:
  - `Block` – experimental blocks
  - `Genotype` – test and check genotypes
  - Trait columns (numeric values for measured traits)
- Test genotypes do **not require replication**, while **checks are used as reference** to estimate experimental error.

---

## Output

The script generates:

- **ANOVA tables** for each trait.
- **Variance components** (genotypic, residual, etc.).
- **Broad-sense heritability (H²)** estimates for each trait.
- **Adjusted means** of all genotypes.
- Optional **frequency distributions and descriptive statistics**.
- Outputs are saved as Word documents (`.docx`) for reporting.

> **Note** See a sample analysis and it's application [here](https://journals.ashs.org/view/journals/hortsci/57/12/article-p1507.xml)

---

## Citation

If you use this script, please cite the underlying R package:

Aravind, J., Mukesh Sankar, S., Wankhede, D. P., and Kaur, V.  
**augmentedRCBD: Analysis of Augmented Randomised Complete Block Designs**.  
R package version 0.1.7.9000,  
[https://aravind-j.github.io/augmentedRCBD/](https://aravind-j.github.io/augmentedRCBD/)  
[CRAN link](https://cran.r-project.org/package=augmentedRCBD)

---

## Author

**Ehtisham Khokhar**  
New Mexico State University  
Email: ehtishamshakeel@gmail.com 

