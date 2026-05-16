<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
  <meta name="description" content="Enterprise-grade image and PDF processing suite. Compress, convert, resize, merge, split — all client-side with military-grade privacy.">
  <meta name="keywords" content="image compression, PDF tools, enterprise software, batch processing, document automation">
  <meta name="author" content="ToolSuite Pro">
  <meta name="robots" content="index, follow">
  <meta name="theme-color" content="#0a0e27">
  <title>ToolSuite Pro | Enterprise Image & PDF Processing</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <style>
    /* ========== RESET & VARIABLES ========== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg-primary: #0a0e27;
      --bg-secondary: #0f1322;
      --bg-card: #13182b;
      --bg-elevated: #1a1f35;
      --text-primary: #f1f5f9;
      --text-secondary: #94a3b8;
      --text-muted: #475569;
      --border-subtle: #1e293b;
      --border-active: #2d3a5e;
      --accent-cyan: #06b6d4;
      --accent-purple: #8b5cf6;
      --accent-amber: #f59e0b;
      --accent-emerald: #10b981;
      --accent-rose: #f43f5e;
      --gradient-1: linear-gradient(135deg, #06b6d4, #8b5cf6);
      --gradient-2: linear-gradient(135deg, #f59e0b, #ef4444);
      --gradient-3: linear-gradient(135deg, #10b981, #06b6d4);
      --shadow-sm: 0 4px 6px -2px rgba(0, 0, 0, 0.3);
      --shadow-md: 0 10px 15px -3px rgba(0, 0, 0, 0.4);
      --shadow-lg: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
    }

    body {
      background: var(--bg-primary);
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      color: var(--text-primary);
      line-height: 1.5;
      overflow-x: hidden;
    }

    /* ========== GRID SYSTEM ========== */
    .container {
      max-width: 1440px;
      margin: 0 auto;
      padding: 0 2rem;
    }

    /* ========== HEADER ========== */
    .header {
      padding: 3rem 0 2rem;
      border-bottom: 1px solid var(--border-subtle);
      margin-bottom: 3rem;
    }

    .header-top {
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 1rem;
      margin-bottom: 2rem;
    }

    .logo {
      font-size: 1.5rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      background: var(--gradient-1);
      background-clip: text;
      -webkit-background-clip: text;
      color: transparent;
    }

    .logo span {
      color: var(--text-primary);
      background: none;
      background-clip: unset;
      -webkit-background-clip: unset;
    }

    .nav {
      display: flex;
      gap: 2rem;
    }

    .nav a {
      color: var(--text-secondary);
      text-decoration: none;
      font-size: 0.9rem;
      font-weight: 500;
      transition: color 0.2s;
    }

    .nav a:hover {
      color: var(--accent-cyan);
    }

    .header-title {
      max-width: 800px;
    }

    .header-title h1 {
      font-size: 3.5rem;
      font-weight: 800;
      letter-spacing: -0.03em;
      line-height: 1.2;
      margin-bottom: 1rem;
      background: var(--gradient-1);
      background-clip: text;
      -webkit-background-clip: text;
      color: transparent;
    }

    .header-title p {
      font-size: 1.2rem;
      color: var(--text-secondary);
      line-height: 1.6;
    }

    .stats-bar {
      display: flex;
      gap: 3rem;
      margin-top: 2rem;
      flex-wrap: wrap;
    }

    .stat {
      display: flex;
      flex-direction: column;
    }

    .stat-value {
      font-size: 2rem;
      font-weight: 700;
      color: var(--accent-cyan);
    }

    .stat-label {
      font-size: 0.75rem;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 1px;
    }

    /* ========== SECTIONS ========== */
    .section {
      margin-bottom: 4rem;
    }

    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      flex-wrap: wrap;
      gap: 1rem;
      margin-bottom: 1.5rem;
      padding-bottom: 0.5rem;
      border-bottom: 1px solid var(--border-subtle);
    }

    .section-header h2 {
      font-size: 1.5rem;
      font-weight: 600;
      letter-spacing: -0.01em;
    }

    .section-header h2 i {
      color: var(--accent-cyan);
      margin-right: 0.5rem;
    }

    .section-link {
      color: var(--accent-cyan);
      font-size: 0.85rem;
      text-decoration: none;
    }

    /* ========== TOOL GRID ========== */
    .tool-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
      gap: 1.5rem;
    }

    .tool-card {
      background: var(--bg-card);
      border: 1px solid var(--border-subtle);
      border-radius: 1rem;
      padding: 1.5rem;
      transition: all 0.25s ease;
      cursor: pointer;
      position: relative;
      overflow: hidden;
    }

    .tool-card::after {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 2px;
      background: var(--gradient-1);
      transform: scaleX(0);
      transform-origin: left;
      transition: transform 0.3s ease;
    }

    .tool-card:hover {
      border-color: var(--border-active);
      transform: translateY(-4px);
      background: var(--bg-elevated);
    }

    .tool-card:hover::after {
      transform: scaleX(1);
    }

    .tool-icon {
      font-size: 2rem;
      margin-bottom: 1rem;
    }

    .tool-card h3 {
      font-size: 1.2rem;
      font-weight: 600;
      margin-bottom: 0.5rem;
    }

    .tool-card p {
      font-size: 0.8rem;
      color: var(--text-secondary);
      line-height: 1.5;
      margin-bottom: 1rem;
    }

    .tool-status {
      display: inline-block;
      font-size: 0.65rem;
      padding: 0.2rem 0.6rem;
      border-radius: 20px;
      font-weight: 500;
    }

    .status-active {
      background: rgba(6, 182, 212, 0.15);
      color: var(--accent-cyan);
      border: 1px solid rgba(6, 182, 212, 0.3);
    }

    .status-coming {
      background: rgba(139, 92, 246, 0.1);
      color: var(--accent-purple);
      border: 1px solid rgba(139, 92, 246, 0.2);
    }

    /* ========== FEATURED BANNER ========== */
    .featured-banner {
      background: linear-gradient(135deg, var(--bg-elevated), var(--bg-card));
      border-radius: 1.5rem;
      padding: 2rem;
      margin: 2rem 0;
      border: 1px solid var(--border-subtle);
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      gap: 2rem;
    }

    .featured-content h3 {
      font-size: 1.5rem;
      font-weight: 600;
      margin-bottom: 0.5rem;
    }

    .featured-content p {
      color: var(--text-secondary);
      font-size: 0.9rem;
    }

    .featured-btn {
      background: var(--gradient-1);
      border: none;
      padding: 0.75rem 2rem;
      border-radius: 2rem;
      font-weight: 600;
      font-size: 0.9rem;
      cursor: pointer;
      transition: transform 0.2s, opacity 0.2s;
      color: white;
    }

    .featured-btn:hover {
      transform: scale(1.02);
      opacity: 0.95;
    }

    /* ========== AD SPOTS ========== */
    .ad-spot {
      background: rgba(0, 0, 0, 0.3);
      border-radius: 1rem;
      padding: 1rem;
      margin: 2rem 0;
      min-height: 120px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 1px dashed var(--border-active);
      color: var(--text-muted);
      font-size: 0.75rem;
    }

    /* ========== FOOTER ========== */
    .footer {
      border-top: 1px solid var(--border-subtle);
      padding: 2rem 0;
      margin-top: 4rem;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 2rem;
    }

    .footer-column p {
      color: var(--text-muted);
      font-size: 0.8rem;
      margin-bottom: 0.5rem;
    }

    .footer-links {
      display: flex;
      gap: 2rem;
    }

    .footer-links a {
      color: var(--text-secondary);
      text-decoration: none;
      font-size: 0.8rem;
    }

    .footer-links a:hover {
      color: var(--accent-cyan);
    }

    .copyright {
      text-align: center;
      padding-top: 2rem;
      border-top: 1px solid var(--border-subtle);
      margin-top: 2rem;
      font-size: 0.7rem;
      color: var(--text-muted);
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 768px) {
      .container {
        padding: 0 1rem;
      }
      .header-title h1 {
        font-size: 2rem;
      }
      .header-top {
        flex-direction: column;
        align-items: flex-start;
      }
      .nav {
        flex-wrap: wrap;
        gap: 1rem;
      }
      .tool-grid {
        grid-template-columns: 1fr;
      }
      .stats-bar {
        gap: 1.5rem;
      }
      .footer {
        flex-direction: column;
      }
    }

    /* ========== UTILITIES ========== */
    .text-gradient {
      background: var(--gradient-1);
      background-clip: text;
      -webkit-background-clip: text;
      color: transparent;
    }

    hr {
      border-color: var(--border-subtle);
      margin: 1rem 0;
    }
  </style>
