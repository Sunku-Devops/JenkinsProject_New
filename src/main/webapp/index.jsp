<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>NexusShop — Modern E‑Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    :root {
      --bg: #f4f7fb;
      --primary: #101828;
      --accent: #3b82f6;
      --accent-2: #06b6d4;
      --muted: #667085;
      --card-bg: rgba(255, 255, 255, 0.78);
      --border: rgba(16, 24, 40, 0.08);
      --radius: 16px;
      --shadow-sm: 0 8px 20px rgba(16, 24, 40, 0.06);
      --shadow-lg: 0 28px 60px rgba(16, 24, 40, 0.14);
      --container: 1200px;
    }

    * {
      box-sizing: border-box
    }

    html,
    body {
      height: 100%
    }

    body {
      margin: 0;
      font-family: Inter, system-ui, -apple-system, 'Segoe UI', Roboto, Arial;
      color: var(--primary);
      background: linear-gradient(180deg, #f4f7fb, #ffffff);
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 20px;
    }

    /* Header */
    header {
      position: sticky;
      top: 0;
      z-index: 40;
      background: rgba(255, 255, 255, 0.78);
      border-bottom: 1px solid var(--border);
      backdrop-filter: blur(10px);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
      font-family: Poppins, sans-serif;
      font-weight: 700;
      font-size: 22px;
    }

    .brand .accent {
      background: linear-gradient(135deg, var(--accent), var(--accent-2));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      margin: 0;
      padding: 0;
      align-items: center;
    }

    nav.main-nav li a {
      display: flex;
      gap: 8px;
      align-items: center;
      padding: 10px 12px;
      border-radius: 12px;
      font-weight: 500;
      transition: .2s;
    }

    nav.main-nav li a:hover {
      background: #eef5ff;
      color: var(--accent);
    }

    .search {
      display: flex;
      align-items: center;
      gap: 8px;
      background: white;
      border: 1px solid var(--border);
      padding: 10px 14px;
      border-radius: 999px;
      min-width: 260px;
      box-shadow: var(--shadow-sm);
    }

    .search input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 14px;
    }

    .icon-btn {
      background: transparent;
      border: 0;
      cursor: pointer;
      color: var(--primary);
      font-size: 16px;
    }

    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 8px 10px;
      border-radius: 12px;
      transition: .2s;
    }

    .cart:hover {
      background: #eef5ff;
      color: var(--accent);
    }

    .cart-count {
      position: absolute;
      top: -6px;
      right: -6px;
      background: linear-gradient(135deg, var(--accent), var(--accent-2));
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: inline-grid;
      place-items: center;
    }

    .mobile-toggle {
      display: none;
      border: 0;
      background: transparent;
      font-size: 20px;
      cursor: pointer;
    }

    /* Hero */
    .hero {
      text-align: center;
      background:
        linear-gradient(120deg, rgba(16, 24, 40, 0.88), rgba(16, 24, 40, 0.55)),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      color: white;
      min-height: 420px;
      padding: 80px 20px;
      border-bottom-left-radius: 32px;
      border-bottom-right-radius: 32px;
    }

    .hero h1 {
      font-family: Poppins;
      font-size: 44px;
      margin: 0 0 12px;
      letter-spacing: -0.02em;
    }

    .hero p {
      margin: 0 auto 22px;
      opacity: 0.95;
      max-width: 820px;
      font-size: 16px;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 22px;
      border-radius: 999px;
      font-weight: 600;
      cursor: pointer;
      border: 0;
      transition: transform .15s ease, box-shadow .15s ease;
    }

    .btn:hover {
      transform: translateY(-2px);
      box-shadow: var(--shadow-sm);
    }

    .btn-primary {
      background: linear-gradient(135deg, var(--accent), var(--accent-2));
      color: white;
    }

    .btn-ghost {
      background: transparent;
      border: 1.5px solid rgba(255, 255, 255, 0.35);
      color: white;
    }

    .section {
      padding: 54px 0;
    }

    .title {
      text-align: center;
      margin-bottom: 18px;
    }

    .muted {
      color: var(--muted);
    }

    /* Categories */
    .categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
      gap: 20px;
    }

    .cat-card {
      background: var(--card-bg);
      border-radius: var(--radius);
      padding: 22px 18px;
      text-align: center;
      border: 1px solid var(--border);
      box-shadow: var(--shadow-sm);
      transition: .25s;
      backdrop-filter: blur(12px);
      cursor: pointer;
    }

    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-lg);
    }

    .cat-card .icon {
      font-size: 32px;
      color: var(--accent);
      margin-bottom: 10px;
    }

    /* Products */
    .products {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 24px;
    }

    .product {
      position: relative;
      background: var(--card-bg);
      border-radius: var(--radius);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border);
      transition: .25s;
      backdrop-filter: blur(12px);
    }

    .product:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-lg);
    }

    .product img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      display: block;
    }

    .product-body {
      padding: 16px;
      display: flex;
      flex-direction: column;
      gap: 10px;
      flex: 1;
    }

    .product h5 {
      margin: 0;
      font-size: 16px;
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 8px;
    }

    .price {
      font-weight: 800;
      font-size: 18px;
    }

    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-weight: 500;
      font-size: 13px;
    }

    .rating {
      color: #fbbf24;
      font-size: 13px;
    }

    .product-footer {
      padding: 14px;
      display: flex;
      gap: 10px;
    }

    .add-btn {
      flex: 1;
      background: linear-gradient(135deg, #101828, #344054);
      color: white;
      border: 0;
      padding: 12px;
      border-radius: 12px;
      cursor: pointer;
      font-weight: 700;
    }

    .wish-btn {
      background: white;
      border: 1px solid var(--border);
      padding: 10px 12px;
      border-radius: 12px;
      cursor: pointer;
    }

    /* Deal */
    .deal {
      display: flex;
      gap: 18px;
      background: white;
      border-radius: 24px;
      overflow: hidden;
      align-items: stretch;
      box-shadow: var(--shadow-lg);
    }

    .deal img {
      width: 45%;
      height: 320px;
      object-fit: cover;
      display: block;
    }

    .deal .content {
      padding: 32px;
      flex: 1;
    }

    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0;
      flex-wrap: wrap;
    }

    .time-box {
      background: #101828;
      color: white;
      padding: 12px 16px;
      border-radius: 14px;
      min-width: 90px;
      text-align: center;
    }

    /* Testimonials */
    .testimonials {
      display: flex;
      gap: 14px;
      overflow-x: auto;
      padding: 12px 4px;
    }

    .testimonial {
      min-width: 320px;
      background: white;
      padding: 18px;
      border-radius: 18px;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border);
    }

    /* Newsletter */
    .newsletter {
      background: linear-gradient(135deg, #101828, #344054);
      color: white;
      border-radius: 22px;
      padding: 40px 26px;
      text-align: center;
    }

    .newsletter input {
      padding: 14px 18px;
      border-radius: 999px;
      border: 0;
      width: 320px;
      max-width: 100%;
      margin-right: 8px;
    }

    /* Footer */
    footer {
      margin-top: 40px;
      padding: 36px 0;
      border-top: 1px solid var(--border);
      color: var(--muted);
      font-size: 14px;
    }

    /* Responsive */
    @media (max-width:900px) {
      nav.main-nav {
        display: none;
      }

      .mobile-toggle {
        display: inline-block;
      }

      .deal {
        flex-direction: column;
      }

      .deal img {
        width: 100%;
        height: 240px;
      }

      .search {
        min-width: 180px;
      }
    }

    @media (max-width:600px) {
      .hero h1 {
        font-size: 30px;
      }
    }
  </style>
</head>

<body>
  <header>
    <div class="container header-inner" role="banner">
      <div style="display:flex;align-items:center;gap:18px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><em class="fas fa-bars"></em></button>
        <a class="brand" href="#">
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
        <ul>
          <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
          <li><a href="#"><em class="fas fa-th-large"></em> Categories</a></li>
          <li><a href="#"><em class="fas fa-fire"></em> Trending</a></li>
          <li><a href="#deals"><em class="fas fa-tag"></em> Hot Deals</a></li>
          <li><a href="#about"><em class="fas fa-info-circle"></em> About</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:14px;">
        <div class="search" role="search" aria-label="Product search">
          <input type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" />
          <button class="icon-btn" id="searchBtn" aria-label="Search"><em class="fas fa-search"></em></button>
        </div>

        <div class="header-actions" role="group" aria-label="Header actions">
          <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
          <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
          <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
            <em class="fas fa-shopping-cart"></em>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <div id="mobileMenu" style="display:none; background:white; border-top:1px solid var(--border);">
      <div class="container" style="padding:12px 0;">
        <nav aria-label="Mobile navigation">
          <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:10px;">
            <li><a href="#">Home</a></li>
            <li><a href="#">Categories</a></li>
            <li><a href="#">Trending</a></li>
            <li><a href="#deals">Hot Deals</a></li>
            <li><a href="#about">About</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </header>

  <main>
    <section class="hero" role="img" aria-label="Hero banner">
      <div class="container">
        <h1>AnithaKiran Collection is here for you — Premium Picks</h1>
        <p>Discover the latest trends in fashion, technology and accessories — curated just for you. Enjoy limited-time
          deals and free shipping on selected items.</p>
        <div>
          <button class="btn btn-primary" id="shopNow">Shop Now <em class="fas fa-arrow-right"></em></button>
          <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
        </div>
      </div>
    </section>

    <section class="section container" aria-labelledby="cat-title">
      <div class="title" id="cat-title">
        <h2>Shop by Category</h2>
        <p class="muted">Browse through our wide range of products across curated categories.</p>
      </div>
      <div class="categories" id="categoriesGrid" aria-live="polite"></div>
    </section>

    <section class="section container" aria-labelledby="prod-title">
      <div class="title" id="prod-title">
        <h2>Trending Products</h2>
        <p class="muted">Popular picks based on recent activity.</p>
      </div>
      <div class="products" id="productsGrid" aria-live="polite"></div>
    </section>

    <section id="deals" class="section container" aria-labelledby="deals-title">
      <div class="title" id="deals-title">
        <h2>Flash Sale</h2>
        <p class="muted">Limited-time offers — don't miss out!</p>
      </div>

      <div class="deal">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80"
          alt="Deal product">
        <div class="content">
          <h3>MacBook Air M2</h3>
          <p class="muted">Thin, light and powerful — now with M2 performance.</p>

          <div class="timer">
            <div class="time-box">
              <div id="dealDays">0</div>
              <div style="font-size:12px;opacity:.85">Days</div>
            </div>
            <div class="time-box">
              <div id="dealHours">00</div>
              <div style="font-size:12px;opacity:.85">Hours</div>
            </div>
            <div class="time-box">
              <div id="dealMinutes">00</div>
              <div style="font-size:12px;opacity:.85">Minutes</div>
            </div>
            <div class="time-box">
              <div id="dealSeconds">00</div>
              <div style="font-size:12px;opacity:.85">Seconds</div>
            </div>
          </div>

          <div style="display:flex;align-items:center;gap:12px;">
            <div class="price">$999 <span class="old-price" style="font-size:16px">$1,199</span></div>
            <div style="background:#ff4757;color:white;padding:6px 10px;border-radius:12px;font-weight:700">-17%</div>
          </div>

          <p style="margin-top:10px;">Only <strong>12</strong> items left at this price!</p>
          <div style="margin-top:18px;">
            <button class="btn btn-primary" id="buyDeal">Buy Now</button>
          </div>
        </div>
      </div>
    </section>

    <section class="section container" aria-labelledby="test-title">
      <div class="title" id="test-title">
        <h2>What our customers say</h2>
        <p class="muted">Real reviews from verified buyers.</p>
      </div>

      <div class="testimonials" id="testimonials">
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
          <div style="display:flex;align-items:center;gap:10px">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80"
              alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
            <div>
              <div style="font-weight:700">Ava Martin</div>
              <div class="muted" style="font-size:13px">Verified buyer</div>
            </div>
          </div>
        </div>

        <div class="testimonial">
          <div class="rating">★★★★☆</div>
          <p>"Great selection and the checkout was smooth. Will shop again."</p>
          <div style="display:flex;align-items:center;gap:10px">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80"
              alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
            <div>
              <div style="font-weight:700">Michael Lee</div>
              <div class="muted" style="font-size:13px">Frequent buyer</div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="section container" aria-labelledby="news-title">
      <div class="newsletter" id="newsletter">
        <h3 id="news-title">Stay in the loop</h3>
        <p>Subscribe to get exclusive offers & new arrivals</p>
        <form id="newsletterForm" style="display:flex;justify-content:center;gap:8px;flex-wrap:wrap;" onsubmit="return false;">
          <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
          <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:10px;font-size:14px;display:none"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container"
      style="display:flex;flex-wrap:wrap;gap:28px;align-items:flex-start;justify-content:space-between">
      <div style="max-width:360px">
        <div style="font-weight:700;font-size:18px">NexusShop</div>
        <p class="muted" style="margin-top:8px">A modern e-commerce demo built with HTML, CSS & JavaScript.</p>
      </div>

      <div style="display:flex;gap:40px;flex:1;justify-content:flex-end;flex-wrap:wrap">
        <div>
          <div style="font-weight:700;margin-bottom:8px">Company</div>
          <div class="muted" style="line-height:1.8">About<br>Careers<br>Press</div>
        </div>
        <div>
          <div style="font-weight:700;margin-bottom:8px">Support</div>
          <div class="muted" style="line-height:1.8">Help Center<br>Shipping & Returns<br>Contact</div>
        </div>
      </div>
    </div>
    <div style="text-align:center;margin-top:22px;color:var(--muted);font-size:13px">
      © <span id="year"></span> NexusShop. All rights reserved.
    </div>
  </footer>

  <script>
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
    ];

    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');

    let cartCount = 0;

    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({
        '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
      }[s]));
    }

    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `
          <div class="icon"><em class="fas ${cat.icon}"></em></div>
          <h4 style="margin:6px 0 0">${cat.name}</h4>
          <div class="muted" style="font-size:13px;margin-top:6px">Explore ${cat.name}</div>
        `;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          window.scrollTo({ top: document.getElementById('prod-title').offsetTop - 60, behavior: 'smooth' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product';
        el.innerHTML = `
          ${p.badge ? `<div style="position:absolute;top:14px;left:14px;z-index:2">
              <span style="background:${p.badge.startsWith('-') ? '#ff4757' : '#22c55e'};
              color:white;padding:6px 10px;border-radius:12px;font-weight:700;font-size:12px">${p.badge}</span>
          </div>` : ''}

          <img src="${p.img}" alt="${escapeHtml(p.title)}  </div>

          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}">
              <em class="fas fa-cart-plus"></em> Add
            </button>
            <button class="wish-btn" aria-label="Add to wishlist">
              <em class="far fa-heart"></em>
            </button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', () => addToCart(Number(btn.dataset.id)));
      });
    }

    function addToCart(productId) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      cartCountEl.textContent = cartCount;

      const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
      if (btn) {
        const original = btn.innerHTML;
        btn.innerHTML = 'Added ✓';
        btn.disabled = true;
        setTimeout(() => {
          btn.innerHTML = original;
          btn.disabled = false;
        }, 1200);
      }
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) return renderProducts(PRODUCTS);

      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    mobileToggle.addEventListener('click', () => {
      mobileMenu.style.display = (mobileMenu.style.display === 'none' || !mobileMenu.style.display) ? 'block' : 'none';
    });

    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email address.';
        msg.style.color = '#ffb3b3';
        return;
      }
      msg.style.display = 'block';
      msg.style.color = '#cce7ff';
      msg.textContent = 'Thanks! You are subscribed.';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3000);
    });

    (function setupDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        const days = Math.floor(diff / (24 * 3600 * 1000));
        const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = Math.max(days, 0);
        document.getElementById('dealHours').textContent = String(Math.max(hours, 0)).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(Math.max(mins, 0)).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(Math.max(secs, 0)).padStart(2, '0');
        if (diff <= 0) clearInterval(timer);
      }
      tick();
      const timer = setInterval(tick, 1000);
    })();

    document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
      top: document.getElementById('prod-title').offsetTop - 60,
      behavior: 'smooth'
    }));
    document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
    document.getElementById('buyDeal').addEventListener('click', () => {
      cartCount++;
      cartCountEl.textContent = cartCount;
      alert('Deal added to cart (demo).');
    });

    (function init() {
      renderCategories();
      renderProducts(PRODUCTS);
      cartCountEl.textContent = cartCount;
      document.getElementById('year').textContent = new Date().getFullYear();
    })();
  </script>
</body>
</html>
