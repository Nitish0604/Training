# Automatic Backup of Specific Files Using Scripting and Task Scheduler
Creating an automatic backup of specific files using a shell script and Task Scheduler.

## Step 1: Create the Shell Script

1. **Create the `.sh` file**:
    - Save the following script code in a file named `backup.sh`:


    SOURCE_DIR="/d/OneDrive - Olam International/Desktop/New Folder"

    BACKUP_DIR="/d/OneDrive - Olam International/Desktop/Backup"

    TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

    BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# Create Directory if not exists

mkdir -p "$BACKUP_DIR"


# Create a compressed tar file

tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"


    # Create directory if not exists
    mkdir -p $BACKUP_DIR

    # Create a compressed backup of the source directory
    tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"
    

![alt text](image.png)

2. **Run the shell script in bash**:
    - Open a terminal and navigate to the directory containing `backup.sh`.
    - Execute the script by running:
      ```sh
      sh backup.sh
      ```
 

3. **Verify the backup**:
    - A `backup` folder will be created in the script directory, containing the backup file.
   
   ![alt text]({700BC268-9882-412C-9A12-3DFC53532EC5}.png)

## Step 2: View the Backup

1. **Extract the backup file**:
    - Navigate to the `Backup` folder and extract the `.tar.gz` file using:
      ```sh
      tar -xzf backup-<TIMESTAMP>.tar.gz
      ```

    
![alt text]({C47EF4B0-B43E-48D2-840C-DB46FB024AA5}.png)


2. **View the backed-up file in an IDE**:
    - Open the extracted file in your preferred IDE to verify its contents.


## Step 3: Automate the Backup Using Task Scheduler

1. **Open Task Scheduler**:
    - Search for "Task Scheduler" in the Start menu and open it.



2. **Create a Basic Task**:
    - Click on "Create Basic Task" in the right-hand pane.
      
    ![alt text]({D2CF52BA-1E42-449A-8958-EC364E7DC8F8}.png)

3. **Select a Trigger**:
    - Choose when you want the task to run (e.g., daily, weekly).

    ![alt text](image-2.png)

4. **Select an Action**:
    - Choose "Start a Program" and browse to the location of your `backup.sh` script.

![alt text](image-3.png)


5. **Finish the Task Setup**:
    - Review your settings and click "Finish".

![alt text](image-1.png)

6. **Verify the Scheduled Task**:
    - Ensure the task is listed in the Task Scheduler Library and is set to run at the specified time.

  ![alt text]({1ACBF641-E06E-4631-B518-031E01E80FD2}.png)