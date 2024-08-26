# file_processor.py

# Read the contents of input.txt and count the lines
with open('/home/muhammad-usama-shafiq/Mlops/task01/input.txt', 'r') as file:
    lines = file.readlines()
    line_count = len(lines)

# Write the line count to output.txt
with open('/home/muhammad-usama-shafiq/Mlops/task01/output.txt', 'w') as file:
    file.write(f"Number of lines: {line_count}\n")
