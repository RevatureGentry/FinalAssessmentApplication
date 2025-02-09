# 1	Assessment pre-requisites
 
 This will have details of software and tools required for assessment. This will also have instructions on installation process and how to deploy and configure sample application. 

## 1.1	Assessment Application

 Online Retail Application: This application was built for internal training and evaluation purposes. This Online retail application was developed from a sample shop application. 

### 1.1.1	Architecture
     
 The application is built on ReactsJS user interface, Spring Boot based micorservices layer to serve the data demands, Netflix OSS based API layer and MySQL database to hold the retail store data.
    
 Web Tier [Apache httpd] -> App Tier [SpringBoot Java Microservice] -> Data Tier [MySQL]


### 1.1.2	Deployment

The section describes the step by step instruction to host the application in target infrastructure (On-Premise or cloud)

*Prerequisites*

•	Apache httpd web server 2.4

•	JDK 1.8+

•	MySQL 5.6

### Database layer

### Installation Steps for Windows

Step 1: Download MySQL Installer from https://dev.mysql.com/downloads/installer/ and execute it.

Step 2: Choose the appropriate Setup Type for your system. Typically you will choose Developer Default to install MySQL server and other MySQL tools related to MySQL development, helpful tools like MySQL Workbench. Or, choose the Custom setup type to manually select your desired MySQL products.

Step 3: Complete the installation process by following the instructions. This will install several MySQL products and start the MySQL server.

### Data Setup 

Create the database schema and tables by running the queries under `online-retail-service/MySQLQueries.sql`. This will also populate the data requirerd to run the application.

### Data Validation

Check the inserted data by running the query "select * from product"



### Microservice Deployment

1. Create a directory for `retail-store-service` (<Path to UI Module>/training/retail-store-service)
2. Copy all files under "/deployment/retail-store-service" to newly created directory "<Path to UI Module>/training/retail-store-service"
3. Edit config/application.properties for correct MySQL database connection information
4. Use the below bat scripts to start/stop the service
	* To Start the application service by simply type the following command and the logs will be appending under /logs directory
		```
		./startup.bat
		```
	* To stop the application service, simply type the following command
		```
		./shutdown.bat
		```

Note: This service layer requires java jdk 1.8+. 
		

Troubleshoot any errors / issues by reviewing log files. For more information on application properties and log files, please refer conf directory. 

### Apache Web Server Installation for Windows

Download the appropriate installer / zip archive from link https://directory.apache.org/studio/download/download-windows.html and follow the setup instructions

https://www.apachelounge.com/download/


### Apache Web Server Configuration

1. Modify directory configuration in apache config file and change "<Path to UI module>/training/online-retail-ui" to corresponding location of ui build. Refer this link for windows https://thecodecentral.com/2007/03/24/setting-up-your-own-web-server-with-apache-http-server-php-and-mysql-on-a-windows-machine#Changing_Document_Root

		```
		Alias /training/retail <Path to IU Module>/training/online-retail-ui

		<Directory /training/online-retail>

			## No MultiViews
			AddOutputFilterByType DEFLATE text/html
			DirectoryIndex index.html
			Options FollowSymLinks

			Require all granted

		</Directory>
		```
2. Setup reverse proxy for microservice layer. Add below configuration to apache config file. Change the "localhost" to appropriate domain or ip in the below config.
		```
		ProxyPass /retail  http://localhost:10001/retail
		ProxyPassReverse /retail  http://localhost:10001/retail
		```
3. Restart Apache instance

### UI Deployment

1. Production build is available in release branch "/deployment/ui"
2. Copy all contents of ui to directory (<Path to UI Module>/training/online-retail-ui)

Please ensure that httpd timeout value is increased to 600 seconds to avoid timeout.

## The Online Retails Shop

The URL for the content is `http://<application domain>/training/retail`

## 4.1	Performance Engineering Tool Requirements

### 4.1.1	Performance Testing 

JMeter or similar load generation and performance testing tools

### 4.1.2	Infrastructure monitoring

Perfmon or similar infrastructure monitoring tools to analyze CPU, Memory, Network and Storage performance

### 4.1.3	Profiling Tools

#### 4.1.3.1	UI Profiling

UI Performance Profiling Tools similar to Fiddler

#### 4.1.3.2	Application Profiling

Java profiler, Thread dump analysis and heap dump analysis tools like JProfiler, VisualVM, MAT, etc.

#### 4.1.3.3	DB Profiling

MySQL DB Query profiling tool

# 5	Performance scripting 

## 5.1	User Registration

Online Retail Store Training Application Traversal Flow

Transaction 1: Launch the Online Retail Store Application Url: https://localhost:8080/training/retail



Transaction 2: For New User click Register and enter the Username & Password


## 5.2	Purchase

Transaction 1: Launch the Online Retail Store Application Url: https://localhost:8080/training/retail

Transaction 2: Click Sign in and enter the Username and Password

Transaction 3: For adding the respective item to the Cart click ADD. To do the purchase for the selected item click Checkout

Transaction 4: In check-out page enter the Credit Card information and Billing information and then click Complete Order

Transaction 5: Once the order is completed, completed successful message will be displayed



