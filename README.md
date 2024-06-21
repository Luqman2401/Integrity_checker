The File Integrity Guardian is a Python-based system designed to ensure the security and integrity of files stored on a server or network. It utilizes hash functions to calculate unique fingerprints (hashes) of files and stores them in a SQLite database. The system continuously monitors the specified files and detects any changes or modifications. When a change is detected, it sends real-time notifications to administrators, allowing them to respond promptly to potential security threats. The File Integrity Guardian provides an essential layer of protection, ensuring data integrity and safeguarding against unauthorized file alterations.

Features
📁 Monitor files and directories
📝 Calculate file hashes
📊 Store hashes in a database
📬 Send real-time notifications
Installation
Clone the repository
Create a virtual environment
Install the dependencies
Run the application
python main.py
Variables
The following variables can be modified to customize the application:

Variable	Description	Default
FILES_DIRECTORY	The directory to be monitored	./monito
DATABASE_NAME	The name of the database	file_integrity.db
CONFIG_APPRISE	The Apprise configuration file	./config.yml
TODO
 Add support for multiple directories
 Add mini-dashboard
 Move dashboard to /board
 JSON response in / route
