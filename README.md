Hi Everyone,

I am Kuiyu DING, I studied in wireless telecommunications and IOT system at ISEP, Paris in 2022.09-2024.02. In this repository, I have uploaded my major Projects that I worked on through out my semesters.

Project 1 : Pong Game Development

In this project, a flex sensor, capable of altering resistance when bent, was utilized to create a unique Pong game. The sensor's voltage output was sent from a tm4c123GXL microcontroller to the Processing software. In Processing, a graphical library and IDE designed for visual programming, a Pong game was developed. One paddle was controlled using the flex sensor's variable voltage output, while the other paddle was manipulated with a mouse.

The game implementation involved drawing and moving the ball and paddles, restricting paddle movements within the screen boundaries, and ensuring the ball bounced off paddles. When a player using the flex sensor won (reaching a score of 10), an automatic tweet was posted on Twitter via the Twitter API. To achieve this, access to Twitter's developer account was obtained, and API keys including consumer key, consumer secret key, access token key, and access token secret key were acquired.

The Simpletweet library in Processing enabled the tweet posting functionality, triggered when a player reached the winning score. This project showcased the integration of hardware (flex sensor and microcontroller) with software (Processing), providing an interactive gaming experience with real-time social media interaction upon victory.

Project 2 : Tiva Microcontroller integration

In this project, I learned fundamental concepts of connections and microcontrollers. The project involved connecting an LCD, understanding potentiometer functionality, establishing Bluetooth communication between the microcontroller and a computer, and working with a temperature and humidity sensor. This hands-on experience provided valuable insights into hardware connections and sensor interactions, enhancing participants' understanding of microcontroller applications and their practical implementation.

Project 3 : Big data

This project involves analyzing movie data from APIs and IMDb records using Apache Airflow, organized through a Directed Acyclic Graph (DAG). Two main analyses were conducted: computing yearly average ratings and recommending highly-rated movies (above 8) released after 2000. These analyses were performed using Spark SQL queries.

Data from two APIs was processed, converted from raw formats to efficient Parquet files, and then joined using IMDb IDs with SQL(Join). The first analysis focused on calculating average ratings annually, while the second identified top-rated movies released after 2000, sorted by numVotes.

The Joined data was indexed in Elasticsearch and visualized in Kibana. Two indexes, "movies" and "moviesdata," were created. Usage 1 was represented as a vertical bar chart displaying average ratings per year, while Usage 2 utilized a data model showing numVotes and ratings, sorted descendingly. These visualizations were accessible through an Elasticsearch dashboard, enabling user-friendly data exploration.

Project 4 : IOT in healthcare

This collaborative project involved ten team members split into two groups: five focused on Mobile platforms and the other five on Fixed platforms. Mobile teams integrated sensors with Arduino, detecting step counts and fall incidents through acceleration magnitude analysis. A GPS module provided latitude and longitude data. Through USB serial communication, Arduino sent this sensor data to a Raspberry Pi 3 Model B+ acting as a powerful gateway, equipped with WiFi and Bluetooth capabilities.

The team configured the Raspberry Pi by installing Raspberry Pi OS and connecting it to Firebase, Google's cloud service. Python scripts were developed to receive data from Arduino and transmit it to Firebase in real-time. Firebase Realtime Database was used for seamless data storage and retrieval, ensuring constant synchronization.

Data visualization was achieved using HTTP, JavaScript, and Firebase Realtime Database, enabling dynamic webpage updates. The integration allowed for efficient collaboration between Mobile and Fixed platforms, with sensor data processed through Arduino, transmitted to the Raspberry Pi gateway, and visualized in real-time on the project website. This comprehensive system provided accurate monitoring of step counts, fall incidents, and GPS coordinates, enhancing the project's potential applications in real-world scenarios.

Project 5 : ECG_Monitoring_Project

This project introduces an ECG Monitoring System employing the Pan and Tompkins algorithm for R-peak detection and BPM computation. Integrated with a mobile app, users can conveniently monitor and store ECG recordings.

Sponsored by Epsidy, a healthcare-focused startup renowned for its data-driven garment diagnosing heart disease in women and MRI-compatible tools for cardiovascular diseases. 

This project leverages advanced tech, connecting an ECG sensor to Arduino for efficient data capture, utilizing MQTT for reliable data flow to Raspberry Pi. The Pi processes ECG data, identifying R peaks and calculating BPM using Neurokit2 for accurate irregularity detection. Real-time ECG data visualization and storage are achieved, with data accessible via an Android app and securely stored in MongoDB Atlas. The final report delves into project phases, including sensor integration, data processing, and visualization/storage implementation.






