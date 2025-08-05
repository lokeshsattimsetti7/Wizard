import React, { useEffect, useRef } from "react";
import styles from "./product.module.css";
import gsap from "gsap";

const Product = () => {
  const sectionRef = useRef(null);

  useEffect(() => {
    const q = gsap.utils.selector(sectionRef);

    gsap.fromTo(
      q("img"),
      {
        y: 30,
        opacity: 0,
      },
      {
        y: 0,
        opacity: 1,
        stagger: 0.15,
        duration: 0.6,
        ease: "power1.out",
      }
    );
  }, []);

  return (
    <div className={styles.mainsection} ref={sectionRef}>
      <img
        src="https://icon2.cleanpng.com/20180504/soe/kisspng-amazon-com-amazon-product-advertising-api-amazon-p-5aecd1c25b2d75.3654401915254696343735.jpg"
        alt="Amazon"
      />
      <img
        src="https://logovectordl.com/wp-content/uploads/2021/11/dribbble-logo-vector.png"
        alt="Dribbble"
      />
      <img
        src="https://www.mac-group.com/wp-content/uploads/2018/02/Hubspot.png"
        alt="Hubspot"
      />
      <img
        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSivzWA2YknrGRt6tbAa8IoKfS2W2LXWnd7w&s"
        alt="Unknown"
      />
      <img
        src="https://e7.pngegg.com/pngimages/2/233/png-clipart-netflix-television-show-streaming-media-television-comedy-production-companies-netflix-television-angle-thumbnail.png"
        alt="Netflix"
      />
      <img src="https://www.svgrepo.com/show/473503/zoom.svg" alt="Zoom" />
    </div>
  );
};

export default Product;
