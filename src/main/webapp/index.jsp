<style>
:root {
  --bg: #f4f7fb;
  --primary: #101828;
  --accent: #3b82f6;
  --accent-2: #06b6d4;
  --muted: #667085;
  --card-bg: rgba(255,255,255,0.75);
  --border: rgba(16,24,40,0.06);
  --radius: 16px;
  --shadow-sm: 0 8px 20px rgba(16,24,40,0.05);
  --shadow-lg: 0 25px 50px rgba(16,24,40,0.12);
}

* { box-sizing: border-box; }

body {
  margin: 0;
  font-family: 'Inter', system-ui, sans-serif;
  color: var(--primary);
  background: linear-gradient(180deg, #f4f7fb, #ffffff);
}

.container {
  max-width: 1200px;
  margin: auto;
  padding: 0 20px;
}

/* -------- HEADER -------- */
header {
  position: sticky;
  top: 0;
  z-index: 99;
  background: rgba(255,255,255,0.75);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid var(--border);
}

.header-inner {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px 0;
}

.brand {
  font-family: Poppins, sans-serif;
  font-size: 22px;
  font-weight: 700;
}

.brand .accent {
  color: var(--accent);
}

nav.main-nav a {
  padding: 10px 14px;
  border-radius: 10px;
  font-weight: 500;
  transition: 0.2s;
}

nav.main-nav a:hover {
  background: #f0f5ff;
  color: var(--accent);
}

/* -------- HERO -------- */
.hero {
  background:
    linear-gradient(120deg, rgba(16,24,40,0.85), rgba(16,24,40,0.6)),
    url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80')
    center/cover no-repeat;
  color: white;
  padding: 90px 20px;
  border-radius: 0 0 32px 32px;
}

.hero h1 {
  font-family: Poppins;
  font-size: 46px;
  margin-bottom: 14px;
}

.hero p {
  max-width: 700px;
  opacity: 0.9;
  font-size: 17px;
}

/* -------- BUTTONS -------- */
.btn {
  padding: 12px 22px;
  border-radius: 999px;
  font-weight: 600;
  cursor: pointer;
  border: none;
  transition: transform .15s, box-shadow .15s;
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
  border: 1.5px solid rgba(255,255,255,0.4);
  color: white;
}

/* -------- CARDS -------- */
.cat-card,
.product,
.testimonial {
  background: var(--card-bg);
  border-radius: var(--radius);
  backdrop-filter: blur(12px);
  box-shadow: var(--shadow-sm);
  border: 1px solid var(--border);
  transition: 0.25s;
}

.cat-card:hover,
.product:hover {
  transform: translateY(-8px);
  box-shadow: var(--shadow-lg);
}

/* -------- CATEGORIES -------- */
.categories {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
  gap: 20px;
}

.cat-card {
  padding: 22px;
  text-align: center;
}

.cat-card .icon {
  font-size: 32px;
  color: var(--accent);
  margin-bottom: 10px;
}

/* -------- PRODUCTS -------- */
.products {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  gap: 24px;
}

.product img {
  width: 100%;
  height: 200px;
  object-fit: cover;
}

.product-body {
  padding: 16px;
}

.product h5 {
  font-size: 16px;
}

.price {
  font-size: 18px;
  font-weight: 700;
}

.old-price {
  font-size: 13px;
  color: var(--muted);
}

.product-footer {
  padding: 14px;
  display: flex;
  gap: 10px;
}

.add-btn {
  flex: 1;
  background: linear-gradient(135deg, var(--primary), #344054);
  color: white;
  border-radius: 10px;
  font-weight: 600;
}

/* -------- DEAL -------- */
.deal {
  display: flex;
  gap: 24px;
  border-radius: 24px;
  overflow: hidden;
  box-shadow: var(--shadow-lg);
  background: white;
}

.deal img {
  width: 45%;
  object-fit: cover;
}

.deal .content {
  padding: 32px;
}

/* -------- NEWSLETTER -------- */
.newsletter {
  background: linear-gradient(135deg, var(--primary), #344054);
  color: white;
  border-radius: 22px;
  padding: 40px;
}

.newsletter input {
  padding: 14px 18px;
  border-radius: 999px;
  border: none;
  width: 280px;
}

/* -------- FOOTER -------- */
footer {
  margin-top: 60px;
  padding-top: 40px;
  border-top: 1px solid var(--border);
  color: var(--muted);
}

/* -------- MOBILE -------- */
@media (max-width: 768px) {
  .hero h1 { font-size: 32px; }
  .deal { flex-direction: column; }
  .deal img { width: 100%; height: 240px; }
}
</style>
