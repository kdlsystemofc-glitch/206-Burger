# 206 BURGER — CLIENT DESIGN SYSTEM
## Documento 07 — KDL V2 Phase 04: Sistema de Design Autêntico do Cliente

---

# 1. TESE DE IDENTIDADE DA MARCA

O **206 Burger** é uma hamburgueria artesanal de rua nascida no Centro de Diadema (SP), consolidada pelo público com nota **4.9 no Google** e **12 meses consecutivos como Super Restaurante no iFood**.

Sua identidade visual é uma fusão autêntica entre:
1. **Cultura Urbana & Street Art do ABC Paulista:** Tags de grafite em ciano elétrico com gotas de tinta escorrendo, murais expressivos e letreiros industriais.
2. **Apetite Appeal Artesanal Farto:** O brilho amanteigado do pão brioche artesanal, a crosta caramelizada da prensagem smash, o cheddar cremoso escorrendo e o exclusivo disco de queijo empanado crocante.
3. **Linguagem Pop-Art de Adesivos Vinil (*Die-Cut Stickers*):** Elementos em relevo com contornos brancos espessos, personagens expressivos e tipografias monumentais de alto impacto.

---

# 2. SISTEMA CROMÁTICO COM EVIDÊNCIA FACTUAL (COLOR SYSTEM)

| Token do Sistema | Nome da Cor | HEX / RGB | Fonte de Evidência no Cliente | Função / Papel no Design System | Justificativa de Decisão |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `--color-brand-primary` | **Vermelho Brasa** | `#F91814` / `rgb(249, 24, 20)` | Letreiros de neon do salão (`imgi_17`), toldo externo e placa iFood Super Restaurante (`imgi_9`). | Cor primária da marca, títulos monumentais de fundo e botões de ação principal. | Disparador biológico de apetite e energia urbana de rua, com contraste perfeito sobre superfícies claras. |
| `--color-brand-secondary`| **Amarelo Cheddar** | `#F4A804` / `rgb(244, 168, 4)` | Cheddar derretido autêntico nas fotos de produto (`imgi_12`, `imgi_14`) e batata do mural (`imgi_17`). | Palavra-marca central *"206"*, selos rotacionados e realces de botão. | Representa o ingrediente assinatura mais desejado da casa e traz calor e ludicidade ao layout. |
| `--color-brand-accent` | **Ciano Elétrico** | `#38BDF8` / `rgb(56, 189, 248)` | Grafite autêntico da fachada física (`imgi_2`), tags do salão (`imgi_17`) e papel de bandeja. | Acentos de marca, tags urbanas, brilhos secundários e detalhes de spray. | É a cor distintiva exclusiva que diferencia o 206 Burger de hamburguerias tradicionais. |
| `--color-bg-primary` | **Bege Pão Brioche**| `#F5E3CD` / `rgb(245, 227, 205)`| Tonalidade dourada dos pães brioche artesanais (`imgi_12`) e sacos kraft de delivery (`imgi_24`). | Fundo principal da página (Hero, About, CTA). | Fundo orgânico, quente e acolhedor que substitui o branco estéril e valoriza os adesivos e o produto. |
| `--color-bg-secondary` | **Creme Claro** | `#FAF0E4` / `rgb(250, 240, 228)`| Papel manteiga personalizado e iluminação difusa do salão (`imgi_25`). | Fundo secundário de cartões e áreas de respiração. | Cria sutil variação de profundidade sem romper a harmonia térmica. |
| `--color-surface-dark` | **Preto Carvão** | `#18191B` / `rgb(24, 25, 27)` | Chapa de ferro fundido, teto industrial da loja física e embalagens pretas de delivery. | Superfície de alto contraste, menus drawers e rodapés. | Ancoragem de solidez e sofisticação industrial de hamburgueria de rua. |
| `--color-text-primary` | **Grafite Profundo**| `#18191B` / `rgb(24, 25, 27)` | Textos de cardápio e sinalização interna da loja. | Textos de leitura, títulos de apoio e ícones. | Máxima legibilidade (WCAG AAA) sobre superfícies bege e creme. |
| `--color-text-secondary`| **Chumbo Médio** | `#4A4C52` / `rgb(74, 76, 82)` | Textos de apoio e legendas nas embalagens. | Parágrafos narrativos, notas de rodapé e metadados. | Reduz peso visual para parágrafos longos, mantendo leitura confortável. |
| `--color-sticker-white` | **Branco Puro** | `#FFFFFF` / `rgb(255, 255, 255)`| Borda de adesivos vinil, papel sulfurizado e maionese artesanal da casa (`imgi_12`). | Contorno de adesivo (*sticker die-cut*), strokes de texto e destaques. | Elemento estrutural obrigatório que cria a separação tátil entre produto, texto e fundo. |
| `--color-border-subtle` | **Borda Suave** | `rgba(24, 25, 27, 0.15)` | Linhas de corte de cardápio e embalagens kraft. | Borda de pílulas neutras e divisores de seção. | Delimitação sutil sem poluição visual. |

---

# 3. SISTEMA TIPOGRÁFICO (TYPOGRAPHY SYSTEM)

