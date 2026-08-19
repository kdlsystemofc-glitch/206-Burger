# 206 BURGER — REFERENCE LOCK
## Documento 03 — KDL V2 Phase 02: Deconstrução e Travamento Estrutural da Referência

---

# 1. IDENTIFICAÇÃO DA REFERÊNCIA

| Parâmetro | Detalhe |
| :--- | :--- |
| **URL da Referência** | `https://www.cravburgers.shop/` |
| **Arquivo Local de Captura** | `referencia/reference-full.png.png` |
| **Segmento Original** | Hamburgueria Artesanal / Smashed Burgers (Navarra, Espanha) |
| **Tese Arquitetural** | Maximalismo lúdico e editorial com tipografia monumental, camadas sobrepostas de produto recortado, divisores orgânicos em onda (*jelly curves*), stickers interativos com efeito 3D de descolamento (*peelable stickers*) e jornada visual com mapa de conexões. |

---

# 2. SILHUETA MACROSCÓPICA DA PÁGINA (ASCII ARCHITECTURE)

```
================================================================================
[ FIXED NAVBAR ] : LOGO (Left) ----------------- [CTA Pill] [Menu Button] (Right)
================================================================================
┌──────────────────────────────────────────────────────────────────────────────┐
│ SCENE 01: HERO MONUMENTAL (~100vh / Warm Beige Surface)                      │
│                                                                              │
│   [Badge: Rotated -15°]                               [Badge: Rotated +15°]  │
│   "THE BURGER" (Monumental Condensed Sans ~30vw, Centered, Stroke Detail)    │
│                     ┌───────────────────────────┐                            │
│                     │   OVERLAPPING BURGER      │                            │
│                     │   PRODUCT CUTOUT (40vw)   │                            │
│                     └─────────────┬─────────────┘                            │
│                                   ▼                                          │
│   "CRAV" / "206" (Monumental Secondary Wordmark, Layered Under Cutout)       │
│                                                                              │
│   [Footnote Left: Process]                         [Footnote Right: Flavour] │
└──────────────────────────────────────────────────────────────────────────────┘
~~~~~~~~~~~~~~~~~~~~~~~~~ Sinuous Organic Curve ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
┌──────────────────────────────────────────────────────────────────────────────┐
│ SCENE 02: ABOUT / TOP CLASSIC (~80vh / Warm Beige Surface)                   │
│                                                                              │
│   [Eyebrow Badge: TOP CLASSIC]                                               │
│   "JUICY CHEESY FULLY LOADED" (Monumental Heading)                           │
│   "Subtext: Manifesto de sabor, crosta e tradição..."                        │
│                                                                              │
│   [Organic Morphing SVG Button: "Order Now / Peça Agora"]                    │
│                                                                              │
│   [3D Peelable Sticker]    ┌────────┐    ┌────────┐    ┌────────┐            │
│   (Interativo)             │ Card 1 │    │ Card 2 │    │ Card 3 │            │
│                            │ (+5°)  │    │ (-5°)  │    │ (+8°)  │            │
│                            └────────┘    └────────┘    └────────┘            │
│                            (Tilted Photo Gallery / Real Food Atmosphere)     │
└──────────────────────────────────────────────────────────────────────────────┘
~~~~~~~~~~~~~~~~~~~~~~~~~ Wavy Jelly SVG Transition ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
┌──────────────────────────────────────────────────────────────────────────────┐
│ SCENE 03: BRAND EXPERIENCE & MASCOT (~90vh / Vibrant Red Surface)            │
│                                                                              │
│   [Eyebrow: EXPERIENCE]                                                      │
│   "FOOD THAT FEELS GOOD" (Monumental White Display Typography)               │
│                                                                              │
│   [Badge: Métricas/Nutrição]  ┌─────────────────────┐  [Badge: 100% Artesanal]
│                               │  BRAND MASCOT /     │                        │
│                               │  BURGER CUTOUT      │                        │
│                               │  COM OLHOS E MÃOS   │                        │
│                               └─────────────────────┘                        │
└──────────────────────────────────────────────────────────────────────────────┘
~~~~~~~~~~~~~~~~~~~~~~~~~ Seamless Photographic Merge ~~~~~~~~~~~~~~~~~~~~~~~~~~
┌──────────────────────────────────────────────────────────────────────────────┐
│ SCENE 04: IMMERSIVE FULL-BLEED BANNER (~70vh / Dark/Natural Backdrop)       │
│                                                                              │
│   ┌──────────────────────────────────────────────────────────────────────┐   │
│   │  FOTOGRAFIA HERO IMPACTANTE DE PRIMEIRÍSSIMO PLANO                   │   │
│   │  (Mãos segurando smash burger duplo suculento com queijo escorrendo) │   │
│   └──────────────────────────────────────────────────────────────────────┘   │
└──────────────────────────────────────────────────────────────────────────────┘
~~~~~~~~~~~~~~~~~~~~~~~~~ Wavy Jelly SVG Transition ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
┌──────────────────────────────────────────────────────────────────────────────┐
│ SCENE 05: EXPLODED INGREDIENTS PARALLAX (~85vh / Warm Beige Surface)         │
│                                                                              │
│   [Eyebrow: PURE QUALITY]                                                    │
│   [Floating Lettuce]                                  [Floating Tomato]      │
│            "EVERY LAYER PACKED WITH SIGNATURE FLAVOR"                        │
│   [Floating Cheese]                                   [Floating Patty]       │
│   (Elementos flutuam em velocidades de scroll parallax distintas)            │
└──────────────────────────────────────────────────────────────────────────────┘
~~~~~~~~~~~~~~~~~~~~~~~~~ Wavy Jelly SVG Transition ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
┌──────────────────────────────────────────────────────────────────────────────┐
│ SCENE 06: DELIVERY / JORNADA LOCAL (~100vh / Mustard Yellow Surface)         │
│                                                                              │
│   [Eyebrow: TAKE AWAY / RETIRADA & DELIVERY]                                 │
│   "QUALITY THAT TRAVELS WITH YOU" (Monumental White Heading)                 │
│                                                                              │
│   ( ) - - - - - - - > [Polaroid 1] - - - - - - > [Polaroid 2]                │
│   Trilha pontilhada de entrega com fotos e aviões/motoboys flutuantes        │
└──────────────────────────────────────────────────────────────────────────────┘
~~~~~~~~~~~~~~~~~~~~~~~~~ Wavy Jelly SVG Transition ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
┌──────────────────────────────────────────────────────────────────────────────┐
│ SCENE 07: FINAL CTA & LIFESTYLE (~75vh / Warm Beige Surface)                 │
│                                                                              │
│   [Left Column]                                   [Right Column]             │
│   • Eyebrow: FEEL IT                              • Foto lifestyle grande    │
│   • "FEEL THE CHANGE"                             • Cliente mordendo o burger│
│   • Texto de chamada + Botão Orgânico             • Detalhe de fritas        │
└──────────────────────────────────────────────────────────────────────────────┘
┌──────────────────────────────────────────────────────────────────────────────┐
│ SCENE 08: FOOTER & MONUMENTAL WORDMARK (~45vh / Warm Beige Surface)          │
│                                                                              │
│   [Links de Navegação]      [Stickers de Ingredientes]                       │
│                                                                              │
│   " 2 0 6   B U R G E R " (Wordmark Monumental 95vw na base do rodapé)       │
│   © 2026 206 Burger — Feito em Diadema · Todos os direitos reservados        │
└──────────────────────────────────────────────────────────────────────────────┘
```

