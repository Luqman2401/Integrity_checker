#!/usr/bin/env python

def main():

 _______           _______  _______  _        _______  _______ 
(  ____ \|\     /|(  ____ \(  ____ \| \    /\(  ____ \(  ____ )
| (    \/| )   ( || (    \/| (    \/|  \  / /| (    \/| (    )|
| |      | (___) || (__    | |      |  (_/ / | (__    | (____)|
| |      |  ___  ||  __)   | |      |   _ (  |  __)   |     __)
| |      | (   ) || (      | |      |  ( \ \ | (      | (\ (   
| (____/\| )   ( || (____/\| (____/\|  /  \ \| (____/\| ) \ \__
(_______/|/     \|(_______/(_______/|_/    \/(_______/|/   \__/
                                                               

    print("")

    print("What are you looking to do today?")
    print("1. Create Baseline")
    print("2. Run Check")
    print("3. Generate report")
    print("q. Quit")

    opt = input("Enter your choice: ")

    while opt != "q":
        if opt == "1":
            dir = input("Please enter a Directory to create a baseline of: ")
            # Call baseline_creator script
            import subprocess
            subprocess.run(["./baseline_creator.sh", dir])
        elif opt == "2":
            ans = input("WARNING! Running a check destroys any data stored in the temp_Reports file. Do you wish to continue? (y/n) ")
            if ans == "y":
                dir = input("Please enter the Directory you want to check: ")
                # Call run_check script
                import subprocess
                subprocess.run(["./run_check.sh", dir])
        elif opt == "3":
            ans = input("Would you like to create a report out of your temp_Reports file?(y/n) ")
            if ans == "y":
                name = input("Please name your report: ")
                # Call reporting script
                import subprocess
                subprocess.run(["./reporting.sh", "./Reports/temp_Report.txt", "> ./Reports/" + name])

        print("Would you like to do anything else?")
        print("1. Create Baseline")
        print("2. Run Check")
        print("3. Generate report")
        print("q. Quit")
        opt = input("Enter your choice: ")

if __name__ == "__main__":
    main()
