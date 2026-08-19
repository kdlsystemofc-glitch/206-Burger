# 206 BURGER — MOTION & INTERACTION IMPLEMENTATION
## Documento 08 — KDL V2 Phase 06: Coreografia e Gramática de Movimento

---

# 1. VISÃO GERAL DA GRAMÁTICA DE MOVIMENTO

O sistema de movimento do **206 Burger** reproduz fielmente a energia pop-art lúdica, ágil e física da referência aprovada (`cravburgers.shop`). O movimento não é decorativo — ele comunica **peso físico, crocância, apetite appeal e feedback tátil imediato**.

---

# 2. ESPECIFICAÇÃO DE INTERAÇÕES E MOTION MATRIX

| ID | Gatilho (Trigger) | Alvo (Target) | Propriedade Animada | Duração & Easing | Relação com Scroll / Cursor | Comportamento Mobile |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **M01** | *Page Load* | Letras do título `"THE BURGER"` | `opacity`, `transform: scale(0.6) -> scale(1.05) -> scale(1)` | `600ms`, `cubic-bezier(0.34, 1.56, 0.64, 1)` (Spring Pop) | Sequencial com delay de `120ms` | Executa ao carregar a página |
| **M02** | *Page Load* | Selos rotacionados (*SMASHED FRESH*, *FEITO EM DIADEMA*) | `transform: scale(0) rotate(0) -> scale(1) rotate(±15deg)` | `500ms`, `cubic-bezier(0.175, 0.885, 0.32, 1.275)` | Pop-in com overshoot elástico | Rotação reduzida para mobile |
| **M03** | *Contínuo* | Hambúrguer Central Hero + Sombra de Contato | `transform: translateY(-8px) rotate(0.4deg)` | `4.2s`, `ease-in-out` (Loop Infinito) | Independente de scroll | Levemente atenuado para performance |
| **M04** | *Mousemove* (Desktop) | Hambúrguer e Badges do Hero | `transform: translate3d(x, y, 0)` | `requestAnimationFrame` interpolado | Reativo à posição do cursor (`factor: 0.02x`) | Desativado em telas touch (< 768px) |
| **M05** | *Scroll Entry* | Galeria 3-Cards Tilted (`#about`) | `opacity: 0 -> 1`, `transform: translateY(40px) -> translateY(0)` | `600ms`, `cubic-bezier(0.16, 1, 0.3, 1)`, stagger `150ms` | Disparado via `IntersectionObserver` (threshold `0.2`) | Stagger vertical em coluna única |
| **M06** | *Hover* (Pílulas CTA) | Texto do Botão (*"Pedir Agora"*) | `transform: translateY(0) -> translateY(-100%)` com entrada do texto clone | `300ms`, `cubic-bezier(0.16, 1, 0.3, 1)` | Interação de hover tátil | Disparado no toque (active) |
| **M07** | *Hover* (Cards de Foto) | Cards em Leque e Polaroids | `transform: scale(1.04) rotate(0deg)`, `box-shadow` | `350ms`, `cubic-bezier(0.16, 1, 0.3, 1)` | Resposta direta ao cursor | Feedback por toque |
| **M08** | *Scroll Pass* | Header Fixo (`#main-header`) | `background-color`, `backdrop-filter: blur(12px)`, `box-shadow` | `300ms`, `ease` | Ativa após `scrollY > 40px` | Idêntico em todas as resoluções |
| **M09** | *Scroll Entry* | Cards de Ingredientes (`#ingredients`) | `opacity: 0 -> 1`, `transform: translateY(30px) -> translateY(0)` | `500ms`, stagger `100ms` | Disparado ao entrar no campo de visão | Sequência em cascata |
| **M10** | *Click* | Menu Drawer Modal | `opacity: 0 -> 1`, `transform: scale(0.95) -> scale(1)` | `250ms`, `cubic-bezier(0.16, 1, 0.3, 1)` | Abertura/fechamento instantâneo | Ocupa largura total com botões touch |

---

# 3. DIRETRIZES DE PERFORMANCE E ACESSIBILIDADE

1. **Hardware Acceleration:** Todas as animações utilizam estritamente `transform` e `opacity`, garantindo execução no thread de composição da GPU e taxa de quadros estável a 60fps.
2. **Sem Layout Thrashing:** O rastreamento de cursor utiliza variáveis normalizadas interpoladas em loop `requestAnimationFrame`.
3. **Respeito a `prefers-reduced-motion`:**
   ```css
   @media (prefers-reduced-motion: reduce) {
     *, *::before, *::after {
       animation-duration: 0.01ms !important;
       animation-iteration-count: 1 !important;
       transition-duration: 0.01ms !important;
       scroll-behavior: auto !important;
     }
   }
   ```