---

# 3. REGRAS DE TRAVAMENTO DA REFERÊNCIA (REFERENCE LOCK MATRIX)

### 3.1 MUST PRESERVE (Obrigatório manter da arquitetura de referência)
1. **Hierarquia e Escala Tipográfica Monumental:** Uso de títulos com proporções de 20vw a 30vw que ocupam a largura quase total da tela, servindo como elementos gráficos estruturais por trás das imagens.
2. **Camadas Sobrepostas (Layering & Overlaps):** O produto principal (hambúrguer recortado em PNG transparente) posicionado centralmente, sobrepondo tanto o título superior quanto a palavra-marca inferior, quebrando a rigidez do grid.
3. **Divisores de Onda Orgânica (*Jelly Curved Wave Dividers*):** Transições entre blocos de cor (Beige → Red → Beige → Yellow → Beige) feitas através de curvas SVG sinuosas contínuas, sem cortes retos convencionais.
4. **Stickers Interativos e Peelable 3D:** Uso de elementos gráficos estilizados (adesivos com borda branca, sombra projetada e efeito de descolamento interativo no cursor/hover).
5. **Galeria de Fotos Anguladas (*Tilted Media Cards*):** Disposição de 3 cards fotográficos inclinados em ângulos alternados (+5°, -5°, +8°) que se endireitam e reagem ao hover.
6. **Seção de Ingredientes Desconstruídos em Parallax:** Layout tipográfico intercalado com ingredientes recortados flutuando em profundidades e velocidades de rolagem diferenciadas.
7. **Botão de Ação com Morfismo Orgânico de Blob:** Botões de CTA que utilizam formas vetoriais orgânicas com contorno espesso em vez de retângulos comuns com cantos arredondados simples.
8. **Wordmark Gigante de Rodapé (*Monumental Footer Brand Outro*):** Logotipo/palavra-marca monumental ocupando a largura total da base antes da linha final de direitos autorais.

