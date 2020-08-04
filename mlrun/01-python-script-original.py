source_file = "/User/igztraining/mlrun/data/demo.csv"
target_file = "/User/igztraining/mlrun/data/condos.csv"

fl = open(source_file,'r')
target_fl = open(target_file,'w')

for line in fl:
    if 'Condo' in line:
        target_fl.write(line)
        
        
target_fl.close()
    