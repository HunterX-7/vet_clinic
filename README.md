<a name="readme-top"></a>

<div align="center">

  <img src="./veterinarian.png" alt="logo" width="140"  height="auto" />
  <br/>

  <h2><b>Vet Clinic</b></h2>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo & Project Presentation](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Vet Clinic <a name="about-project"></a>

**Vet Clinic** is a project, using a relational database to create the initial data structure for a vet clinic. I create a table to store animals' information, insert some data into it, and query it.

 <!-- <img src="#" alt="app-demo" /> -->

 </br>

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<ul>
  <li>postgresSQL</li>
</ul>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Create a data structure.
- Store animals information.
- Insert data and query it.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo & Project Presentation <a name="live-demo"></a>

- Live Demo coming soon...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

### Prerequisites

- postgreSQL installed locally

### Setup

Clone this repository to your desired folder:

```sh
git clone https://github.com/HunterX-7/vet_clinic.git
```

- Access the cloned directory with:

```sh
cd vet_clinic
```

- Open it with your favorite code editor or with the live server

### Install

To recreate the database use the following comand:

```sh
psql -U username -f schema.sql
psql -U username -f data.sql
psql -U username -f queries.sql
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Author <a name="authors"></a>

👤 **Francisco Quintero**

- GitHub: [@HunterX-7](https://github.com/HunterX-7)
- Twitter: [@franquin07](https://twitter.com/franquin07)
- LinkedIn: [Francisco Quintero](https://www.linkedin.com/in/francisco-quintero-146423252/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] Add more interactivety to the database.
- [ ] Add more unique features.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/HunterX-7/vet_clinic/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

I really enjoyed working on this project. If you like it show your support by giving a star.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Acknowledgments -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Hat tip to anyone whose code was used.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](https://choosealicense.com/licenses/mit/) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
