# DB Migration Project

This project is designed to handle database migration tasks using various SQL scripts. The main script to run the project is `main.py`.

## Project Structure

```
.
├── input
│   ├── 23
│   │   ├── apollo__column_info_apollo.sql
│   │   ├── apollo__model_info_apollo.sql
│   │   ├── ...
│   │   └── apollo_xtools_2021_tb.sql
│   └── 24
│       ├── apollo_dev_ai_ds_ml5_prdct_emotion.sql
│       ├── apollo_dev_ai_ds_ml7_promising_company.sql
│       ├── ...
│       └── apollo_dev_xtools_2021_tb_202310.sql
├── main.py
├── output
└── utils
  ├── compare.py
  ├── file_support.py
  ├── text_support.py
  └── validate.py
```

## How to Run

To execute the main script, use the following command:

```sh
python main.py
```

## Folders

- **input/**: Contains the SQL scripts categorized by folders `23` and `24`.
- **output/**: Directory where the output files will be stored.
- **temp/**: Temporary files used during the migration process.
- **utils/**: Utility scripts for supporting functions like file comparison, validation, and text support.

## Scripts

- **main.py**: The main script to run the migration process.
- **run.sh**: Shell script to automate the running of the main script.
- **utils/**: Contains helper scripts:
  - `compare.py`: Script for comparing files.
  - `file_support.py`: Script for file handling operations.
  - `text_support.py`: Script for text processing.
  - `validate.py`: Script for validation tasks.

## Usage

1. Place your SQL scripts in the appropriate `input` subdirectories.
2. Run the main script using `python main.py`.
3. Check the `output` directory for the results.

## License

This project is licensed under the MIT License.
