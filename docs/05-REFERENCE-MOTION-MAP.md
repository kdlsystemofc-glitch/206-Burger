# 206 BURGER — REFERENCE MOTION MAP
## Documento 05 — KDL V2 Phase 02: Engenharia de Movimento e Coreografia Interativa

---

# 1. FILOSOFIA DE MOVIMENTO DA REFERÊNCIA

O movimento na referência **não é cosmético nem genérico (não é mero fade-up)**. Ele é **arquitetural, lúdico e cinético**, reforçando a sensação física de ingredientes, adesivos de rua e preparo artesanal.

```
┌────────────────────────────────────────────────────────────────────────┐
│                     CHAVE DE COREOGRAFIA INTERATIVA                    │
├───────────────────┬───────────────────────────────┬────────────────────┤
│   ENTRADA / HERO  │         SCROLL SCRUB          │     MICRO-HOVER    │
│  • Preloader POP  │  • Parallax de ingredientes   │  • Stickers 3D peel│
│  • Staggered text │  • Sinuous waves deformation  │  • Tilted cards    │
│  • Cutout scale   │  • Trilha pontilhada de mapa  │  • Blob morphing   │
└───────────────────┴───────────────────────────────┴────────────────────┘
```

---

# 2. MAPA DETALHADO DE ANIMAÇÕES E COMPORTAMENTOS

### 2.1 Preloader Cênico de Cozinha
- **Gatilho:** Ao carregar a página inicial.
- **Duração & Curva:** ~1.8s a 2.4s com easing elástico `power3.out`.
- **Mecanismo:**
  1. Barra de progresso amarela/vermelha na base da tela preenchendo de 0% a 100%.
  2. Elementos vetoriais de hambúrguer (pão base, carne, queijo, alface, tomate, pão topo) caindo e empilhando em sequência rítmica com partículas de tempero voando.
  3. Texto de status: *"PREPARANDO A CHAPA ARTESANAL..."*.
  4. Ao atingir 100%, o preloader se abre em transição de máscara SVG (*curved curtain reveal*).

### 2.2 Entrada do Hero (Hero Entrance Sequence)
- **Gatilho:** Imediatamente após a conclusão do preloader.
- **Sequência:**
  1. O título de fundo (*"THE BURGER" / "O SMASH BURGER"*) surge letra por letra ou palavra por palavra com efeito `pop` elástico (`scale: 0.8 -> 1.05 -> 1.0`).
  2. O recorte central do hambúrguer escala suavemente de `scale: 0.7` para `scale: 1.0` com leve flutuação contínua em loop lento (`translateY: ±8px`, duração 3s, `sine.inOut`).
  3. Os selos flanqueadores rotacionados entram com rotação e escala rápida (`rotate: ±25deg -> ±15deg`).
  4. A palavra-marca inferior e os blocos de texto entram em opacidade gradual.

### 2.3 Navbar Fixa com Interação Dupla
- **Posição:** `fixed top-0 left-0 w-full z-999`.
- **Efeito de Scroll:** Transição suave para fundo translúcido com `backdrop-blur-md` e borda inferior sutil quando o scroll ultrapassa 50px.
- **Botão CTA em Pílula:** Efeito de texto duplo deslizante (*double text slide*):
  - No estado normal, o texto fica visível.
  - No `:hover`, o texto original sobe para `-100%` e uma duplicata sobe de `+100%` para `0%` com duração de 300ms.

### 2.4 Stickers 3D Descoláveis (Peelable 3D Stickers)
- **Mecanismo SVG:**
  - O sticker possui um filtro SVG de iluminação pontual (`feSpecularLighting` + `fePointLight` + `feDropShadow`).
  - No `:hover` ou movimento do mouse, a aba do adesivo (*flap*) dobra e projeta uma sombra dinâmica, simulando o descolamento de um adesivo de vinil real.
  - Rotação dinâmica sutil que reage à posição do cursor.

### 2.5 Galeria de 3 Cards Angulados (Tilted Cards Hover)
- **Estado Padrão:** Três imagens dispostas lado a lado com rotações alternadas (`Card 1: +5°`, `Card 2: -5°`, `Card 3: +8°`).
- **Ao passar o mouse (Hover):**
  - O card selecionado sofre elevação (`translateY: -15px`, `scale: 1.06`, `rotate: 0deg`), ganha sombra volumosa e sobrepõe os vizinhos (`z-index: 20`).
  - Os cards vizinhos recebem leve redução de opacidade ou rotação sutil contrária.

### 2.6 Divisores em Onda Orgânica (*Jelly Curve Dividers*)
- **Mecanismo:**
  - Curvas de Bézier SVG contínuas conectando as seções.
  - No scroll suave, as curvas mantêm continuidade visual perfeita entre os blocos cromáticos (Beige, Vermelho, Amarelo).

### 2.7 Parallax de Ingredientes Desconstruídos (Scene 05)
- **Mecanismo:**
  - Enquanto o texto central permanece ancorado, 4 recortes de ingredientes (alface, tomate, fatia de queijo derretido, disco smash) movem-se vertical e lateralmente com velocidades de scroll diferenciadas (`data-speed="0.8"`, `1.2"`, `1.5"`, `0.6"`).
  - Cria sensação de explosão controlada e profundidade 3D tridimensional.

### 2.8 Trilha de Entrega com Linha Pontilhada Animada (Scene 06)
- **Mecanismo:**
  - A linha pontilhada (*dashed flight/delivery path*) se desenha progressivamente conforme o usuário rola a seção (`stroke-dashoffset` animado com ScrollTrigger).
  - Os cards de bairros e os ícones de transporte surgem nos nós da linha conforme ela é traçada.

### 2.9 Botões com Morfismo Orgânico de Blob (Morphing Action Buttons)
- **Mecanismo:**
  - O fundo do botão é um `path` SVG com formato de gota/blob orgânico.
  - No `:hover`, a forma do blob pulsa e deforma suavemente com transição de escala (`scale: 1.05`), acompanhado por inversão de cor e brilho.

### 2.10 Wordmark Monumental de Rodapé
- **Mecanismo:**
  - As letras gigantescas da palavra-marca no rodapé (*206 BURGER*) realizam um leve afastamento de kerning (*tracking expansion*) e revelação de opacidade à medida que atingem o final do viewport.
