// =======================================================
// 206 BURGER — MOTION & INTERACTION CONTROLLER
// Documento 08: Phase 06 Implementation
// =======================================================

document.addEventListener('DOMContentLoaded', () => {
  const header = document.getElementById('main-header');
  const menuBtn = document.getElementById('menu-btn');
  const closeMenuBtn = document.getElementById('close-menu-btn');
  const menuDrawer = document.getElementById('menu-drawer');
  const menuLinks = document.querySelectorAll('.menu-link');

  // 1. Scroll State Management
  window.addEventListener('scroll', () => {
    if (window.scrollY > 40) {
      header.classList.add('scrolled');
    } else {
      header.classList.remove('scrolled');
    }
  }, { passive: true });

  // 2. Menu Drawer Toggle
  if (menuBtn && menuDrawer) {
    menuBtn.addEventListener('click', () => {
      menuDrawer.classList.add('active');
    });
  }

  if (closeMenuBtn && menuDrawer) {
    closeMenuBtn.addEventListener('click', () => {
      menuDrawer.classList.remove('active');
    });
  }

  menuLinks.forEach(link => {
    link.addEventListener('click', () => {
      if (menuDrawer) {
        menuDrawer.classList.remove('active');
      }
    });
  });

  // 3. Scroll Reveal Observer with generous margin
  const revealElements = document.querySelectorAll('.reveal-fade-up');
  
  if ('IntersectionObserver' in window) {
    const revealObserver = new IntersectionObserver((entries, observer) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('is-visible');
          observer.unobserve(entry.target);
        }
      });
    }, {
      root: null,
      threshold: 0.05,
      rootMargin: '200px 0px 200px 0px'
    });

    revealElements.forEach(el => revealObserver.observe(el));
  } else {
    revealElements.forEach(el => el.classList.add('is-visible'));
  }

  // 4. Subtle Parallax on Mouse Move (Desktop Only)
  if (window.innerWidth > 768) {
    const heroSection = document.getElementById('hero');
    const burgerImg = heroSection ? heroSection.querySelector('.animate-float') : null;

    if (heroSection && burgerImg) {
      let rafId = null;
      let targetX = 0;
      let targetY = 0;
      let currentX = 0;
      let currentY = 0;

      const updateParallax = () => {
        currentX += (targetX - currentX) * 0.1;
        currentY += (targetY - currentY) * 0.1;
        burgerImg.style.transform = `translate3d(${currentX}px, ${currentY}px, 0)`;

        if (Math.abs(targetX - currentX) > 0.01 || Math.abs(targetY - currentY) > 0.01) {
          rafId = requestAnimationFrame(updateParallax);
        } else {
          rafId = null;
        }
      };

      heroSection.addEventListener('mousemove', (e) => {
        const { clientX, clientY } = e;
        const centerX = window.innerWidth / 2;
        const centerY = window.innerHeight / 2;
        targetX = (clientX - centerX) * 0.02;
        targetY = (clientY - centerY) * 0.02;

        if (!rafId) {
          rafId = requestAnimationFrame(updateParallax);
        }
      }, { passive: true });

      heroSection.addEventListener('mouseleave', () => {
        targetX = 0;
        targetY = 0;
        if (!rafId) {
          rafId = requestAnimationFrame(updateParallax);
        }
      }, { passive: true });
    }
  }
});