</head>
<body>

<div class="container">
  <!-- HEADER -->
  <header class="header">
    <div class="header-top">
      <div class="logo">ToolSuite<span>Pro</span></div>
      <div class="nav">
        <a href="#">Dashboard</a>
        <a href="#">Image Tools</a>
        <a href="#">PDF Tools</a>
        <a href="#">Documentation</a>
        <a href="#">API</a>
      </div>
    </div>
    <div class="header-title">
      <h1>Enterprise Image & PDF<br>Processing Suite</h1>
      <p>Professional-grade tools for compression, conversion, and document automation. Fully client-side with zero data persistence.</p>
      <div class="stats-bar">
        <div class="stat">
          <span class="stat-value">500K+</span>
          <span class="stat-label">Files Processed</span>
        </div>
        <div class="stat">
          <span class="stat-value">100%</span>
          <span class="stat-label">Privacy Guaranteed</span>
        </div>
        <div class="stat">
          <span class="stat-value">&lt;50ms</span>
          <span class="stat-label">Avg Response</span>
        </div>
        <div class="stat">
          <span class="stat-value">24/7</span>
          <span class="stat-label">Availability</span>
        </div>
      </div>
    </div>
  </header>

  <!-- FEATURED TOOL -->
  <div class="featured-banner">
    <div class="featured-content">
      <h3>Image Compressor <span style="color: var(--accent-cyan);">Pro</span></h3>
      <p>Advanced compression with quality control, resize, format conversion, and target file size optimization.</p>
    </div>
    <button class="featured-btn" onclick="window.location.href='image-compressor.html'">Launch Tool →</button>
  </div>

  <!-- AD SPOT 1 -->
  <div class="ad-spot">
    <!-- GOOGLE ADSENSE INTEGRATION ZONE -->
    <span>Advertisement — Insert AdSense Code</span>
  </div>

  <!-- IMAGE TOOLS SECTION -->
  <section class="section">
    <div class="section-header">
      <h2><i>🖼️</i> Image Processing Suite</h2>
      <a href="#" class="section-link">View All →</a>
    </div>
   <div class="tool-grid">
  <a href="image-compressor.html" class="\faizan\img\com.html" style="text-decoration: none; color: inherit; display: block;">
    <div class="tool-card">
      <div class="tool-icon">🗜️</div>
      <h3>Image Compressor</h3>
      <p>Reduce JPEG, PNG, WebP file size with adjustable quality, resize dimensions, and target file size optimization.</p>
      <span class="tool-status status-active">● Active</span>
    </div>
  </a>
  <!-- rest of your tool cards -->
