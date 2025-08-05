import React, { useEffect } from "react";
import styles from "./Hero.module.css";
import gsap from "gsap";

const Hero = () => {
  useEffect(() => {
    gsap.fromTo(
      ".leftcontainer h1",
      { x: -300, opacity: 0 },
      { x: 0, opacity: 1, duration: 0.5, delay: 0.7 }
    );

    gsap.fromTo(
      ".leftcontainer p",
      { x: -100, opacity: 0 },
      { x: 0, opacity: 1, duration: 0.4, delay: 0.8 }
    );

    gsap.fromTo(
      ".leftcontainer button",
      { opacity: 0 },
      { opacity: 1, duration: 0.4, delay: 0.9 }
    );

    gsap.fromTo(
      ".rightcontainer img",
      { x: 200, opacity: 0 },
      { x: 0, opacity: 1, duration: 1, delay: 1.1 }
    );
  }, []);

  return (
    <div className={styles.container}>
      <div className={`${styles.leftcontainer} leftcontainer`}>
        <h1>Navigating the digital landscape for success</h1>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim dicta,
          libero expedita minima aut animi nam nostrum repellat porro eos, optio
          est culpa repellendus magni aliquid voluptatibus. Deleniti, nobis
          tempora?
        </p>
        <button>Book a consultation</button>
      </div>
      <div className={`${styles.rightcontainer} rightcontainer`}>
        <img
          src="https://awaaz-frontend.vercel.app/assets/Mic-BF4SCayK.png"
          alt="Consultation Mic"
        />
      </div>
    </div>
  );
};

export default Hero;
