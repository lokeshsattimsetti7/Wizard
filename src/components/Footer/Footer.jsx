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
