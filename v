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






* {}

section {
    height: 100%;
    width: 100%;
    position: relative;
    ;
}

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 60px 80px;

}

.list {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 80px;
}

nav h1 {
    font-size: 50px;
    display: flex;
    align-items: center;
    gap: 20px;
}

nav h1 i {
    rotate: 45deg;
    display: inline-block;
    font-size: 55px;
}

nav h4 {
    font-size: 25px;
    font-weight: 500;
}

nav button {
    padding: 22px 40px;
    font-size: 22px;
    border-radius: 5px;
    background-color: transparent;
    font-weight: 600;
    border: 1px solid black;
}




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








.container {
    padding: 70px 100px;
    display: flex;
}

.leftcontainer {
    width: 44%;
    height: 100%;

}

.leftcontainer h1 {
    font-size: 80px;
    margin-bottom: 20px;
    line-height: 1.2;
    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

.leftcontainer p {
    font-size: 30px;
    width: 95%;
    margin-top: 30px;
    margin-bottom: 25px;
}

.leftcontainer button {
    background-color: black;
    color: white;
    border-radius: 15px;
    padding: 28px 40px;
    font-size: 25px;
    font-weight: 600;
    border: none;
}

.rightcontainer {
    width: 56%;
    height: 100%;


}

.rightcontainer img {
    height: 100%;
    width: 85%;
    margin-left: 50px;
}









import React, { useEffect, useRef } from "react";
import styles from "./Footer.module.css";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";

gsap.registerPlugin(ScrollTrigger);

const Footer = () => {
  const footerRef = useRef(null);

  useEffect(() => {
    const q = gsap.utils.selector(footerRef);

    // Animate all elements row by row
    const rows = [
      [q(`.${styles.element1}`), q(`.${styles.elementblack1}`)],
      [q(`.${styles.element2}`), q(`.${styles.elementblack2}`)],
      [q(`.${styles.element3}`), q(`.${styles.elementblack3}`)],
      [q(`.${styles.element4}`), q(`.${styles.elementblack4}`)],
    ];

    rows.forEach(([left, right]) => {
      if (left && right) {
        gsap.fromTo(
          left,
          { x: -200, opacity: 0 },
          {
            x: 0,
            opacity: 1,
            duration: 1.2,
            ease: "power3.out",
            scrollTrigger: {
              trigger: left,
              start: "top 80%",
              end: "top 40%",
              scrub: true,
            },
          }
        );

        gsap.fromTo(
          right,
          { x: 200, opacity: 0 },
          {
            x: 0,
            opacity: 1,
            duration: 1.2,
            ease: "power3.out",
            scrollTrigger: {
              trigger: right,
              start: "top 80%",
              end: "top 40%",
              scrub: true,
            },
          }
        );
      }
    });
  }, []);

  return (
    <div className={styles.mainsection} ref={footerRef}>
      <div className={styles.topcontainer}>
        <div className={styles.lefttopcontainer}>
          <h3>Services</h3>
          <p>
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Tempore
            nobis obcaecati beatae error unde nostrum distinctio atque labore
            fugit dolor.
          </p>
        </div>
        <div className={styles.rightoptcontainer}></div>
      </div>

      <div className={styles.leftcontainer}>
        {/* Row 1 */}
        <div className={styles.element1}>
          <div className={styles.elem1}>
            <h2>Search engine optimization</h2>
            <h4>
              <i className="ri-arrow-right-up-line"></i> Learn more
            </h4>
          </div>
          <div className={styles.elem2}>
            <img
              src="https://awaaz-frontend.vercel.app/assets/Mic-BF4SCayK.png"
              alt="SEO"
            />
          </div>
        </div>

        <div className={styles.elementblack1}>
          <div className={styles.elem1black}>
            <h2>Pay per click advertisement</h2>
            <h4>
              <i className="ri-arrow-right-up-line"></i> Learn more
            </h4>
          </div>
          <div className={styles.elem2black}>
            <img
              src="https://awaaz-frontend.vercel.app/assets/Mic-BF4SCayK.png"
              alt="PPC"
            />
          </div>
        </div>

        {/* Row 2 */}
        <div className={styles.element2}>
          <div className={styles.elem1}>
            <h2>E-mail marketing</h2>
            <h4>
              <i className="ri-arrow-right-up-line"></i> Learn more
            </h4>
          </div>
          <div className={styles.elem2}>
            <img
              src="https://awaaz-frontend.vercel.app/assets/Mic-BF4SCayK.png"
              alt="Email"
            />
          </div>
        </div>

        <div className={styles.elementblack2}>
          <div className={styles.elem1black}>
            <h2>Social media marketing</h2>
            <h4>
              <i className="ri-arrow-right-up-line"></i> Learn more
            </h4>
          </div>
          <div className={styles.elem2black}>
            <img
              src="https://awaaz-frontend.vercel.app/assets/Mic-BF4SCayK.png"
              alt="Social Media"
            />
          </div>
        </div>

        {/* Row 3 */}
        <div className={styles.element3}>
          <div className={styles.elem1}>
            <h2>Content creation</h2>
            <h4>
              <i className="ri-arrow-right-up-line"></i> Learn more
            </h4>
          </div>
          <div className={styles.elem2}>
            <img
              src="https://awaaz-frontend.vercel.app/assets/Mic-BF4SCayK.png"
              alt="Content"
            />
          </div>
        </div>

        <div className={styles.elementblack3}>
          <div className={styles.elem1black}>
            <h2>Brand strategy</h2>
            <h4>
              <i className="ri-arrow-right-up-line"></i> Learn more
            </h4>
          </div>
          <div className={styles.elem2black}>
            <img
              src="https://awaaz-frontend.vercel.app/assets/Mic-BF4SCayK.png"
              alt="Brand Strategy"
            />
          </div>
        </div>

        {/* Row 4 */}
        <div className={styles.element4}>
          <div className={styles.elem1}>
            <h2>Web development</h2>
            <h4>
              <i className="ri-arrow-right-up-line"></i> Learn more
            </h4>
          </div>
          <div className={styles.elem2}>
            <img
              src="https://awaaz-frontend.vercel.app/assets/Mic-BF4SCayK.png"
              alt="Web Dev"
            />
          </div>
        </div>

        <div className={styles.elementblack4}>
          <div className={styles.elem1black}>
            <h2>Analytics & reporting</h2>
            <h4>
              <i className="ri-arrow-right-up-line"></i> Learn more
            </h4>
          </div>
          <div className={styles.elem2black}>
            <img
              src="https://awaaz-frontend.vercel.app/assets/Mic-BF4SCayK.png"
              alt="Analytics"
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Footer;








.lefttopcontainer {
    padding: 40px 60px;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    gap: 50px;
}

html,
body {
    overflow-x: hidden;
    /* remove horizontal scroll */
}


.lefttopcontainer h3 {
    background-color: #9AE975;
    font-weight: 500;
    padding: 8px 10px 3px 10px;
    border-radius: 5px;
    font-size: 60px;
}

.lefttopcontainer p {
    width: 40%;
    font-size: 20px;
    font-weight: 500;
}

/* .bottomcontainer{
    padding: 0px 120px;
    display: flex;
    align-items: center;
    justify-content: space-between;
} */
.leftcontainer {
    min-height: 86vh;
    /* width: 90%; */
    padding: 40px 60px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 70px;
}

.element1 {
    height: 450px;
    width: 47%;
    /* background-color: red; */
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elem1 {
    height: 100%;
    width: 50%;
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
    flex-direction: column;
    margin-left: 20px;
}

.elem2 {
    height: 100%;

}

.elem2 img {
    height: 100%;

}

.elem1 h2 {
    font-size: 35px;
    font-weight: 500;
    width: 50;
    background-color: #9AE975;
    padding: 0px 5px;
    border-radius: 10px;
}

.elem1 h4 {
    display: flex;
    align-items: center;
    font-size: 30px;
    font-weight: 500;
    gap: 20px;
}

.elem1 h4 i {
    background-color: black;
    padding: 20px;
    color: white;
    border-radius: 50%;
    font-weight: 900;
}

.elementblack1 {
    height: 450px;
    width: 47%;
    background-color: black;
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elem1black {
    height: 100%;
    width: 50%;
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
    flex-direction: column;
    margin-left: 20px;
}

.elem2black {
    height: 100%;

}

.elem2black img {
    height: 100%;

}

.elem1black h2 {
    font-size: 35px;
    font-weight: 500;
    width: 50;
    background-color: #e7e8e6;
    padding: 0px 5px;
    border-radius: 10px;
}

.elem1black h4 {
    display: flex;
    align-items: center;
    font-size: 30px;
    font-weight: 500;
    gap: 20px;
    color: white;
}

.elem1black h4 i {
    background-color: white;
    padding: 20px;
    color: black;
    border-radius: 50%;
    font-weight: 900;
}

.element2 {
    height: 450px;
    width: 47%;
    /* background-color: red; */
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elementblack2 {
    height: 450px;
    width: 47%;
    background-color: black;
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.element3 {
    height: 450px;
    width: 47%;
    /* background-color: red; */
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elementblack3 {
    height: 450px;
    width: 47%;
    background-color: black;
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.element4 {
    height: 450px;
    width: 47%;
    /* background-color: red; */
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elementblack4 {
    height: 450px;
    width: 47%;
    background-color: black;
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}







.lefttopcontainer {
    padding: 40px 60px;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    gap: 50px;
}

html,
body {
    overflow-x: hidden;
    /* remove horizontal scroll */
}


.lefttopcontainer h3 {
    background-color: #9AE975;
    font-weight: 500;
    padding: 8px 10px 3px 10px;
    border-radius: 5px;
    font-size: 60px;
}

.lefttopcontainer p {
    width: 40%;
    font-size: 20px;
    font-weight: 500;
}

/* .bottomcontainer{
    padding: 0px 120px;
    display: flex;
    align-items: center;
    justify-content: space-between;
} */
.leftcontainer {
    min-height: 86vh;
    /* width: 90%; */
    padding: 40px 60px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 70px;
}

.element1 {
    height: 450px;
    width: 47%;
    /* background-color: red; */
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elem1 {
    height: 100%;
    width: 50%;
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
    flex-direction: column;
    margin-left: 20px;
}

.elem2 {
    height: 100%;

}

.elem2 img {
    height: 100%;

}

.elem1 h2 {
    font-size: 35px;
    font-weight: 500;
    width: 50;
    background-color: #9AE975;
    padding: 0px 5px;
    border-radius: 10px;
}

.elem1 h4 {
    display: flex;
    align-items: center;
    font-size: 30px;
    font-weight: 500;
    gap: 20px;
}

.elem1 h4 i {
    background-color: black;
    padding: 20px;
    color: white;
    border-radius: 50%;
    font-weight: 900;
}

.elementblack1 {
    height: 450px;
    width: 47%;
    background-color: black;
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elem1black {
    height: 100%;
    width: 50%;
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
    flex-direction: column;
    margin-left: 20px;
}

.elem2black {
    height: 100%;

}

.elem2black img {
    height: 100%;

}

.elem1black h2 {
    font-size: 35px;
    font-weight: 500;
    width: 50;
    background-color: #e7e8e6;
    padding: 0px 5px;
    border-radius: 10px;
}

.elem1black h4 {
    display: flex;
    align-items: center;
    font-size: 30px;
    font-weight: 500;
    gap: 20px;
    color: white;
}

.elem1black h4 i {
    background-color: white;
    padding: 20px;
    color: black;
    border-radius: 50%;
    font-weight: 900;
}

.element2 {
    height: 450px;
    width: 47%;
    /* background-color: red; */
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elementblack2 {
    height: 450px;
    width: 47%;
    background-color: black;
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.element3 {
    height: 450px;
    width: 47%;
    /* background-color: red; */
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elementblack3 {
    height: 450px;
    width: 47%;
    background-color: black;
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.element4 {
    height: 450px;
    width: 47%;
    /* background-color: red; */
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}

.elementblack4 {
    height: 450px;
    width: 47%;
    background-color: black;
    border: 3px solid black;
    border-radius: 50px;
    flex-shrink: 0;
    box-shadow: 0px 15px 0px black;
    display: flex;
}






.mainsection {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 30px 120px;
}

.mainsection img {
    height: 70px;
}
