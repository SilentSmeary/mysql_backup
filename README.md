# Automate Running a Batch File Weekly on Wednesday Using Task Scheduler
- Open Task Scheduler by searching for it in the Start menu or by typing `taskschd.msc` in the Run dialog (Win + R) and pressing Enter.
- In the Task Scheduler window, click on "Create Basic Task..." in the Actions pane on the right side.
- Give your task a name and description that makes it easy to identify, such as "Weekly Wednesday MySQL Backup".
- When prompted to choose the trigger for the task, select "Weekly" and click Next.
- In the weekly options, select "Wednesday" from the days of the week list. Set the time you want the task to run. This should be a time when your computer is likely to be on. Click Next after setting the day and time.
- For the action, choose "Start a program" and click Next.
- In the "Program/script" field, click Browse to select the batch file you have prepared for the MySQL backup. This file should contain all necessary commands to perform the backup.
- Click Next, review your settings to ensure everything is correct. Pay special attention to the day, time, and script path.
- Click Finish to create the task. Your computer will now automatically run the batch file every Wednesday at the specified time, ensuring regular backups of your MySQL database.

# Import the SQL_Backup.xml
- Before importing check that you are happy with the current configuration that is set to run the .bat file once every week
- Make sure that you change line 50 to the file path where the .bat file is
- Open the Task Scheduler
- Head to the side bar and locate the Import Task
- Click on the Import Task button
- A window will appear, select the XML file you downloaded earlier
- Click OK to import the task

