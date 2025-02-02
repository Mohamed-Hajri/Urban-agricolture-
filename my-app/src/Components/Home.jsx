import React from 'react';
import { Link } from 'react-router-dom';
import './Home.css';
const pages = [
  {
    name: 'Plants',
    image: 'https://www.nonsoloambiente.it/files/2023/03/tree20planting20will20save20the20world.jpeg',
    description: 'Delve into the fascinating world of plants and gardening techniques. From cultivating a lush indoor oasis to mastering the art of growing your own herbs and vegetables, this page offers a wealth of knowledge for both novice and experienced gardeners. Explore various plant species, learn about soil composition and watering methods, and discover tips for maintaining healthy and vibrant gardens all year round.',
    link: '/plants'
  },
  {
    name: 'Farming Equipment',
    image: 'data:image/jpeg;base64,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',
    description: 'Discover the latest farming equipment and machinery to optimize agricultural operations and increase productivity. Whether you’re a small-scale farmer or managing a large commercial farm, this page offers insights into innovative tools, technologies, and techniques for modern farming practices. Explore a range of equipment, from tractors and harvesters to precision agriculture technologies, and stay informed about advancements in sustainable farming methods.',
    link: '/farming-equipment'
  },
  {
    name: 'Landscaping Ideas',
    image: 'https://www.familyhandyman.com/wp-content/uploads/2018/01/landscape-and-garden-design-feature.jpg',
    description: 'Unlock the secrets to creating stunning outdoor spaces with inspiring landscaping ideas and design tips. Whether you’re revamping your backyard, planning a new garden layout, or enhancing your property’s curb appeal, this page provides a wealth of inspiration for transforming your outdoor environment. Discover creative landscape designs, learn about plant combinations and hardscape elements, and find practical advice for executing your landscaping projects with style and flair.',
    link: '/landscaping-ideas'
  }
];



// Define the Home component
const Home = () => {
  return (
    <div className="home">
      {/* Render each page as a clickable card */}
      <div className="page-container">
        {pages.map((page, index) => (
          <Link to={page.link} key={index} className="page-link">
            <div className="card">
              {/* Display the image associated with the page */}
              <img src={page.image} alt={page.name} className="card-image" />
              <div className="card-overlay">
                {/* Display the name and description of the page */}
                <h3 className="card-title">{page.name}</h3>
                <p className="card-description">{page.description}</p>
              </div>
            </div>
          </Link>
        ))}
      </div>
      {/* Render the footer with contact information */}
      <footer className="footer">
        <div className="contact-info">
          <p>Phone: 123-456-7890</p>
          <p>Email: info@example.com</p>
        </div>
      </footer>
    </div>
  );
};

export default Home;

