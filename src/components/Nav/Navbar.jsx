import React, { useEffect } from "react";
import styles from "./Navbar.module.css";
import { gsap } from "gsap"; // Import gsap
import { ScrollTrigger } from "gsap/ScrollTrigger";

gsap.registerPlugin(ScrollTrigger);

const Navbar = () => {
  useEffect(() => {
    gsap.fromTo(
      "nav h1, nav h4, nav button",
      { y: -20, opacity: 0 },
      { y: 0, opacity: 1, delay: 0.6, duration: 0.1, stagger: 0.1 }
    );
  }, []);

  return (
    <section>
      <div className={styles.MainSection}>
        <nav>
          <h1>
            <i className="ri-shining-2-fill"></i>WizardZ
          </h1>
          <div className={styles.list}>
            <h4>About us</h4>
            <h4>Services</h4>
            <h4>Use Cases</h4>
            <h4>Pricing</h4>
            <h4>Blog</h4>
            <button>Request a quote </button>
          </div>
        </nav>
        <div className={styles.container}>
          <div className="leftcontainer"></div>
          <div className="rightcontainer"></div>
        </div>
      </div>
    </section>
  );
};

export default Navbar;
