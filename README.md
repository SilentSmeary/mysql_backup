# mysql_backup
- Open Task Scheduler by searching for it in the Start menu or by typing taskschd.msc in the Run dialog (Win + R) and pressing Enter.
- In the Task Scheduler window, click on "Create Basic Task..." in the Actions pane on the right side.
- Follow the wizard to give your task a name and description.
- Choose the trigger for the task. In this case, select "Weekly" and click Next.
- Set the day and time you want the task to run, and then click Next.
- Choose "Start a program" as the action to perform and click Next.
- In the "Program/script" field, browse to select the batch file you created earlier.
- Click Next, review your settings, and click Finish to create the task.


# Import the SQL_Backup.xml
- Make sure that you change line 50 to the file path where the .bat file is
