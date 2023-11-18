import csv

def read_csv(csv_file):
    data = []
    with open(csv_file, "r") as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            data.append(row)
    return data

#print(read_csv("../Data/login.csv"))