### 3.2 SHOULD PRESERVE (Altamente recomendado manter e traduzir)
1. **Preloader Cênico de Cozinha:** Animação de entrada que simula o preparo com barra de progresso estilizada e camadas de hambúrguer empilhando.
2. **Micro-interações de Cursor:** Esconder o cursor padrão sobre botões especiais e usar efeito magnético suave em elementos interativos.
3. **Selos Rotacionados de Destaque (*Badges*):** Selos inclinados com textos curtos ("SMASHED FRESH", "BOLD FLAVOR") flanqueando o título do Hero.
4. **Trilha Pontilhada de Conexão na Seção de Delivery:** Linha orgânica pontilhada conectando os cartões de entrega e pontos de atendimento.

### 3.3 MAY ADAPT (Pode ser adaptado à realidade e tom do cliente)
1. **Mascote / Ilustração Central da Seção Vermelha:** Substituir a ilustração genérica pelo personagem autêntico de batata frita e tags de grafite do 206 Burger existentes no mural da loja física.
2. **Cidades do Mapa de Entrega:** O mapa original mostra cidades globais (Berlin, London, NY). No 206 Burger, a narrativa de entrega deve ser adaptada para a abrangência real de Diadema e região do ABC (Centro, Piraporinha, Campanário, Serraria, Conceição, etc.).
3. **Selos Nutricionais / Informações:** Adaptar os badges para os diferenciais reais do 206 Burger (ex: "Super Restaurante iFood 12 Meses", "Smash 100% Bovino", "Maionese Artesanal", "Queijo Empanado").

### 3.4 MUST NOT COPY (Estritamente proibido herdar da referência)
1. **Nome e Logotipo da Crav:** Nenhum elemento textual, logo "CRAV" ou branding de Navarra/Espanha pode aparecer.
2. **Cores Específicas da Crav se conflitarem com a identidade do cliente:** A função das cores (contraste alto, superfícies quentes e saturadas) é preservada, mas a identidade cromática deve incorporar o Ciano Elétrico, Vermelho Brasa, Amarelo Cheddar e Preto Carvão do 206 Burger.
3. **Textos e Histórias da Marca Crav:** Todos os textos devem ser 100% sobre o 206 Burger, Diadema, seus smash burgers e depoimentos reais.
4. **Fotos Proprietárias da Crav:** Nenhuma foto do site original pode ser utilizada; o projeto utilizará exclusivamente o acervo real do 206 Burger.
