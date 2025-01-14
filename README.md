# React Roman Numeral Converter

## Table of Contents
1. [Project Overview](#project-overview)  
2. [Build and Run Instructions](#build-and-run-instructions)  
3. [Engineering and Testing Methodology](#engineering-and-testing-methodology)  
4. [Project Packaging Layout](#project-packaging-layout)  
5. [Dependency Attribution](#dependency-attribution)  

---

## Project Overview

This project is a **Roman Numeral Converter** built with React. It includes two distinct implementations:  
1. **Custom Converter Component** - A standard component with a light/dark mode toggle.  
2. **React Spectrum-Based Component** - Utilizes Adobe React Spectrum for theme auto-detection.  

The project also integrates **performance monitoring** using `web-vitals` and logs metrics to a backend server.

---

## Build and Run Instructions

### Prerequisites
- **Node.js** (version 18 or later recommended)  
- **npm** (comes bundled with Node.js)  

### Steps
1. **Clone the Repository**  
   ```bash
   git clone https://github.com/yashatre98/React-Roman-numerals.git
   cd React-Roman-numerals
2. **Install Dependencies**  
   ```bash
   npm install
3. **Run the local server**  
   ```bash
   npm run dev
3. **Access the application**  
   ```Open your browser and navigate to:
   http://localhost:5173

## Engineering and Testing Methodology

### Engineering Approach
- **Component Design:**
  - **`Converter.jsx`** - Implements the primary Roman numeral converter with a toggleable theme button.
  - **`SpectrumConverter.jsx`** - Uses React Spectrum for theme-aware rendering without manual toggling.
- **Performance Monitoring:**
  - Implemented in **`vitals.js`** using the **web-vitals** library. Metrics such as **CLS**, **LCP**, **FCP**, and **TTFB** are sent to the backend using **Axios**.
- **Responsiveness:**
  - Both components are styled for optimal viewing on various screen sizes.

### Testing Approach
- **Unit Testing:**
  - **`Converter.test.jsx`** validates the core converter functionality.
  - **`SpectrumConverter.test.jsx`** tests the behavior of the Spectrum-based component.
- **Automation:**
  - Tests are executed using **Jest** and **React Testing Library**.

demo_gif
![demo_gif](https://github.com/user-attachments/assets/13b73eba-5787-4542-84f1-6c1a3ef7a6df)

test_coverage
![Code Coverage](https://github.com/user-attachments/assets/dfe22890-55b6-44d7-83bb-b2b8993b5258)
<img width="1509" alt="image" src="https://github.com/user-attachments/assets/3f3d7d19-9071-4765-8f86-161d4ef15d5f" />

<img width="1509" alt="image" src="https://github.com/user-attachments/assets/00212e77-9456-4f5b-9ce0-5efee138e83d" />
![Uploading image.png…]()

