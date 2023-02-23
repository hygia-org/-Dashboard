import argparse
import pandas as pd
from sqlalchemy import create_engine

def save_csv_to_postgresql(file_path, nrows):
    # Lê o arquivo csv em um dataframe
    df = pd.read_csv(file_path, sep='¨', nrows=nrows, engine='python')

    # Conecta ao banco de dados
    engine = create_engine('postgresql://superset:superset@localhost:5432/superset')

    # Salva o dataframe como uma tabela no banco de dados
    df.to_sql('dell', engine)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Save CSV file to PostgreSQL')
    parser.add_argument('file_path', help='Path to the CSV file')
    parser.add_argument('nrows', type=int, help='Number of rows to read from the CSV file')
    args = parser.parse_args()

    save_csv_to_postgresql(args.file_path, args.nrows)