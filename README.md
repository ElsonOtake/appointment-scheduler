<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Author](#author)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Appointment Scheduler <a name="about-project"></a>

This was a take-home interview project for a company. It was **timboxed to 4 hours**.

**Ask:**

- "Prototype a web application for scheduling an appointment"

**Input:**

- "Given a [CSV dataset](./lib/seeds/coaches.csv) that contains the active coaches and their weekly schedule of their available hours, Output the following Client Stories:"
         
**Output:**
        
- As a Client, I want to see which coaches I can schedule with.
- As a Client, I want to see what 30 minute timeslots are available to schedule with a particular coach.
- As a Client, I want to book an appointment with a coach at one of their available times.
            
**Anti-Requirements:**

- You can't do it all. We respect your time, and expect that you will have to make choices and tradeoffs for what is in scope for y deliverable.
- Don't worry about authentication. Assume a non-authenticated experience to keep things simple.
- Pick your stack. Choose any libraries that help you produce the highest quality work in the time available.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://github.com/rspec/rspec-rails">RSpec Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](https://appointment-scheduler.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

[Ruby](https://www.ruby-lang.org/en/)

### Setup

Clone this repository to your desired folder:

using HTTPS:
```sh
  git clone https://github.com/ElsonOtake/appointment-scheduler.git
  cd appointment-scheduler
```

using an SSH key:
```sh
  git clone git@github.com:ElsonOtake/appointment-scheduler.git
  cd appointment-scheduler
```

using GitHub CLI:
```sh
  git clone gh repo clone ElsonOtake/appointment-scheduler
  cd appointment-scheduler
```

### Install

Install this project with:
```sh
  bundle install
  rails db:create db:migrate db:seed
```

### Usage

To run the project, execute the following command:

```sh
  rails server
```
Open `http://localhost:3000/` on your browser.

### Run tests

To run tests, run the following command:

```sh
  rspec
```

<!-- AUTHOR -->

## 👥 Author <a name="author"></a>

👤 **Elson Otake**

- GitHub: [elsonotake](https://github.com/elsonotake)
- Twitter: [@elsonotake](https://twitter.com/elsonotake)
- LinkedIn: [elsonotake](https://linkedin.com/in/elsonotake)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank:

- [Microverse](https://www.microverse.org/)
- [W3Schools](https://www.w3schools.com/)
- [Stack Overflow](https://stackoverflow.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