```
┌────────────────────────────────────────────────────────────────────────┐
│                      HIERARQUIA TIPOGRÁFICA 206                        │
├──────────────┬───────────────────┬──────────────┬──────────────────────┤
│ NÍVEL        │ FAMÍLIA           │ PESO / ESTILO│ APLICAÇÃO            │
├──────────────┼───────────────────┼──────────────┼──────────────────────┤
│ DISPLAY / H1 │ Mouse Memoirs     │ Regular 400  │ "THE BURGER", Títulos│
│ BADGE / WORD │ Modak             │ Regular 400  │ "206", Selos, Tags   │
│ HEADING / H2 │ Mouse Memoirs     │ Regular 400  │ Títulos de Seção     │
│ BODY / TEXT  │ Plus Jakarta Sans │ Medium 500   │ Parágrafos, Notas    │
│ CTA / BUTTON │ Mouse Memoirs     │ Bold 700     │ Pílulas de Ação      │
└──────────────┴───────────────────┴──────────────┴──────────────────────┘
```

### Justificativas de Decisão Tipográfica:
1. **Mouse Memoirs (Display & Headings):** Tipografia ultra-condensada de proporção monumental. Permite títulos de `30vw` que cobrem a largura total da tela sem quebras de linha excessivas, funcionando como elemento arquitetural de fundo atrás do produto.
2. **Modak (Wordmark & Stickers):** Tipografia display arredondada, orgânica e volumosa (*bubble letter*). Transmite a indulgência do queijo derretido e a energia lúdica de adesivos de rua e grafite urbano.
3. **Plus Jakarta Sans (Body & Meta):** Tipografia geométrica moderna de altíssima legibilidade, com excelente clareza em corpos pequenos (`1.1vw` a `3.8vw`) para notas de rodapé, horários e endereço físico.

---

# 4. LINGUAGEM DE IMAGEM (IMAGE LANGUAGE)

1. **Tratamento de Recorte do Produto (Hero Cutout):**
   - Imagem recortada fio a fio em formato de adesivo vinil (*die-cut sticker*).
   - Contorno branco contínuo de alta espessura (`55px` vetorial / `0.45vw` relativo) envolvendo o produto e os olhos de mascote.
   - Sombra de contato difusa e alongada na base (`rgba(24, 25, 27, 0.20)` com `blur: 1.2vw`) para ancoragem física sobre o fundo bege.
2. **Fotografia Lifestyle & Bastidores (Seções Subsequentes):**
   - Cards com rotações alternadas em leque (`+5°`, `-5°`, `+8°`) com cantos arredondados generosos (`rounded-[2.5vw]`).
   - Cores quentes com foco de iluminação direta na suculência da carne, brilho do pão e queijo escorrendo.
   - Proibição estrita de fotos de banco genéricas ou simulações 3D artificiais.

---

# 5. LINGUAGEM GRÁFICA & ELEMENTOS DECORATIVOS (GRAPHIC LANGUAGE)

1. **Adesivos Vinil Die-Cut:** Todos os elementos em destaque (hambúrguer, selos, logotipo) possuem contorno branco uniforme com leve drop shadow, criando a ilusão de adesivos colados sobre uma superfície kraft.
2. **Olhos Expressivos de Mascote:** Aplicação de dois olhos brancos circulares com pupilas recortadas em estilo cartoon no topo do pão brioche, acompanhados por traços de movimento/expressão, conectando o produto ao universo divertido de street art do mural da loja física.
3. **Selo Flutuante de Picles:** Micro-adesivo circular verde limão (`#84CC16`) com borda branca e textura pontilhada no quadrante superior direito do burger.
4. **Divisores de Onda Orgânica (*Jelly Curve Dividers*):** Curvas SVG contínuas conectando os blocos de cor (Bege → Vermelho → Amarelo) sem cortes retos convencionais.

---

# 6. LINGUAGEM DE UI & COMPONENTES (UI LANGUAGE)

1. **Botão de Ação Primário (Pill CTA):**
   - Formato pílula completa (`rounded-full`) em Vermelho Brasa (`#F91814`).
   - Micro-interação de texto duplo deslizante (*double text slide*) no hover: o texto atual sobe para `-100%` e uma duplicata amarela (`#F4A804`) surge de `+100%` para o centro.
2. **Botão de Menu (Menu Trigger):**
   - Formato pílula com borda suave (`border-[#18191B]/25`) e ícone de 3 traços horizontais com tamanhos rítmicos (`100%`, `75%`, `100%`).
3. **Selos Rotacionados (Badges):**
   - Textos curtos em caixa alta (*"SMASHED FRESH"* e *"FEITO EM DIADEMA"*), inclinados a ±15°, com contorno branco espesso e preenchimento amarelo mostarda.

---

# 7. PERSONALIDADE DE MOVIMENTO (MOTION PERSONALITY)

| Propriedade | Valor / Curva | Aplicação | Sensação Transmitida |
| :--- | :--- | :--- | :--- |
| **Levitação do Hero** | `4.2s`, `easeInOut`, `translateY: -8px` | Recorte do hambúrguer e sombra de contato. | Flutuação orgânica e peso físico suave. |
| **Hover nos Botões** | `300ms`, `cubic-bezier(0.16, 1, 0.3, 1)` | Pílulas de navegação e CTA. | Resposta tátil rápida e elástica. |
| **Parallax do Cursor** | Reativo ao mousemove (`factor: 0.3x` a `0.5x`) | Título e selos rotacionados no desktop. | Profundidade espacial sutil e interatividade viva. |
| **Scroll do Header** | `300ms` com `backdrop-blur: 12px` | Barra de navegação fixa. | Transparência elegante sem perder contraste. |