</div>
      <div class="tool-card">
        <div class="tool-icon">📐</div>
        <h3>Batch Resizer</h3>
        <p>Resize multiple images simultaneously. Maintain aspect ratio or set exact dimensions.</p>
        <span class="tool-status status-coming">○ Q1 2025</span>
      </div>
      <div class="tool-card">
        <div class="tool-icon">🔄</div>
        <h3>Format Converter</h3>
        <p>Convert between JPEG, PNG, WebP, AVIF, and GIF formats.</p>
        <span class="tool-status status-coming">○ Q1 2025</span>
      </div>
      <div class="tool-card">
        <div class="tool-icon">✂️</div>
        <h3>Smart Crop</h3>
        <p>AI-assisted cropping with face detection and composition guides.</p>
        <span class="tool-status status-coming">○ Q2 2025</span>
      </div>
      <div class="tool-card">
        <div class="tool-icon">🎨</div>
        <h3>Background Remover</h3>
        <p>Remove image backgrounds using neural network processing.</p>
        <span class="tool-status status-coming">○ Q2 2025</span>
      </div>
      <div class="tool-card">
        <div class="tool-icon">💧</div>
        <h3>Watermark Engine</h3>
        <p>Batch watermarking with text, image, or pattern overlays.</p>
        <span class="tool-status status-coming">○ Q3 2025</span>
      </div>
    </div>
  </section>

  <!-- AD SPOT 2 -->
  <div class="ad-spot">
    <!-- GOOGLE ADSENSE INTEGRATION ZONE -->
    <span>Advertisement — Insert AdSense Code</span>
  </div>

  <!-- PDF TOOLS SECTION -->
  <section class="section">
    <div class="section-header">
      <h2><i>📄</i> PDF Automation Suite</h2>
      <a href="#" class="section-link">View All →</a>
    </div>
    <div class="tool-grid">
      <div class="tool-card">
        <div class="tool-icon">🗜️</div>
        <h3>PDF Compressor</h3>
        <p>Optimize PDF file size with image compression and font subsetting.</p>
        <span class="tool-status status-coming">○ Q1 2025</span>
      </div>
      <div class="tool-card">
        <div class="tool-icon">🔗</div>
        <h3>PDF Merger</h3>
        <p>Combine multiple PDF documents into a single file with page ordering.</p>
        <span class="tool-status status-coming">○ Q1 2025</span>
      </div>
      <div class="tool-card">
        <div class="tool-icon">✂️</div>
        <h3>PDF Splitter</h3>
        <p>Extract specific pages or split by page ranges.</p>
        <span class="tool-status status-coming">○ Q1 2025</span>
      </div>
      <div class="tool-card">
        <div class="tool-icon">🖼️</div>
        <h3>PDF to Image</h3>
        <p>Convert PDF pages to high-resolution JPG or PNG.</p>
        <span class="tool-status status-coming">○ Q2 2025</span>
      </div>
      <div class="tool-card">
        <div class="tool-icon">🔄</div>
        <h3>Image to PDF</h3>
        <p>Convert multiple images to a single PDF document.</p>
        <span class="tool-status status-coming">○ Q2 2025</span>
      </div>
      <div class="tool-card">
        <div class="tool-icon">🔒</div>
        <h3>PDF Security</h3>
        <p>Add password protection and permission controls.</p>
        <span class="tool-status status-coming">○ Q3 2025</span>
      </div>
    </div>
  </section>

  <!-- AD SPOT 3 -->
  <div class="ad-spot">
    <!-- GOOGLE ADSENSE INTEGRATION ZONE -->
    <span>Advertisement — Insert AdSense Code</span>
  </div>

  <!-- FOOTER -->
  <footer class="footer">
    <div class="footer-column">
      <p><strong>ToolSuite Pro</strong></p>
      <p>Enterprise-grade processing tools<br>Fully client-side · Zero data persistence</p>
    </div>
    <div class="footer-links">
      <a href="#">Privacy</a>
      <a href="#">Terms</a>
      <a href="#">API Status</a>
      <a href="#">Contact</a>
      <a href="#">GitHub</a>
    </div>
  </footer>
  <div class="copyright">
    <p>© 2025 ToolSuite Pro — All processing occurs locally in your browser. No data is uploaded to any server.</p>
  </div>
</div>

<script>
  // Animated counter for stats (simple implementation)
  function animateStat(element, target) {
    let current = 0;
    const increment = target / 50;
    const timer = setInterval(() => {
      current += increment;
      if (current >= target) {
        current = target;
        clearInterval(timer);
      }
      element.textContent = Math.floor(current) + (target > 1000 ? 'K+' : '');
    }, 20);
  }

  // Trigger counters when in viewport
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        const statValues = document.querySelectorAll('.stat-value');
        statValues.forEach(el => {
          const text = el.textContent;
          let target = parseInt(text);
          if (text.includes('K+')) target = parseInt(text) * 1000;
          if (text.includes('ms')) target = parseInt(text);
          animateStat(el, target);
        });
        observer.disconnect();
      }
    });
  });

  const statsBar = document.querySelector('.stats-bar');
  if (statsBar) observer.observe(statsBar);

  // Console branding
  console.log('ToolSuite Pro — Enterprise Image & PDF Processing Suite');
  console.log('All tools operate client-side. No data leaves your device.');
</script>
</body>
</html>
