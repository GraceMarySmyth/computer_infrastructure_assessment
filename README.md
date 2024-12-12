# computer_infrastructure_assessment
Project for Computer Infrastructure. Data analytics in ATU

Lecturer: Ian McLoughlin

**Project by: Grace Mary Smyth**

This assignment contains 9 tasks:
Task 1:
Using the command line, create a directory/folder named data at the root of the repository. Inside data, create two subdirectories: timestamps and weather. Completed.

Task 2:
Navigate to the data/timestamps directory. Use the date command to output the current date and time, appending the output to a file named now.txt using the >> operator to append (not overwrite) the file. Repeat this step ten times, then use the more command to verify that now.txt has the expected content. Completed.

Task 3:
Run the date command again, but this time format the output using YYYYmmdd_HHMMSS. Append the formatted output to a file named formatted.txt. Completed.

Task 4:
Use the touch command to create an empty file with a name in the YYYYmmdd_HHMMSS.txt format. This can be achieved by embedding your date command in backticks ` into the touch command. You should no longer use redirection (>>) in this step. Completed.

Task 5:
Change to the data/weather directory. Download the latest weather data for the Athenry weather station from Met Eireann using wget. Use the -O <filename> option to save the file as weather.json. The data can be found at this URL:
https://prodapi.metweb.ie/observations/athenry/today. Completed.

Task 6:
Modify the command from Task 5 to save the downloaded file with a timestamped name in the format YYYYmmdd_HHMMSS.json. Completed.

Task 7:
Write a bash script called weather.sh in the root of your repository. This script should automate the process from Task 6, saving the weather data to the data/weather directory. Make the script executable and test it by running it. Completed.

Task 8:
Create a notebook called weather.ipynb at the root of your repository. In this notebook, write a brief report explaining how you completed Tasks 1 to 7. Provide short descriptions of the commands used in each task and explain their role in completing the tasks. In Progress.

Task 9:
In your weather.ipynb notebook, use the pandas function read_json() to load in any one of the weather data files you have downloaded with your script. Examine and summarize the data. Use the information provided data.gov.ie to write a short explanation of what the data set contains.

PROJECT:
In this project, you will automate your weather.sh script to run daily and push the new data to your repository. The following steps will create the necessary GitHub Actions workflow.

1. Create a GitHub Actions Workflow: In your repository, create a folder called .github/workflows/ (if it doesn't already exist). Inside this folder, create a file called weather-data.yml. This file will define the GitHub Actions workflow.

2. Run Daily at 10am: Use the schedule event with cron to set the script to run once a day at 10am. Include also the workflow_dispatch event so you can test the workflow.

3. Use a Linux Virtual Machine In the workflow file, specify that a Ubuntu virtual machine should be used to run the action.

4. Clone the Repository Have the workflow clone your repository.

5. Execute the weather.sh Script Add a step that runs your weather.sh script.

6. Commit and Push Changes Back to the Repository Finally, configure the workflow to commit the new weather data and push those changes back to your repository.

7. Test the Workflow Commit and push the workflow to your repository. Check the logs in GitHub to ensure that the weather.sh script runs correctly, that new data is being committed.

(https://github.com/ianmcloughlin/2425_computer_infrastructure/blob/main/README.md)


* Due to an issue identified on Tuesday 10th December 2024. The issue was that because there was so many requests for information to Met Eireann, That the firewall in Met Eireann may have started blocking requests. This is common  with automated scripts. For this reason, althought he project brief specified that the script be run at 10.00, Ian requested that we each individually pick different times to request the information from Met Eireann.
 It is good practice to put scripts into a Notebbok to test the code first and ensure they are running correctly. 
 The Notebook for this part of the assignment is in the directory "Notebooks"